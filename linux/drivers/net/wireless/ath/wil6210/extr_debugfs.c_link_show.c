
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct wil_sta_info {int status; size_t mid; int addr; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int max_assoc_sta; struct wil6210_vif** vifs; struct wil_sta_info* sta; } ;
struct TYPE_4__ {int mcs; } ;
struct TYPE_3__ {int mcs; } ;
struct station_info {int signal; TYPE_2__ rxrate; TYPE_1__ txrate; } ;
struct seq_file {struct wil6210_priv* private; } ;


 int ENOMEM ;
 size_t GET_MAX_VIFS (struct wil6210_priv*) ;
 int GFP_KERNEL ;
 size_t U8_MAX ;
 int kfree (struct station_info*) ;
 struct station_info* kzalloc (int,int ) ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int wil_cid_fill_sinfo (struct wil6210_vif*,int,struct station_info*) ;




__attribute__((used)) static int link_show(struct seq_file *s, void *data)
{
 struct wil6210_priv *wil = s->private;
 struct station_info *sinfo;
 int i, rc = 0;

 sinfo = kzalloc(sizeof(*sinfo), GFP_KERNEL);
 if (!sinfo)
  return -ENOMEM;

 for (i = 0; i < wil->max_assoc_sta; i++) {
  struct wil_sta_info *p = &wil->sta[i];
  char *status = "unknown";
  struct wil6210_vif *vif;
  u8 mid;

  switch (p->status) {
  case 128:
   status = "unused   ";
   break;
  case 130:
   status = "pending  ";
   break;
  case 129:
   status = "connected";
   break;
  }
  mid = (p->status != 128) ? p->mid : U8_MAX;
  seq_printf(s, "[%d][MID %d] %pM %s\n",
      i, mid, p->addr, status);

  if (p->status != 129)
   continue;

  vif = (mid < GET_MAX_VIFS(wil)) ? wil->vifs[mid] : ((void*)0);
  if (vif) {
   rc = wil_cid_fill_sinfo(vif, i, sinfo);
   if (rc)
    goto out;

   seq_printf(s, "  Tx_mcs = %d\n", sinfo->txrate.mcs);
   seq_printf(s, "  Rx_mcs = %d\n", sinfo->rxrate.mcs);
   seq_printf(s, "  SQ     = %d\n", sinfo->signal);
  } else {
   seq_puts(s, "  INVALID MID\n");
  }
 }

out:
 kfree(sinfo);
 return rc;
}
