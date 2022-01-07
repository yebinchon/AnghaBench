
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u8 ;
typedef void* u16 ;
struct wil6210_priv {int wmi_mutex; int wmi_ev_lock; void* reply_size; int * reply_buf; int reply_mid; void* reply_id; int wmi_call; } ;


 int ETIME ;
 int U8_MAX ;
 int __wmi_send (struct wil6210_priv*,void*,int ,void*,void*) ;
 scalar_t__ jiffies_to_msecs (unsigned long) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int wil_dbg_wmi (struct wil6210_priv*,char*,void*,void*,scalar_t__) ;
 int wil_err (struct wil6210_priv*,char*,void*,void*,int) ;

int wmi_call(struct wil6210_priv *wil, u16 cmdid, u8 mid, void *buf, u16 len,
      u16 reply_id, void *reply, u16 reply_size, int to_msec)
{
 int rc;
 unsigned long remain;
 ulong flags;

 mutex_lock(&wil->wmi_mutex);

 spin_lock_irqsave(&wil->wmi_ev_lock, flags);
 wil->reply_id = reply_id;
 wil->reply_mid = mid;
 wil->reply_buf = reply;
 wil->reply_size = reply_size;
 reinit_completion(&wil->wmi_call);
 spin_unlock_irqrestore(&wil->wmi_ev_lock, flags);

 rc = __wmi_send(wil, cmdid, mid, buf, len);
 if (rc)
  goto out;

 remain = wait_for_completion_timeout(&wil->wmi_call,
          msecs_to_jiffies(to_msec));
 if (0 == remain) {
  wil_err(wil, "wmi_call(0x%04x->0x%04x) timeout %d msec\n",
   cmdid, reply_id, to_msec);
  rc = -ETIME;
 } else {
  wil_dbg_wmi(wil,
       "wmi_call(0x%04x->0x%04x) completed in %d msec\n",
       cmdid, reply_id,
       to_msec - jiffies_to_msecs(remain));
 }

out:
 spin_lock_irqsave(&wil->wmi_ev_lock, flags);
 wil->reply_id = 0;
 wil->reply_mid = U8_MAX;
 wil->reply_buf = ((void*)0);
 wil->reply_size = 0;
 spin_unlock_irqrestore(&wil->wmi_ev_lock, flags);

 mutex_unlock(&wil->wmi_mutex);

 return rc;
}
