
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;
typedef scalar_t__ BCM_5710_FW_MAJOR_VERSION ;


 int BCM_5710_FW_ENGINEERING_VERSION ;
 int BCM_5710_FW_MINOR_VERSION ;
 int BCM_5710_FW_REVISION_VERSION ;
 int BNX2X_DEV_INFO (char*,scalar_t__,scalar_t__) ;
 int BNX2X_ERR (char*,scalar_t__,scalar_t__) ;
 int BNX2X_MSG_SP ;
 int DP (int ,char*,scalar_t__,scalar_t__) ;
 int EBUSY ;
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON ;
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON_CHIP ;
 scalar_t__ REG_RD (struct bnx2x*,int ) ;
 int XSEM_REG_PRAM ;

int bnx2x_compare_fw_ver(struct bnx2x *bp, u32 load_code, bool print_err)
{

 if (load_code != FW_MSG_CODE_DRV_LOAD_COMMON_CHIP &&
     load_code != FW_MSG_CODE_DRV_LOAD_COMMON) {

  u32 my_fw = (BCM_5710_FW_MAJOR_VERSION) +
   (BCM_5710_FW_MINOR_VERSION << 8) +
   (BCM_5710_FW_REVISION_VERSION << 16) +
   (BCM_5710_FW_ENGINEERING_VERSION << 24);


  u32 loaded_fw = REG_RD(bp, XSEM_REG_PRAM);

  DP(BNX2X_MSG_SP, "loaded fw %x, my fw %x\n",
     loaded_fw, my_fw);


  if (my_fw != loaded_fw) {
   if (print_err)
    BNX2X_ERR("bnx2x with FW %x was already loaded which mismatches my %x FW. Aborting\n",
       loaded_fw, my_fw);
   else
    BNX2X_DEV_INFO("bnx2x with FW %x was already loaded which mismatches my %x FW, possibly due to MF UNDI\n",
            loaded_fw, my_fw);
   return -EBUSY;
  }
 }
 return 0;
}
