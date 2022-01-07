
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_cmd_status; } ;
struct wil6210_priv {TYPE_1__ pmc; } ;


 int wil_dbg_misc (struct wil6210_priv*,char*,int) ;

int wil_pmc_last_cmd_status(struct wil6210_priv *wil)
{
 wil_dbg_misc(wil, "pmc_last_cmd_status: status %d\n",
       wil->pmc.last_cmd_status);

 return wil->pmc.last_cmd_status;
}
