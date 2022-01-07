
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
struct pvr2_hdw {int v4l2_dev; scalar_t__ std_mask_avail; } ;


 int querystd ;
 int v4l2_device_call_all (int *,int ,int ,int ,scalar_t__*) ;
 int video ;

__attribute__((used)) static v4l2_std_id pvr2_hdw_get_detected_std(struct pvr2_hdw *hdw)
{
 v4l2_std_id std;
 std = (v4l2_std_id)hdw->std_mask_avail;
 v4l2_device_call_all(&hdw->v4l2_dev, 0,
        video, querystd, &std);
 return std;
}
