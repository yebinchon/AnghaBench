
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct pvr2_hdw {int std_mask_cur; int std_dirty; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;



__attribute__((used)) static int ctrl_stdcur_set(struct pvr2_ctrl *cptr,int m,int v)
{
 struct pvr2_hdw *hdw = cptr->hdw;
 v4l2_std_id ns;
 ns = hdw->std_mask_cur;
 ns = (ns & ~m) | (v & m);
 if (ns == hdw->std_mask_cur) return 0;
 hdw->std_mask_cur = ns;
 hdw->std_dirty = !0;
 return 0;
}
