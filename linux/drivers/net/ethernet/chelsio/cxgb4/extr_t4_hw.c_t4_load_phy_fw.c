
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int portvec; } ;
struct adapter {int pf; int mbox; TYPE_1__ params; } ;
typedef int spinlock_t ;
typedef int __be32 ;


 int CH_WARN (struct adapter*,char*,int,...) ;
 int ENXIO ;
 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_PHYFW ;
 int FW_PARAMS_PARAM_DEV_PHYFW_DOWNLOAD ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int FW_PARAMS_PARAM_Y_V (int ) ;
 int FW_PARAMS_PARAM_Z_V (int ) ;
 int T4_MEMORY_WRITE ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int t4_memory_rw (struct adapter*,int,unsigned long,unsigned long,size_t,int *,int ) ;
 int t4_phy_fw_ver (struct adapter*,int*) ;
 int t4_query_params_rw (struct adapter*,int ,int ,int ,int,int*,int*,int,int) ;
 int t4_set_params_timeout (struct adapter*,int ,int ,int ,int,int*,int*,int) ;

int t4_load_phy_fw(struct adapter *adap,
     int win, spinlock_t *win_lock,
     int (*phy_fw_version)(const u8 *, size_t),
     const u8 *phy_fw_data, size_t phy_fw_size)
{
 unsigned long mtype = 0, maddr = 0;
 u32 param, val;
 int cur_phy_fw_ver = 0, new_phy_fw_vers = 0;
 int ret;




 if (phy_fw_version) {
  new_phy_fw_vers = phy_fw_version(phy_fw_data, phy_fw_size);
  ret = t4_phy_fw_ver(adap, &cur_phy_fw_ver);
  if (ret < 0)
   return ret;

  if (cur_phy_fw_ver >= new_phy_fw_vers) {
   CH_WARN(adap, "PHY Firmware already up-to-date, "
    "version %#x\n", cur_phy_fw_ver);
   return 0;
  }
 }







 param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
   FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_PHYFW) |
   FW_PARAMS_PARAM_Y_V(adap->params.portvec) |
   FW_PARAMS_PARAM_Z_V(FW_PARAMS_PARAM_DEV_PHYFW_DOWNLOAD));
 val = phy_fw_size;
 ret = t4_query_params_rw(adap, adap->mbox, adap->pf, 0, 1,
     &param, &val, 1, 1);
 if (ret < 0)
  return ret;
 mtype = val >> 8;
 maddr = (val & 0xff) << 16;




 if (win_lock)
  spin_lock_bh(win_lock);
 ret = t4_memory_rw(adap, win, mtype, maddr,
      phy_fw_size, (__be32 *)phy_fw_data,
      T4_MEMORY_WRITE);
 if (win_lock)
  spin_unlock_bh(win_lock);
 if (ret)
  return ret;






 param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
   FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_PHYFW) |
   FW_PARAMS_PARAM_Y_V(adap->params.portvec) |
   FW_PARAMS_PARAM_Z_V(FW_PARAMS_PARAM_DEV_PHYFW_DOWNLOAD));
 ret = t4_set_params_timeout(adap, adap->mbox, adap->pf, 0, 1,
        &param, &val, 30000);




 if (phy_fw_version) {
  ret = t4_phy_fw_ver(adap, &cur_phy_fw_ver);
  if (ret < 0)
   return ret;

  if (cur_phy_fw_ver != new_phy_fw_vers) {
   CH_WARN(adap, "PHY Firmware did not update: "
    "version on adapter %#x, "
    "version flashed %#x\n",
    cur_phy_fw_ver, new_phy_fw_vers);
   return -ENXIO;
  }
 }

 return 1;
}
