
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int f; int n; int m; int v; int x; int r; } ;
struct TYPE_8__ {TYPE_4__ ssi; } ;
struct TYPE_10__ {int clock_rate; TYPE_1__ cardspec; } ;
struct TYPE_9__ {TYPE_3__ ictl; } ;
typedef TYPE_2__ lmc_softc_t ;
typedef TYPE_3__ lmc_ctl_t ;
typedef TYPE_4__ lmc_av9110_t ;


 int write_av9110 (TYPE_2__* const,int,int,int,int,int) ;

__attribute__((used)) static void
lmc_ssi_set_speed (lmc_softc_t * const sc, lmc_ctl_t * ctl)
{
  lmc_ctl_t *ictl = &sc->ictl;
  lmc_av9110_t *av;







  if (ctl == ((void*)0))
    {
      av = &ictl->cardspec.ssi;
      ictl->clock_rate = 1500000;
      av->f = ictl->clock_rate;
      av->n = 120;
      av->m = 100;
      av->v = 1;
      av->x = 1;
      av->r = 2;

      write_av9110 (sc, av->n, av->m, av->v, av->x, av->r);
      return;
    }

  av = &ctl->cardspec.ssi;

  if (av->f == 0)
    return;

  ictl->clock_rate = av->f;
  ictl->cardspec.ssi = *av;

  write_av9110 (sc, av->n, av->m, av->v, av->x, av->r);
}
