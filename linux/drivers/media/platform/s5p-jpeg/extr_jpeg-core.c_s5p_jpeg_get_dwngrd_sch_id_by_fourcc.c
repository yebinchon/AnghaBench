
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 scalar_t__* fourcc_to_dwngrd_schema_id ;

__attribute__((used)) static int s5p_jpeg_get_dwngrd_sch_id_by_fourcc(u32 fourcc)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(fourcc_to_dwngrd_schema_id); ++i) {
  if (fourcc_to_dwngrd_schema_id[i] == fourcc)
   return i;
 }

 return -EINVAL;
}
