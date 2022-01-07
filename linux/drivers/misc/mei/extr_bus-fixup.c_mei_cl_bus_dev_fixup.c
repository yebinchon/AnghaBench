
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_le ;
struct mei_fixup {int (* hook ) (struct mei_cl_device*) ;int uuid; } ;
struct mei_cl_device {int me_cl; } ;


 size_t ARRAY_SIZE (struct mei_fixup*) ;
 int const MEI_UUID_ANY ;
 struct mei_fixup* mei_fixups ;
 int * mei_me_cl_uuid (int ) ;
 int stub1 (struct mei_cl_device*) ;
 scalar_t__ uuid_le_cmp (int ,int const) ;

void mei_cl_bus_dev_fixup(struct mei_cl_device *cldev)
{
 struct mei_fixup *f;
 const uuid_le *uuid = mei_me_cl_uuid(cldev->me_cl);
 size_t i;

 for (i = 0; i < ARRAY_SIZE(mei_fixups); i++) {

  f = &mei_fixups[i];
  if (uuid_le_cmp(f->uuid, MEI_UUID_ANY) == 0 ||
      uuid_le_cmp(f->uuid, *uuid) == 0)
   f->hook(cldev);
 }
}
