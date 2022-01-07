
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int vif_mutex; struct wil6210_vif** vifs; } ;
struct seq_file {struct wil6210_priv* private; } ;
struct net_device {int name; int dev_addr; } ;


 int GET_MAX_VIFS (struct wil6210_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 struct net_device* vif_to_ndev (struct wil6210_vif*) ;

__attribute__((used)) static int mids_show(struct seq_file *s, void *data)
{
 struct wil6210_priv *wil = s->private;
 struct wil6210_vif *vif;
 struct net_device *ndev;
 int i;

 mutex_lock(&wil->vif_mutex);
 for (i = 0; i < GET_MAX_VIFS(wil); i++) {
  vif = wil->vifs[i];

  if (vif) {
   ndev = vif_to_ndev(vif);
   seq_printf(s, "[%d] %pM %s\n", i, ndev->dev_addr,
       ndev->name);
  } else {
   seq_printf(s, "[%d] unused\n", i);
  }
 }
 mutex_unlock(&wil->vif_mutex);

 return 0;
}
