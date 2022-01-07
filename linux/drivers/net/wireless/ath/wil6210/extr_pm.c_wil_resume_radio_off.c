
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int status; int vif_mutex; } ;


 int clear_bit (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wil_dbg_pm (struct wil6210_priv*,char*) ;
 int wil_enable_irq (struct wil6210_priv*) ;
 int wil_has_active_ifaces (struct wil6210_priv*,int,int) ;
 int wil_status_suspended ;
 int wil_up (struct wil6210_priv*) ;

__attribute__((used)) static int wil_resume_radio_off(struct wil6210_priv *wil)
{
 int rc = 0;
 bool active_ifaces;

 wil_dbg_pm(wil, "Enabling PCIe IRQ\n");
 wil_enable_irq(wil);





 mutex_lock(&wil->vif_mutex);
 active_ifaces = wil_has_active_ifaces(wil, 1, 0);
 mutex_unlock(&wil->vif_mutex);
 if (active_ifaces)
  rc = wil_up(wil);
 else
  clear_bit(wil_status_suspended, wil->status);

 return rc;
}
