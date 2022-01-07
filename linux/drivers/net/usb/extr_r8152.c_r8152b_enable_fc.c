
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int flow_control; } ;
struct r8152 {TYPE_1__ ups_info; } ;


 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int MII_ADVERTISE ;
 int r8152_mdio_read (struct r8152*,int ) ;
 int r8152_mdio_write (struct r8152*,int ,int) ;

__attribute__((used)) static void r8152b_enable_fc(struct r8152 *tp)
{
 u16 anar;

 anar = r8152_mdio_read(tp, MII_ADVERTISE);
 anar |= ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM;
 r8152_mdio_write(tp, MII_ADVERTISE, anar);

 tp->ups_info.flow_control = 1;
}
