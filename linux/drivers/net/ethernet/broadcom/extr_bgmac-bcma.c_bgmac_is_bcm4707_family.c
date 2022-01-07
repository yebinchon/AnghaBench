
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bcma_device {TYPE_2__* bus; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ chipinfo; } ;






__attribute__((used)) static inline bool bgmac_is_bcm4707_family(struct bcma_device *core)
{
 switch (core->bus->chipinfo.id) {
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
