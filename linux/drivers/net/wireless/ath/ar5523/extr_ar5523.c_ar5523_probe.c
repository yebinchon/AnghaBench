
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device_id {int driver_info; } ;
struct usb_device {int dummy; } ;
struct ieee80211_hw {int extra_tx_headroom; int queues; TYPE_1__* wiphy; struct ar5523* priv; } ;
struct ar5523_tx_desc {int dummy; } ;
struct ar5523_chunk {int dummy; } ;
struct ar5523 {int wq; int * vif; int rx_data_list_lock; int rx_data_used; int rx_data_free; int rx_refill_work; int rx_data_free_cnt; int tx_flush_waitq; int tx_nr_pending; int tx_nr_total; int tx_data_list_lock; int tx_queue_submitted; int tx_queue_pending; int tx_work; int tx_wd_work; int tx_wd_timer; int stat_work; int mutex; struct usb_device* dev; struct ieee80211_hw* hw; } ;
struct TYPE_2__ {int interface_modes; } ;


 int AR5523_FLAG_ABG ;
 int AR5523_FLAG_PRE_FIRMWARE ;
 int BIT (int ) ;
 int ENOMEM ;
 int HAS_RATE_CONTROL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NL80211_EXT_FEATURE_CQM_RSSI_LIST ;
 int NL80211_IFTYPE_STATION ;
 int RX_INCLUDES_FCS ;
 int SET_IEEE80211_DEV (struct ieee80211_hw*,int *) ;
 int SIGNAL_DBM ;
 int ar5523_alloc_rx_bufs (struct ar5523*) ;
 int ar5523_alloc_rx_cmd (struct ar5523*) ;
 int ar5523_alloc_tx_cmd (struct ar5523*) ;
 int ar5523_cancel_rx_cmd (struct ar5523*) ;
 int ar5523_err (struct ar5523*,char*) ;
 int ar5523_free_rx_bufs (struct ar5523*) ;
 int ar5523_free_rx_cmd (struct ar5523*) ;
 int ar5523_free_tx_cmd (struct ar5523*) ;
 int ar5523_get_devcap (struct ar5523*) ;
 int ar5523_get_devstatus (struct ar5523*) ;
 int ar5523_get_max_rxsz (struct ar5523*) ;
 int ar5523_host_available (struct ar5523*) ;
 int ar5523_info (struct ar5523*,char*,...) ;
 int ar5523_init_modes (struct ar5523*) ;
 int ar5523_load_firmware (struct usb_device*) ;
 int ar5523_ops ;
 int ar5523_rx_refill_work ;
 int ar5523_stat_work ;
 int ar5523_submit_rx_cmd (struct ar5523*) ;
 int ar5523_tx_wd_timer ;
 int ar5523_tx_wd_work ;
 int ar5523_tx_work ;
 int atomic_set (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int *) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 int ieee80211_register_hw (struct ieee80211_hw*) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct ieee80211_hw*) ;
 int wiphy_ext_feature_set (TYPE_1__*,int ) ;

__attribute__((used)) static int ar5523_probe(struct usb_interface *intf,
   const struct usb_device_id *id)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 struct ieee80211_hw *hw;
 struct ar5523 *ar;
 int error = -ENOMEM;






 if (id->driver_info & AR5523_FLAG_PRE_FIRMWARE)
  return ar5523_load_firmware(dev);


 hw = ieee80211_alloc_hw(sizeof(*ar), &ar5523_ops);
 if (!hw)
  goto out;
 SET_IEEE80211_DEV(hw, &intf->dev);

 ar = hw->priv;
 ar->hw = hw;
 ar->dev = dev;
 mutex_init(&ar->mutex);

 INIT_DELAYED_WORK(&ar->stat_work, ar5523_stat_work);
 timer_setup(&ar->tx_wd_timer, ar5523_tx_wd_timer, 0);
 INIT_WORK(&ar->tx_wd_work, ar5523_tx_wd_work);
 INIT_WORK(&ar->tx_work, ar5523_tx_work);
 INIT_LIST_HEAD(&ar->tx_queue_pending);
 INIT_LIST_HEAD(&ar->tx_queue_submitted);
 spin_lock_init(&ar->tx_data_list_lock);
 atomic_set(&ar->tx_nr_total, 0);
 atomic_set(&ar->tx_nr_pending, 0);
 init_waitqueue_head(&ar->tx_flush_waitq);

 atomic_set(&ar->rx_data_free_cnt, 0);
 INIT_WORK(&ar->rx_refill_work, ar5523_rx_refill_work);
 INIT_LIST_HEAD(&ar->rx_data_free);
 INIT_LIST_HEAD(&ar->rx_data_used);
 spin_lock_init(&ar->rx_data_list_lock);

 ar->wq = create_singlethread_workqueue("ar5523");
 if (!ar->wq) {
  ar5523_err(ar, "Could not create wq\n");
  goto out_free_ar;
 }

 error = ar5523_alloc_rx_bufs(ar);
 if (error) {
  ar5523_err(ar, "Could not allocate rx buffers\n");
  goto out_free_wq;
 }

 error = ar5523_alloc_rx_cmd(ar);
 if (error) {
  ar5523_err(ar, "Could not allocate rx command buffers\n");
  goto out_free_rx_bufs;
 }

 error = ar5523_alloc_tx_cmd(ar);
 if (error) {
  ar5523_err(ar, "Could not allocate tx command buffers\n");
  goto out_free_rx_cmd;
 }

 error = ar5523_submit_rx_cmd(ar);
 if (error) {
  ar5523_err(ar, "Failed to submit rx cmd\n");
  goto out_free_tx_cmd;
 }




 error = ar5523_host_available(ar);
 if (error) {
  ar5523_err(ar, "could not initialize adapter\n");
  goto out_cancel_rx_cmd;
 }

 error = ar5523_get_max_rxsz(ar);
 if (error) {
  ar5523_err(ar, "could not get caps from adapter\n");
  goto out_cancel_rx_cmd;
 }

 error = ar5523_get_devcap(ar);
 if (error) {
  ar5523_err(ar, "could not get caps from adapter\n");
  goto out_cancel_rx_cmd;
 }

 error = ar5523_get_devstatus(ar);
 if (error != 0) {
  ar5523_err(ar, "could not get device status\n");
  goto out_cancel_rx_cmd;
 }

 ar5523_info(ar, "MAC/BBP AR5523, RF AR%c112\n",
   (id->driver_info & AR5523_FLAG_ABG) ? '5' : '2');

 ar->vif = ((void*)0);
 ieee80211_hw_set(hw, HAS_RATE_CONTROL);
 ieee80211_hw_set(hw, RX_INCLUDES_FCS);
 ieee80211_hw_set(hw, SIGNAL_DBM);
 hw->extra_tx_headroom = sizeof(struct ar5523_tx_desc) +
    sizeof(struct ar5523_chunk);
 hw->wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION);
 hw->queues = 1;

 error = ar5523_init_modes(ar);
 if (error)
  goto out_cancel_rx_cmd;

 wiphy_ext_feature_set(hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);

 usb_set_intfdata(intf, hw);

 error = ieee80211_register_hw(hw);
 if (error) {
  ar5523_err(ar, "could not register device\n");
  goto out_cancel_rx_cmd;
 }

 ar5523_info(ar, "Found and initialized AR5523 device\n");
 return 0;

out_cancel_rx_cmd:
 ar5523_cancel_rx_cmd(ar);
out_free_tx_cmd:
 ar5523_free_tx_cmd(ar);
out_free_rx_cmd:
 ar5523_free_rx_cmd(ar);
out_free_rx_bufs:
 ar5523_free_rx_bufs(ar);
out_free_wq:
 destroy_workqueue(ar->wq);
out_free_ar:
 ieee80211_free_hw(hw);
out:
 return error;
}
