
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsp_identify {int sensor_mask; int nsp; int secondary; int primary; int br_nsp; int br_secondary; int br_primary; int flags; int version; } ;
struct nfp_nsp_identify {char* version; int sensor_mask; void* nsp; void* secondary; void* primary; int br_nsp; int br_secondary; int br_primary; int flags; } ;
struct nfp_nsp {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct nsp_identify*) ;
 void* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (char*,int ,int) ;
 int nfp_err (int ,char*,int) ;
 int nfp_nsp_cpp (struct nfp_nsp*) ;
 int nfp_nsp_get_abi_ver_minor (struct nfp_nsp*) ;
 int nfp_nsp_read_identify (struct nfp_nsp*,struct nsp_identify*,int) ;

struct nfp_nsp_identify *__nfp_nsp_identify(struct nfp_nsp *nsp)
{
 struct nfp_nsp_identify *nspi = ((void*)0);
 struct nsp_identify *ni;
 int ret;

 if (nfp_nsp_get_abi_ver_minor(nsp) < 15)
  return ((void*)0);

 ni = kzalloc(sizeof(*ni), GFP_KERNEL);
 if (!ni)
  return ((void*)0);

 ret = nfp_nsp_read_identify(nsp, ni, sizeof(*ni));
 if (ret < 0) {
  nfp_err(nfp_nsp_cpp(nsp), "reading bsp version failed %d\n",
   ret);
  goto exit_free;
 }

 nspi = kzalloc(sizeof(*nspi), GFP_KERNEL);
 if (!nspi)
  goto exit_free;

 memcpy(nspi->version, ni->version, sizeof(nspi->version));
 nspi->version[sizeof(nspi->version) - 1] = '\0';
 nspi->flags = ni->flags;
 nspi->br_primary = ni->br_primary;
 nspi->br_secondary = ni->br_secondary;
 nspi->br_nsp = ni->br_nsp;
 nspi->primary = le16_to_cpu(ni->primary);
 nspi->secondary = le16_to_cpu(ni->secondary);
 nspi->nsp = le16_to_cpu(ni->nsp);
 nspi->sensor_mask = le64_to_cpu(ni->sensor_mask);

exit_free:
 kfree(ni);
 return nspi;
}
