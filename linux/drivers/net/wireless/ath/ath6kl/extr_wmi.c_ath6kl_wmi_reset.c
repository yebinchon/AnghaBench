
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi {int lock; int stream_exist_for_ac; scalar_t__ fat_pipe_exist; } ;


 int memset (int ,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath6kl_wmi_reset(struct wmi *wmi)
{
 spin_lock_bh(&wmi->lock);

 wmi->fat_pipe_exist = 0;
 memset(wmi->stream_exist_for_ac, 0, sizeof(wmi->stream_exist_for_ac));

 spin_unlock_bh(&wmi->lock);
}
