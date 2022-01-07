
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct nfp_mip {scalar_t__* name; } const nfp_mip ;
struct nfp_cpp {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct nfp_mip const*) ;
 struct nfp_mip const* kmalloc (int,int ) ;
 int nfp_mip_read_resource (struct nfp_cpp*,struct nfp_mip const*) ;

const struct nfp_mip *nfp_mip_open(struct nfp_cpp *cpp)
{
 struct nfp_mip *mip;
 int err;

 mip = kmalloc(sizeof(*mip), GFP_KERNEL);
 if (!mip)
  return ((void*)0);

 err = nfp_mip_read_resource(cpp, mip);
 if (err) {
  kfree(mip);
  return ((void*)0);
 }

 mip->name[sizeof(mip->name) - 1] = 0;

 return mip;
}
