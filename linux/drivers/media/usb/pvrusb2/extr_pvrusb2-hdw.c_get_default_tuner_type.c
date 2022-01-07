
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int unit_number; int tuner_type; int tuner_updated; } ;


 int EINVAL ;
 int PVR_NUM ;
 int* tuner ;

__attribute__((used)) static int get_default_tuner_type(struct pvr2_hdw *hdw)
{
 int unit_number = hdw->unit_number;
 int tp = -1;
 if ((unit_number >= 0) && (unit_number < PVR_NUM)) {
  tp = tuner[unit_number];
 }
 if (tp < 0) return -EINVAL;
 hdw->tuner_type = tp;
 hdw->tuner_updated = !0;
 return 0;
}
