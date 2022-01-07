
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ loopback; int clock_type; int clock_rate; } ;
typedef TYPE_3__ sync_serial_settings ;
typedef int sync ;
struct TYPE_7__ {int sync; } ;
struct TYPE_8__ {int size; TYPE_1__ ifs_ifsu; int type; } ;
struct ifreq {TYPE_2__ ifr_settings; } ;
struct fst_port_info {int hwif; int index; } ;
struct fst_card_info {int dummy; } ;
struct TYPE_10__ {int internalClock; int lineSpeed; } ;


 int CLOCK_EXT ;
 int CLOCK_INT ;

 int EFAULT ;
 int ENOMEM ;
 scalar_t__ FST_RDB (struct fst_card_info*,int ) ;
 int FST_RDL (struct fst_card_info*,int ) ;
 int IF_IFACE_E1 ;
 int IF_IFACE_T1 ;
 int IF_IFACE_V24 ;
 int IF_IFACE_V35 ;
 int IF_IFACE_X21 ;
 int IF_IFACE_X21D ;
 scalar_t__ INTCLK ;





 scalar_t__ copy_to_user (int ,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_4__* portConfig ;

__attribute__((used)) static int
fst_get_iface(struct fst_card_info *card, struct fst_port_info *port,
       struct ifreq *ifr)
{
 sync_serial_settings sync;
 int i;





 switch (port->hwif) {
 case 133:
  ifr->ifr_settings.type = IF_IFACE_E1;
  break;
 case 132:
  ifr->ifr_settings.type = IF_IFACE_T1;
  break;
 case 130:
  ifr->ifr_settings.type = IF_IFACE_V35;
  break;
 case 131:
  ifr->ifr_settings.type = IF_IFACE_V24;
  break;
 case 128:
  ifr->ifr_settings.type = IF_IFACE_X21D;
  break;
 case 129:
 default:
  ifr->ifr_settings.type = IF_IFACE_X21;
  break;
 }
 if (ifr->ifr_settings.size == 0) {
  return 0;
 }
 if (ifr->ifr_settings.size < sizeof (sync)) {
  return -ENOMEM;
 }

 i = port->index;
 memset(&sync, 0, sizeof(sync));
 sync.clock_rate = FST_RDL(card, portConfig[i].lineSpeed);

 sync.clock_type = FST_RDB(card, portConfig[i].internalClock) ==
     INTCLK ? CLOCK_INT : CLOCK_EXT;
 sync.loopback = 0;

 if (copy_to_user(ifr->ifr_settings.ifs_ifsu.sync, &sync, sizeof (sync))) {
  return -EFAULT;
 }

 ifr->ifr_settings.size = sizeof (sync);
 return 0;
}
