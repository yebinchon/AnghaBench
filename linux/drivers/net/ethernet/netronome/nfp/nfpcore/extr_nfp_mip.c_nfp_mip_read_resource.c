
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nfp_nffw_info {int dummy; } ;
struct nfp_mip {int dummy; } ;
struct nfp_cpp {int dummy; } ;


 scalar_t__ IS_ERR (struct nfp_nffw_info*) ;
 int PTR_ERR (struct nfp_nffw_info*) ;
 int nfp_mip_try_read (struct nfp_cpp*,int ,int ,struct nfp_mip*) ;
 int nfp_nffw_info_close (struct nfp_nffw_info*) ;
 int nfp_nffw_info_mip_first (struct nfp_nffw_info*,int *,int *) ;
 struct nfp_nffw_info* nfp_nffw_info_open (struct nfp_cpp*) ;

__attribute__((used)) static int nfp_mip_read_resource(struct nfp_cpp *cpp, struct nfp_mip *mip)
{
 struct nfp_nffw_info *nffw_info;
 u32 cpp_id;
 u64 addr;
 int err;

 nffw_info = nfp_nffw_info_open(cpp);
 if (IS_ERR(nffw_info))
  return PTR_ERR(nffw_info);

 err = nfp_nffw_info_mip_first(nffw_info, &cpp_id, &addr);
 if (err)
  goto exit_close_nffw;

 err = nfp_mip_try_read(cpp, cpp_id, addr, mip);
exit_close_nffw:
 nfp_nffw_info_close(nffw_info);
 return err;
}
