
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef void* u16 ;
struct fmtx_data {void* pwr_lvl; } ;
struct fmdev {scalar_t__ curr_fmmode; int flag; struct fmtx_data tx_data; } ;
typedef int payload ;


 int EPERM ;
 int FM_CORE_READY ;
 scalar_t__ FM_MODE_TX ;
 void* FM_PWR_LVL_HIGH ;
 int POWER_LEV_SET ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,void**,int,int *,int *) ;
 int fmdbg (char*,long) ;
 int test_bit (int ,int *) ;

int fm_tx_set_pwr_lvl(struct fmdev *fmdev, u8 new_pwr_lvl)
{
 u16 payload;
 struct fmtx_data *tx = &fmdev->tx_data;
 int ret;

 if (fmdev->curr_fmmode != FM_MODE_TX)
  return -EPERM;
 fmdbg("tx: pwr_level_to_set %ld\n", (long int)new_pwr_lvl);


 if (!test_bit(FM_CORE_READY, &fmdev->flag)) {
  tx->pwr_lvl = new_pwr_lvl;
  return 0;
 }
 payload = (FM_PWR_LVL_HIGH - new_pwr_lvl);
 ret = fmc_send_cmd(fmdev, POWER_LEV_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;


 tx->pwr_lvl = new_pwr_lvl;

 return 0;
}
