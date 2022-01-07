
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_card_rec {int mc_resync_flag; TYPE_1__* port; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_adapter {struct usb_card_rec* card; } ;
struct TYPE_2__ {int tx_data_urb_pending; } ;


 int ERROR ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_RECONFIGURE_TX_BUFF ;
 int MWIFIEX_BSS_ROLE_ANY ;
 int MWIFIEX_TX_DATA_PORT ;
 int WARN ;
 scalar_t__ atomic_read (int *) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int*,int) ;

void mwifiex_multi_chan_resync(struct mwifiex_adapter *adapter)
{
 struct usb_card_rec *card = adapter->card;
 struct mwifiex_private *priv;
 u16 tx_buf_size;
 int i, ret;

 card->mc_resync_flag = 1;
 for (i = 0; i < MWIFIEX_TX_DATA_PORT; i++) {
  if (atomic_read(&card->port[i].tx_data_urb_pending)) {
   mwifiex_dbg(adapter, WARN, "pending data urb in sys\n");
   return;
  }
 }

 card->mc_resync_flag = 0;
 tx_buf_size = 0xffff;
 priv = mwifiex_get_priv(adapter, MWIFIEX_BSS_ROLE_ANY);
 ret = mwifiex_send_cmd(priv, HostCmd_CMD_RECONFIGURE_TX_BUFF,
          HostCmd_ACT_GEN_SET, 0, &tx_buf_size, 0);
 if (ret)
  mwifiex_dbg(adapter, ERROR,
       "send reconfig tx buf size cmd err\n");
}
