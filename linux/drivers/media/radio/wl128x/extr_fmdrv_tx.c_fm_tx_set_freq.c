
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int flag; } ;
struct fmtx_data {unsigned long tx_frq; int audio_io; TYPE_1__ rds; int aud_mode; int preemph; int pwr_lvl; } ;
struct fmdev {int flag; struct fmtx_data tx_data; } ;
typedef int payload ;


 int CHANL_SET ;
 int FM_BL_EVENT ;
 int FM_CORE_TX_XMITING ;
 int FM_FR_EVENT ;
 int FM_RDS_DISABLE ;
 int FM_STEREO_MODE ;
 int INT_MASK_SET ;
 int REG_WR ;
 int clear_bit (int ,int *) ;
 int enable_xmit (struct fmdev*,int) ;
 int fm_tx_set_preemph_filter (struct fmdev*,int ) ;
 int fm_tx_set_pwr_lvl (struct fmdev*,int ) ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int*,int,int *,int *) ;
 int fmdbg (char*,long) ;
 int set_audio_io (struct fmdev*) ;
 scalar_t__ test_bit (int ,int *) ;

int fm_tx_set_freq(struct fmdev *fmdev, u32 freq_to_set)
{
 struct fmtx_data *tx = &fmdev->tx_data;
 u16 payload, chanl_index;
 int ret;

 if (test_bit(FM_CORE_TX_XMITING, &fmdev->flag)) {
  enable_xmit(fmdev, 0);
  clear_bit(FM_CORE_TX_XMITING, &fmdev->flag);
 }


 payload = (FM_FR_EVENT | FM_BL_EVENT);
 ret = fmc_send_cmd(fmdev, INT_MASK_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 tx->tx_frq = (unsigned long)freq_to_set;
 fmdbg("tx: freq_to_set %ld\n", (long int)tx->tx_frq);

 chanl_index = freq_to_set / 10;


 payload = chanl_index;
 ret = fmc_send_cmd(fmdev, CHANL_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 fm_tx_set_pwr_lvl(fmdev, tx->pwr_lvl);
 fm_tx_set_preemph_filter(fmdev, tx->preemph);

 tx->audio_io = 0x01;
 set_audio_io(fmdev);

 enable_xmit(fmdev, 0x01);

 tx->aud_mode = FM_STEREO_MODE;
 tx->rds.flag = FM_RDS_DISABLE;

 return 0;
}
