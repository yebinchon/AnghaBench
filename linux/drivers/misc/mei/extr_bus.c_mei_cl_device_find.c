
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_le ;
typedef scalar_t__ u8 ;
struct mei_cl_driver {struct mei_cl_device_id* id_table; } ;
struct mei_cl_device_id {scalar_t__ version; int name; int uuid; } ;
struct mei_cl_device {scalar_t__* name; int me_cl; } ;


 scalar_t__ MEI_CL_VERSION_ANY ;
 int const NULL_UUID_LE ;
 int * mei_me_cl_uuid (int ) ;
 scalar_t__ mei_me_cl_ver (int ) ;
 scalar_t__ strncmp (scalar_t__*,int ,int) ;
 scalar_t__ uuid_le_cmp (int const,int ) ;

__attribute__((used)) static const
struct mei_cl_device_id *mei_cl_device_find(struct mei_cl_device *cldev,
         struct mei_cl_driver *cldrv)
{
 const struct mei_cl_device_id *id;
 const uuid_le *uuid;
 u8 version;
 bool match;

 uuid = mei_me_cl_uuid(cldev->me_cl);
 version = mei_me_cl_ver(cldev->me_cl);

 id = cldrv->id_table;
 while (uuid_le_cmp(NULL_UUID_LE, id->uuid)) {
  if (!uuid_le_cmp(*uuid, id->uuid)) {
   match = 1;

   if (cldev->name[0])
    if (strncmp(cldev->name, id->name,
         sizeof(id->name)))
     match = 0;

   if (id->version != MEI_CL_VERSION_ANY)
    if (id->version != version)
     match = 0;
   if (match)
    return id;
  }

  id++;
 }

 return ((void*)0);
}
