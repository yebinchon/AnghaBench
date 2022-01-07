
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int cpp; int hwinfo; } ;
struct nfp_nsp {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct devlink_info_req {int dummy; } ;
struct devlink {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nfp_nsp*) ;
 int NFP_NSP_VERSION_BUFSZ ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct nfp_nsp*) ;
 int devlink_info_driver_name_put (struct devlink_info_req*,char*) ;
 int devlink_info_serial_number_put (struct devlink_info_req*,char*) ;
 struct nfp_pf* devlink_priv (struct devlink*) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 char* kzalloc (int ,int ) ;
 int nfp_devlink_versions_get_hwinfo (struct nfp_pf*,struct devlink_info_req*) ;
 int nfp_devlink_versions_get_nsp (struct devlink_info_req*,int,char*,int ) ;
 char* nfp_hwinfo_lookup (int ,char*) ;
 int nfp_nsp_close (struct nfp_nsp*) ;
 scalar_t__ nfp_nsp_has_versions (struct nfp_nsp*) ;
 struct nfp_nsp* nfp_nsp_open (int ) ;
 int nfp_nsp_versions (struct nfp_nsp*,char*,int ) ;
 int strcat (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
nfp_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
       struct netlink_ext_ack *extack)
{
 struct nfp_pf *pf = devlink_priv(devlink);
 const char *sn, *vendor, *part;
 struct nfp_nsp *nsp;
 char *buf = ((void*)0);
 int err;

 err = devlink_info_driver_name_put(req, "nfp");
 if (err)
  return err;

 vendor = nfp_hwinfo_lookup(pf->hwinfo, "assembly.vendor");
 part = nfp_hwinfo_lookup(pf->hwinfo, "assembly.partno");
 sn = nfp_hwinfo_lookup(pf->hwinfo, "assembly.serial");
 if (vendor && part && sn) {
  char *buf;

  buf = kmalloc(strlen(vendor) + strlen(part) + strlen(sn) + 1,
         GFP_KERNEL);
  if (!buf)
   return -ENOMEM;

  buf[0] = '\0';
  strcat(buf, vendor);
  strcat(buf, part);
  strcat(buf, sn);

  err = devlink_info_serial_number_put(req, buf);
  kfree(buf);
  if (err)
   return err;
 }

 nsp = nfp_nsp_open(pf->cpp);
 if (IS_ERR(nsp)) {
  NL_SET_ERR_MSG_MOD(extack, "can't access NSP");
  return PTR_ERR(nsp);
 }

 if (nfp_nsp_has_versions(nsp)) {
  buf = kzalloc(NFP_NSP_VERSION_BUFSZ, GFP_KERNEL);
  if (!buf) {
   err = -ENOMEM;
   goto err_close_nsp;
  }

  err = nfp_nsp_versions(nsp, buf, NFP_NSP_VERSION_BUFSZ);
  if (err)
   goto err_free_buf;

  err = nfp_devlink_versions_get_nsp(req, 0,
         buf, NFP_NSP_VERSION_BUFSZ);
  if (err)
   goto err_free_buf;

  err = nfp_devlink_versions_get_nsp(req, 1,
         buf, NFP_NSP_VERSION_BUFSZ);
  if (err)
   goto err_free_buf;

  kfree(buf);
 }

 nfp_nsp_close(nsp);

 return nfp_devlink_versions_get_hwinfo(pf, req);

err_free_buf:
 kfree(buf);
err_close_nsp:
 nfp_nsp_close(nsp);
 return err;
}
