
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbi_info {size_t cc_payload_idx; int * cc_payload; } ;
struct vbi_cc {int dummy; } ;
struct ivtv {int i_flags; struct vbi_info vbi; } ;


 size_t ARRAY_SIZE (int *) ;
 int IVTV_F_I_UPDATE_CC ;
 int memcpy (int *,struct vbi_cc const*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ivtv_write_vbi_cc_lines(struct ivtv *itv, const struct vbi_cc *cc)
{
 struct vbi_info *vi = &itv->vbi;

 if (vi->cc_payload_idx < ARRAY_SIZE(vi->cc_payload)) {
  memcpy(&vi->cc_payload[vi->cc_payload_idx], cc,
         sizeof(struct vbi_cc));
  vi->cc_payload_idx++;
  set_bit(IVTV_F_I_UPDATE_CC, &itv->i_flags);
 }
}
