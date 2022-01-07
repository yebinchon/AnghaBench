
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cb710_slot {int dummy; } ;
struct cb710_chip {int slot_refs_count; } ;


 int atomic_dec (int *) ;
 struct cb710_slot* cb710_pdev_to_slot (int ) ;
 struct cb710_chip* cb710_slot_to_chip (struct cb710_slot*) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static void cb710_release_slot(struct device *dev)
{







}
