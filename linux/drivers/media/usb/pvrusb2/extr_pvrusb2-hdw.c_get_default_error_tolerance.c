
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int unit_number; } ;


 int PVR_NUM ;
 int* tolerance ;

__attribute__((used)) static unsigned int get_default_error_tolerance(struct pvr2_hdw *hdw)
{
 int unit_number = hdw->unit_number;
 int tp = 0;
 if ((unit_number >= 0) && (unit_number < PVR_NUM)) {
  tp = tolerance[unit_number];
 }
 return tp;
}
