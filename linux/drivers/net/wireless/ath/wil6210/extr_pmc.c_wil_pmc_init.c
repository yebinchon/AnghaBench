
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct wil6210_priv {TYPE_1__ pmc; } ;
struct pmc_ctx {int dummy; } ;


 int memset (TYPE_1__*,int ,int) ;
 int mutex_init (int *) ;

void wil_pmc_init(struct wil6210_priv *wil)
{
 memset(&wil->pmc, 0, sizeof(struct pmc_ctx));
 mutex_init(&wil->pmc.lock);
}
