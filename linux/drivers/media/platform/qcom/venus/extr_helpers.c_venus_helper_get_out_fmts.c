
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int session_type; int hfi_codec; struct venus_core* core; } ;
struct venus_core {int dummy; } ;
struct venus_caps {int dummy; } ;


 int EINVAL ;
 int HFI_BUFFER_OUTPUT ;
 int HFI_BUFFER_OUTPUT2 ;
 int HFI_COLOR_FORMAT_UBWC_BASE ;
 int find_fmt_from_caps (struct venus_caps*,int ,int) ;
 int to_hfi_raw_fmt (int) ;
 struct venus_caps* venus_caps_by_codec (struct venus_core*,int ,int ) ;

int venus_helper_get_out_fmts(struct venus_inst *inst, u32 v4l2_fmt,
         u32 *out_fmt, u32 *out2_fmt, bool ubwc)
{
 struct venus_core *core = inst->core;
 struct venus_caps *caps;
 u32 ubwc_fmt, fmt = to_hfi_raw_fmt(v4l2_fmt);
 bool found, found_ubwc;

 *out_fmt = *out2_fmt = 0;

 if (!fmt)
  return -EINVAL;

 caps = venus_caps_by_codec(core, inst->hfi_codec, inst->session_type);
 if (!caps)
  return -EINVAL;

 if (ubwc) {
  ubwc_fmt = fmt | HFI_COLOR_FORMAT_UBWC_BASE;
  found_ubwc = find_fmt_from_caps(caps, HFI_BUFFER_OUTPUT,
      ubwc_fmt);
  found = find_fmt_from_caps(caps, HFI_BUFFER_OUTPUT2, fmt);

  if (found_ubwc && found) {
   *out_fmt = ubwc_fmt;
   *out2_fmt = fmt;
   return 0;
  }
 }

 found = find_fmt_from_caps(caps, HFI_BUFFER_OUTPUT, fmt);
 if (found) {
  *out_fmt = fmt;
  *out2_fmt = 0;
  return 0;
 }

 found = find_fmt_from_caps(caps, HFI_BUFFER_OUTPUT2, fmt);
 if (found) {
  *out_fmt = 0;
  *out2_fmt = fmt;
  return 0;
 }

 return -EINVAL;
}
