
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nfp_mip {scalar_t__ signature; scalar_t__ mip_version; } ;
struct nfp_cpp {int dummy; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ NFP_MIP_SIGNATURE ;
 scalar_t__ NFP_MIP_VERSION ;
 int le32_to_cpu (scalar_t__) ;
 int nfp_cpp_read (struct nfp_cpp*,int ,int ,struct nfp_mip*,int) ;
 int nfp_err (struct nfp_cpp*,char*,int,int) ;
 int nfp_warn (struct nfp_cpp*,char*,int ) ;

__attribute__((used)) static int
nfp_mip_try_read(struct nfp_cpp *cpp, u32 cpp_id, u64 addr, struct nfp_mip *mip)
{
 int ret;

 ret = nfp_cpp_read(cpp, cpp_id, addr, mip, sizeof(*mip));
 if (ret != sizeof(*mip)) {
  nfp_err(cpp, "Failed to read MIP data (%d, %zu)\n",
   ret, sizeof(*mip));
  return -EIO;
 }
 if (mip->signature != NFP_MIP_SIGNATURE) {
  nfp_warn(cpp, "Incorrect MIP signature (0x%08x)\n",
    le32_to_cpu(mip->signature));
  return -EINVAL;
 }
 if (mip->mip_version != NFP_MIP_VERSION) {
  nfp_warn(cpp, "Unsupported MIP version (%d)\n",
    le32_to_cpu(mip->mip_version));
  return -EINVAL;
 }

 return 0;
}
