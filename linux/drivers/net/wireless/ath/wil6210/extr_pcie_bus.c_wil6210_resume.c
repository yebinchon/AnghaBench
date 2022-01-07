
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int successful_resumes; int failed_resumes; } ;
struct TYPE_4__ {int successful_resumes; int failed_resumes; } ;
struct TYPE_6__ {TYPE_2__ r_off; TYPE_1__ r_on; } ;
struct wil6210_priv {TYPE_3__ suspend_stats; scalar_t__ keep_radio_on_during_sleep; int vif_mutex; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_clear_master (struct pci_dev*) ;
 struct wil6210_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 int wil_dbg_pm (struct wil6210_priv*,char*,char*) ;
 int wil_err (struct wil6210_priv*,char*,int) ;
 int wil_has_active_ifaces (struct wil6210_priv*,int,int) ;
 int wil_resume (struct wil6210_priv*,int,int) ;

__attribute__((used)) static int wil6210_resume(struct device *dev, bool is_runtime)
{
 int rc = 0;
 struct pci_dev *pdev = to_pci_dev(dev);
 struct wil6210_priv *wil = pci_get_drvdata(pdev);
 bool keep_radio_on, active_ifaces;

 wil_dbg_pm(wil, "resume: %s\n", is_runtime ? "runtime" : "system");

 mutex_lock(&wil->vif_mutex);
 active_ifaces = wil_has_active_ifaces(wil, 1, 0);
 mutex_unlock(&wil->vif_mutex);
 keep_radio_on = active_ifaces && wil->keep_radio_on_during_sleep;




 if (!keep_radio_on)

  pci_set_master(pdev);
 rc = wil_resume(wil, is_runtime, keep_radio_on);
 if (rc) {
  wil_err(wil, "device failed to resume (%d)\n", rc);
  if (!keep_radio_on) {
   pci_clear_master(pdev);
   wil->suspend_stats.r_off.failed_resumes++;
  } else {
   wil->suspend_stats.r_on.failed_resumes++;
  }
 } else {
  if (keep_radio_on)
   wil->suspend_stats.r_on.successful_resumes++;
  else
   wil->suspend_stats.r_off.successful_resumes++;
 }

 return rc;
}
