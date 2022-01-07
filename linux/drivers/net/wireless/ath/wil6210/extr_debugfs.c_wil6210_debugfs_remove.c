
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data_arr; } ;
struct wil6210_priv {int max_assoc_sta; TYPE_2__* sta; TYPE_1__ dbg_data; int * debug; } ;
struct TYPE_4__ {int tx_latency_bins; } ;


 int debugfs_remove_recursive (int *) ;
 int kfree (int ) ;
 int wil_pmc_free (struct wil6210_priv*,int) ;

void wil6210_debugfs_remove(struct wil6210_priv *wil)
{
 int i;

 debugfs_remove_recursive(wil->debug);
 wil->debug = ((void*)0);

 kfree(wil->dbg_data.data_arr);
 for (i = 0; i < wil->max_assoc_sta; i++)
  kfree(wil->sta[i].tx_latency_bins);




 wil_pmc_free(wil, 0);
}
