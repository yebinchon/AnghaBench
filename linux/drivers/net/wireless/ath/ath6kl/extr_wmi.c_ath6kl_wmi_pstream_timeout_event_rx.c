
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_pstream_timeout_event {size_t traffic_class; } ;
struct wmi {int fat_pipe_exist; int parent_dev; int lock; scalar_t__* stream_exist_for_ac; } ;


 int EINVAL ;
 size_t WMM_NUM_AC ;
 int ath6kl_err (char*,size_t) ;
 int ath6kl_indicate_tx_activity (int ,int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath6kl_wmi_pstream_timeout_event_rx(struct wmi *wmi, u8 *datap,
            int len)
{
 struct wmi_pstream_timeout_event *ev;

 if (len < sizeof(struct wmi_pstream_timeout_event))
  return -EINVAL;

 ev = (struct wmi_pstream_timeout_event *) datap;
 if (ev->traffic_class >= WMM_NUM_AC) {
  ath6kl_err("invalid traffic class: %d\n", ev->traffic_class);
  return -EINVAL;
 }







 spin_lock_bh(&wmi->lock);
 wmi->stream_exist_for_ac[ev->traffic_class] = 0;
 wmi->fat_pipe_exist &= ~(1 << ev->traffic_class);
 spin_unlock_bh(&wmi->lock);


 ath6kl_indicate_tx_activity(wmi->parent_dev, ev->traffic_class, 0);

 return 0;
}
