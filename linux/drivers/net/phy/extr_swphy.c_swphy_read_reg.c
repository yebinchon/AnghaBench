
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct fixed_phy_status {scalar_t__ asym_pause; scalar_t__ pause; scalar_t__ link; scalar_t__ duplex; int speed; } ;
struct TYPE_4__ {int bmsr; int estat; int lpa; int lpagb; } ;
struct TYPE_3__ {int bmsr; int estat; int lpa; int lpagb; } ;


 int BMCR_ANENABLE ;
 int BMSR_ANEGCAPABLE ;
 int BMSR_ANEGCOMPLETE ;
 int BMSR_LSTATUS ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_CAP ;
 int MII_REGS_NUM ;

 int SWMII_DUPLEX_FULL ;
 int SWMII_DUPLEX_HALF ;
 scalar_t__ WARN_ON (int) ;
 TYPE_2__* duplex ;
 TYPE_1__* speed ;
 int swphy_decode_speed (int ) ;

int swphy_read_reg(int reg, const struct fixed_phy_status *state)
{
 int speed_index, duplex_index;
 u16 bmsr = BMSR_ANEGCAPABLE;
 u16 estat = 0;
 u16 lpagb = 0;
 u16 lpa = 0;

 if (reg > MII_REGS_NUM)
  return -1;

 speed_index = swphy_decode_speed(state->speed);
 if (WARN_ON(speed_index < 0))
  return 0;

 duplex_index = state->duplex ? SWMII_DUPLEX_FULL : SWMII_DUPLEX_HALF;

 bmsr |= speed[speed_index].bmsr & duplex[duplex_index].bmsr;
 estat |= speed[speed_index].estat & duplex[duplex_index].estat;

 if (state->link) {
  bmsr |= BMSR_LSTATUS | BMSR_ANEGCOMPLETE;

  lpa |= speed[speed_index].lpa & duplex[duplex_index].lpa;
  lpagb |= speed[speed_index].lpagb & duplex[duplex_index].lpagb;

  if (state->pause)
   lpa |= LPA_PAUSE_CAP;

  if (state->asym_pause)
   lpa |= LPA_PAUSE_ASYM;
 }

 switch (reg) {
 case 136:
  return BMCR_ANENABLE;
 case 135:
  return bmsr;
 case 130:
 case 129:
  return 0;
 case 133:
  return lpa;
 case 128:
  return lpagb;
 case 134:
  return estat;





 case 132:
 case 131:
  return -1;

 default:
  return 0xffff;
 }
}
