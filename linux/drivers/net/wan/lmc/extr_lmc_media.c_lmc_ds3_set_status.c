
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ scrambler_onoff; scalar_t__ cable_length; } ;
struct TYPE_15__ {TYPE_2__ ictl; TYPE_1__* lmc_media; } ;
typedef TYPE_3__ lmc_softc_t ;
struct TYPE_16__ {scalar_t__ scrambler_onoff; scalar_t__ cable_length; } ;
typedef TYPE_4__ lmc_ctl_t ;
struct TYPE_13__ {int (* set_scrambler ) (TYPE_3__* const,scalar_t__) ;int (* set_cable_length ) (TYPE_3__* const,scalar_t__) ;} ;


 int LMC_CTL_CABLE_LENGTH_GT_100FT ;
 int LMC_CTL_CABLE_LENGTH_LT_100FT ;
 int LMC_CTL_OFF ;
 int LMC_CTL_ON ;
 int lmc_ds3_set_100ft (TYPE_3__* const,int ) ;
 int lmc_ds3_set_scram (TYPE_3__* const,int ) ;
 int lmc_set_protocol (TYPE_3__* const,TYPE_4__*) ;
 int stub1 (TYPE_3__* const,scalar_t__) ;
 int stub2 (TYPE_3__* const,scalar_t__) ;

__attribute__((used)) static void
lmc_ds3_set_status (lmc_softc_t * const sc, lmc_ctl_t * ctl)
{
  if (ctl == ((void*)0))
    {
      sc->lmc_media->set_cable_length (sc, sc->ictl.cable_length);
      sc->lmc_media->set_scrambler (sc, sc->ictl.scrambler_onoff);
      lmc_set_protocol (sc, ((void*)0));

      return;
    }




  if (ctl->cable_length && !sc->ictl.cable_length)
    lmc_ds3_set_100ft (sc, LMC_CTL_CABLE_LENGTH_GT_100FT);
  else if (!ctl->cable_length && sc->ictl.cable_length)
    lmc_ds3_set_100ft (sc, LMC_CTL_CABLE_LENGTH_LT_100FT);




  if (ctl->scrambler_onoff && !sc->ictl.scrambler_onoff)
    lmc_ds3_set_scram (sc, LMC_CTL_ON);
  else if (!ctl->scrambler_onoff && sc->ictl.scrambler_onoff)
    lmc_ds3_set_scram (sc, LMC_CTL_OFF);

  lmc_set_protocol (sc, ctl);
}
