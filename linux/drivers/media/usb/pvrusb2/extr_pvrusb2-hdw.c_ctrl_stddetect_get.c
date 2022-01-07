
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ctrl {int hdw; } ;


 int pvr2_hdw_get_detected_std (int ) ;

__attribute__((used)) static int ctrl_stddetect_get(struct pvr2_ctrl *cptr, int *vp)
{
 *vp = pvr2_hdw_get_detected_std(cptr->hdw);
 return 0;
}
