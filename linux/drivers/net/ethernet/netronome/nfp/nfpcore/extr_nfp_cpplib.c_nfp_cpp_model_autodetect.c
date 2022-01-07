
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_cpp {int dummy; } ;


 scalar_t__ NFP_PL_DEVICE_ID ;
 int NFP_PL_DEVICE_ID_MASK ;
 int NFP_PL_DEVICE_MODEL_MASK ;
 scalar_t__ NFP_XPB_DEVICE (int,int,int) ;
 int nfp_xpb_readl (struct nfp_cpp*,scalar_t__,int*) ;

int nfp_cpp_model_autodetect(struct nfp_cpp *cpp, u32 *model)
{
 u32 reg;
 int err;

 err = nfp_xpb_readl(cpp, NFP_XPB_DEVICE(1, 1, 16) + NFP_PL_DEVICE_ID,
       &reg);
 if (err < 0)
  return err;

 *model = reg & NFP_PL_DEVICE_MODEL_MASK;
 if (*model & NFP_PL_DEVICE_ID_MASK)
  *model -= 0x10;

 return 0;
}
