
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct b43_bus_dev {scalar_t__ bus_type; TYPE_4__* sdev; TYPE_2__* bdev; } ;
struct TYPE_8__ {TYPE_3__* bus; } ;
struct TYPE_7__ {scalar_t__ bustype; } ;
struct TYPE_6__ {TYPE_1__* bus; } ;
struct TYPE_5__ {scalar_t__ hosttype; } ;


 scalar_t__ B43_BUS_BCMA ;
 scalar_t__ B43_BUS_SSB ;
 scalar_t__ BCMA_HOSTTYPE_PCI ;
 scalar_t__ SSB_BUSTYPE_PCI ;

__attribute__((used)) static inline bool b43_bus_host_is_pci(struct b43_bus_dev *dev)
{
 return 0;
}
