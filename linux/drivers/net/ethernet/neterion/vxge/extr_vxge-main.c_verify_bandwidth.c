
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VXGE_DRIVER_NAME ;
 int VXGE_ERR ;
 int VXGE_HW_MAX_VIRTUAL_PATHS ;
 int VXGE_HW_VPATH_BANDWIDTH_MAX ;
 int* bw_percentage ;
 int vxge_debug_init (int ,char*,int ) ;

__attribute__((used)) static void verify_bandwidth(void)
{
 int i, band_width, total = 0, equal_priority = 0;


 for (i = 0; i < VXGE_HW_MAX_VIRTUAL_PATHS; i++) {
  if (bw_percentage[i] == 0) {
   equal_priority = 1;
   break;
  }
 }

 if (!equal_priority) {

  for (i = 0; i < VXGE_HW_MAX_VIRTUAL_PATHS; i++) {
   if (bw_percentage[i] == 0xFF)
    break;

   total += bw_percentage[i];
   if (total > VXGE_HW_VPATH_BANDWIDTH_MAX) {
    equal_priority = 1;
    break;
   }
  }
 }

 if (!equal_priority) {

  if (total < VXGE_HW_VPATH_BANDWIDTH_MAX) {
   if (i < VXGE_HW_MAX_VIRTUAL_PATHS) {

    band_width =
      (VXGE_HW_VPATH_BANDWIDTH_MAX - total) /
     (VXGE_HW_MAX_VIRTUAL_PATHS - i);
    if (band_width < 2)
     equal_priority = 1;
    else {
     for (; i < VXGE_HW_MAX_VIRTUAL_PATHS;
      i++)
      bw_percentage[i] =
       band_width;
    }
   }
  } else if (i < VXGE_HW_MAX_VIRTUAL_PATHS)
   equal_priority = 1;
 }

 if (equal_priority) {
  vxge_debug_init(VXGE_ERR,
   "%s: Assigning equal bandwidth to all the vpaths",
   VXGE_DRIVER_NAME);
  bw_percentage[0] = VXGE_HW_VPATH_BANDWIDTH_MAX /
     VXGE_HW_MAX_VIRTUAL_PATHS;
  for (i = 1; i < VXGE_HW_MAX_VIRTUAL_PATHS; i++)
   bw_percentage[i] = bw_percentage[0];
 }
}
