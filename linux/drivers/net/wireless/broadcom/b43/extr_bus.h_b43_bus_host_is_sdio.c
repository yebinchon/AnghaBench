
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_bus_dev {scalar_t__ bus_type; TYPE_2__* sdev; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {scalar_t__ bustype; } ;


 scalar_t__ B43_BUS_SSB ;
 scalar_t__ SSB_BUSTYPE_SDIO ;

__attribute__((used)) static inline bool b43_bus_host_is_sdio(struct b43_bus_dev *dev)
{




 return 0;

}
