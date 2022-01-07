
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct wireless_dev {TYPE_3__ chandef; } ;
struct wil6210_priv {TYPE_1__* main_ndev; } ;
struct seq_file {struct wil6210_priv* private; } ;
struct TYPE_5__ {int center_freq; } ;
struct TYPE_4__ {struct wireless_dev* ieee80211_ptr; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int freq_show(struct seq_file *s, void *data)
{
 struct wil6210_priv *wil = s->private;
 struct wireless_dev *wdev = wil->main_ndev->ieee80211_ptr;
 u32 freq = wdev->chandef.chan ? wdev->chandef.chan->center_freq : 0;

 seq_printf(s, "Freq = %d\n", freq);

 return 0;
}
