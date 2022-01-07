
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int vtbl_slots; scalar_t__* volumes; } ;


 int ubi_free_volume (struct ubi_device*,scalar_t__) ;

__attribute__((used)) static void kill_volumes(struct ubi_device *ubi)
{
 int i;

 for (i = 0; i < ubi->vtbl_slots; i++)
  if (ubi->volumes[i])
   ubi_free_volume(ubi, ubi->volumes[i]);
}
