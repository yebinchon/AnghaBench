
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vbi_cc {int even; int odd; } ;
struct TYPE_2__ {scalar_t__ cc_payload_idx; } ;
struct ivtv {TYPE_1__ vbi; int i_flags; } ;


 int IVTV_F_I_UPDATE_CC ;
 int clear_bit (int ,int *) ;
 int ivtv_set_cc (struct ivtv*,int ,struct vbi_cc*) ;

void ivtv_disable_cc(struct ivtv *itv)
{
 struct vbi_cc cc = { .odd = { 0x80, 0x80 }, .even = { 0x80, 0x80 } };

 clear_bit(IVTV_F_I_UPDATE_CC, &itv->i_flags);
 ivtv_set_cc(itv, 0, &cc);
 itv->vbi.cc_payload_idx = 0;
}
