
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wmi {int fat_pipe_exist; int lock; int parent_dev; int * stream_exist_for_ac; } ;


 int WMM_NUM_AC ;
 int ath6kl_indicate_tx_activity (int ,int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath6kl_wmi_relinquish_implicit_pstream_credits(struct wmi *wmi)
{
 u16 active_tsids;
 u8 stream_exist;
 int i;







 spin_lock_bh(&wmi->lock);
 stream_exist = wmi->fat_pipe_exist;
 spin_unlock_bh(&wmi->lock);

 for (i = 0; i < WMM_NUM_AC; i++) {
  if (stream_exist & (1 << i)) {




   spin_lock_bh(&wmi->lock);
   active_tsids = wmi->stream_exist_for_ac[i];
   spin_unlock_bh(&wmi->lock);





   if (!active_tsids) {
    stream_exist &= ~(1 << i);




    ath6kl_indicate_tx_activity(wmi->parent_dev,
           i, 0);
   }
  }
 }


 spin_lock_bh(&wmi->lock);
 wmi->fat_pipe_exist = stream_exist;
 spin_unlock_bh(&wmi->lock);
}
