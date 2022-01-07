
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int hwinfo; } ;
struct nfp_devlink_versions_simple {int key; int hwinfo; } ;
struct devlink_info_req {int dummy; } ;


 unsigned int ARRAY_SIZE (struct nfp_devlink_versions_simple*) ;
 int devlink_info_version_fixed_put (struct devlink_info_req*,int ,char const*) ;
 struct nfp_devlink_versions_simple* nfp_devlink_versions_hwinfo ;
 char* nfp_hwinfo_lookup (int ,int ) ;

__attribute__((used)) static int
nfp_devlink_versions_get_hwinfo(struct nfp_pf *pf, struct devlink_info_req *req)
{
 unsigned int i;
 int err;

 for (i = 0; i < ARRAY_SIZE(nfp_devlink_versions_hwinfo); i++) {
  const struct nfp_devlink_versions_simple *info;
  const char *val;

  info = &nfp_devlink_versions_hwinfo[i];

  val = nfp_hwinfo_lookup(pf->hwinfo, info->hwinfo);
  if (!val)
   continue;

  err = devlink_info_version_fixed_put(req, info->key, val);
  if (err)
   return err;
 }

 return 0;
}
