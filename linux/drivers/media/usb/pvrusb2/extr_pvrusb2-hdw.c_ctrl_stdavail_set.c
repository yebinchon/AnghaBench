
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct TYPE_6__ {int valid_bits; } ;
struct TYPE_4__ {TYPE_3__ type_bitmask; } ;
struct TYPE_5__ {TYPE_1__ def; } ;
struct pvr2_hdw {int std_mask_avail; TYPE_2__ std_info_cur; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;



__attribute__((used)) static int ctrl_stdavail_set(struct pvr2_ctrl *cptr,int m,int v)
{
 struct pvr2_hdw *hdw = cptr->hdw;
 v4l2_std_id ns;
 ns = hdw->std_mask_avail;
 ns = (ns & ~m) | (v & m);
 if (ns == hdw->std_mask_avail) return 0;
 hdw->std_mask_avail = ns;
 hdw->std_info_cur.def.type_bitmask.valid_bits = hdw->std_mask_avail;
 return 0;
}
