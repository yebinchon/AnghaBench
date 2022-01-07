
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct common_obj {TYPE_2__* next_frm; TYPE_2__* cur_frm; } ;
struct TYPE_6__ {int timestamp; } ;
struct TYPE_4__ {TYPE_3__ vb2_buf; } ;
struct TYPE_5__ {TYPE_1__ vb; } ;


 int VB2_BUF_STATE_DONE ;
 int ktime_get_ns () ;
 int vb2_buffer_done (TYPE_3__*,int ) ;

__attribute__((used)) static void vpif_process_buffer_complete(struct common_obj *common)
{
 common->cur_frm->vb.vb2_buf.timestamp = ktime_get_ns();
 vb2_buffer_done(&common->cur_frm->vb.vb2_buf, VB2_BUF_STATE_DONE);

 common->cur_frm = common->next_frm;
}
