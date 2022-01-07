
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfp_bus {int dummy; } ;
struct phylink {TYPE_1__* netdev; } ;
struct TYPE_2__ {struct sfp_bus* sfp_bus; } ;



__attribute__((used)) static void phylink_sfp_attach(void *upstream, struct sfp_bus *bus)
{
 struct phylink *pl = upstream;

 pl->netdev->sfp_bus = bus;
}
