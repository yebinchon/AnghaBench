
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hfi_vpe_color_space_conversion {int csc_limit; int csc_bias; int csc_matrix; } ;
struct hfi_vc1e_perf_cfg_type {int search_range_y_subsampled; int search_range_x_subsampled; } ;
struct hfi_uncompressed_format_select {int format; int buffer_type; } ;
struct TYPE_3__ {int size; int pkt_type; } ;
struct TYPE_4__ {TYPE_1__ hdr; int session_id; } ;
struct hfi_session_set_property_pkt {int* data; int num_properties; TYPE_2__ shdr; } ;
struct hfi_scs_threshold {int threshold_value; } ;
struct hfi_quantization_range {int min_qp; int max_qp; int layer_id; } ;
struct hfi_quantization {int layer_id; int qp_b; int qp_p; int qp_i; } ;
struct hfi_profile_level {int level; int profile; } ;
struct hfi_operations_type {int flip; int rotation; } ;
struct hfi_nal_stream_format_select {int format; } ;
struct hfi_mvc_buffer_layout_descp_type {int ngap; int bright_view_first; int layout_type; } ;
struct hfi_multi_stream {int height; int width; int enable; int buffer_type; } ;
struct hfi_multi_slice_control {int slice_size; int multi_slice; } ;
struct hfi_mpeg4_time_resolution {int time_increment_resolution; } ;
struct hfi_mpeg4_header_extension {int header_extension; } ;
struct hfi_max_num_b_frames {int max_num_b_frames; } ;
struct hfi_ltr_use {int use_constrnt; int ref_ltr; int frames; } ;
struct hfi_ltr_mode {int trust_mode; int ltr_count; int ltr_mode; } ;
struct hfi_ltr_mark {int mark_frame; } ;
struct hfi_intra_refresh {int cir_mbs; int air_ref; int air_mbs; int mode; } ;
struct hfi_intra_period {int bframes; int pframes; } ;
struct hfi_initial_quantization {int qp_b; int qp_p; int qp_i; int init_qp_enable; } ;
struct hfi_idr_period {int idr_period; } ;
struct hfi_hybrid_hierp {int layers; } ;
struct hfi_h264_vui_timing_info {int time_scale; int fixed_framerate; int enable; } ;
struct hfi_h264_entropy_control {int cabac_model; int entropy_mode; } ;
struct hfi_h264_db_control {int slice_beta_offset; int slice_alpha_offset; int mode; } ;
struct hfi_framesize {int width; int height; int buffer_type; } ;
struct hfi_framerate {int framerate; int buffer_type; } ;
struct hfi_enable_picture {int picture_type; } ;
struct hfi_enable {int enable; } ;
struct hfi_display_picture_buffer_count {int enable; int count; } ;
struct hfi_conceal_color {int conceal_color; } ;
struct hfi_buffer_size_actual {int type; int size; } ;
struct hfi_buffer_display_hold_count_actual {int type; int hold_count; } ;
struct hfi_buffer_count_actual {int type; int count_actual; } ;
struct hfi_buffer_alloc_mode {int mode; int type; } ;
struct hfi_bitrate {int layer_id; int bitrate; } ;


 int EINVAL ;
 int ERANGE ;
 int HFI_CMD_SESSION_SET_PROPERTY ;
 int HFI_H264_ENTROPY_CABAC ;
 int HFI_H264_PROFILE_HIGH ;
 int hash32_ptr (void*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int pkt_session_set_property_1x(struct hfi_session_set_property_pkt *pkt,
           void *cookie, u32 ptype, void *pdata)
{
 void *prop_data;
 int ret = 0;

 if (!pkt || !cookie || !pdata)
  return -EINVAL;

 prop_data = &pkt->data[1];

 pkt->shdr.hdr.size = sizeof(*pkt);
 pkt->shdr.hdr.pkt_type = HFI_CMD_SESSION_SET_PROPERTY;
 pkt->shdr.session_id = hash32_ptr(cookie);
 pkt->num_properties = 1;
 pkt->data[0] = ptype;

 switch (ptype) {
 case 217: {
  struct hfi_framerate *in = pdata, *frate = prop_data;

  frate->buffer_type = in->buffer_type;
  frate->framerate = in->framerate;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*frate);
  break;
 }
 case 182: {
  struct hfi_uncompressed_format_select *in = pdata;
  struct hfi_uncompressed_format_select *hfi = prop_data;

  hfi->buffer_type = in->buffer_type;
  hfi->format = in->format;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*hfi);
  break;
 }
 case 192: {
  struct hfi_framesize *in = pdata, *fsize = prop_data;

  fsize->buffer_type = in->buffer_type;
  fsize->height = in->height;
  fsize->width = in->width;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*fsize);
  break;
 }
 case 215: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) * 2;
  break;
 }
 case 199: {
  struct hfi_buffer_count_actual *in = pdata, *count = prop_data;

  count->count_actual = in->count_actual;
  count->type = in->type;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*count);
  break;
 }
 case 197: {
  struct hfi_buffer_size_actual *in = pdata, *sz = prop_data;

  sz->size = in->size;
  sz->type = in->type;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*sz);
  break;
 }
 case 198: {
  struct hfi_buffer_display_hold_count_actual *in = pdata;
  struct hfi_buffer_display_hold_count_actual *count = prop_data;

  count->hold_count = in->hold_count;
  count->type = in->type;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*count);
  break;
 }
 case 187: {
  struct hfi_nal_stream_format_select *in = pdata;
  struct hfi_nal_stream_format_select *fmt = prop_data;

  fmt->format = in->format;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*fmt);
  break;
 }
 case 169: {
  u32 *in = pdata;

  switch (*in) {
  case 221:
  case 220:
   break;
  default:
   ret = -EINVAL;
   break;
  }

  pkt->data[1] = *in;
  pkt->shdr.hdr.size += sizeof(u32) * 2;
  break;
 }
 case 168: {
  struct hfi_enable_picture *in = pdata, *en = prop_data;

  en->picture_type = in->picture_type;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 170: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 213: {
  struct hfi_enable *in = pdata;
  struct hfi_enable *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 174: {
  struct hfi_multi_stream *in = pdata, *multi = prop_data;

  multi->buffer_type = in->buffer_type;
  multi->enable = in->enable;
  multi->width = in->width;
  multi->height = in->height;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*multi);
  break;
 }
 case 178: {
  struct hfi_display_picture_buffer_count *in = pdata;
  struct hfi_display_picture_buffer_count *count = prop_data;

  count->count = in->count;
  count->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*count);
  break;
 }
 case 193: {
  u32 *in = pdata;

  switch (*in) {
  case 244:
  case 243:
  case 242:
   break;
  default:
   ret = -EINVAL;
   break;
  }

  pkt->data[1] = *in;
  pkt->shdr.hdr.size += sizeof(u32) * 2;
  break;
 }
 case 214: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 179: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 166: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 205: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 206:
  pkt->shdr.hdr.size += sizeof(u32);
  break;
 case 149:
  break;
 case 151:
  break;
 case 204: {
  struct hfi_bitrate *in = pdata, *brate = prop_data;

  brate->bitrate = in->bitrate;
  brate->layer_id = in->layer_id;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*brate);
  break;
 }
 case 208: {
  struct hfi_bitrate *in = pdata, *hfi = prop_data;

  hfi->bitrate = in->bitrate;
  hfi->layer_id = in->layer_id;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*hfi);
  break;
 }
 case 185: {
  struct hfi_profile_level *in = pdata, *pl = prop_data;

  pl->level = in->level;
  pl->profile = in->profile;
  if (pl->profile <= 0)

   pl->profile = HFI_H264_PROFILE_HIGH;

  if (!pl->level)

   pl->level = 1;

  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*pl);
  break;
 }
 case 163: {
  struct hfi_h264_entropy_control *in = pdata, *hfi = prop_data;

  hfi->entropy_mode = in->entropy_mode;
  if (hfi->entropy_mode == HFI_H264_ENTROPY_CABAC)
   hfi->cabac_model = in->cabac_model;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*hfi);
  break;
 }
 case 144: {
  u32 *in = pdata;

  switch (*in) {
  case 134:
  case 136:
  case 135:
  case 133:
  case 132:
   break;
  default:
   ret = -EINVAL;
   break;
  }

  pkt->data[1] = *in;
  pkt->shdr.hdr.size += sizeof(u32) * 2;
  break;
 }
 case 148: {
  struct hfi_mpeg4_time_resolution *in = pdata, *res = prop_data;

  res->time_increment_resolution = in->time_increment_resolution;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*res);
  break;
 }
 case 150: {
  struct hfi_mpeg4_header_extension *in = pdata, *ext = prop_data;

  ext->header_extension = in->header_extension;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*ext);
  break;
 }
 case 164: {
  struct hfi_h264_db_control *in = pdata, *db = prop_data;

  switch (in->mode) {
  case 237:
  case 236:
  case 238:
   break;
  default:
   ret = -EINVAL;
   break;
  }

  db->mode = in->mode;
  db->slice_alpha_offset = in->slice_alpha_offset;
  db->slice_beta_offset = in->slice_beta_offset;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*db);
  break;
 }
 case 143: {
  struct hfi_quantization *in = pdata, *quant = prop_data;

  quant->qp_i = in->qp_i;
  quant->qp_p = in->qp_p;
  quant->qp_b = in->qp_b;
  quant->layer_id = in->layer_id;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*quant);
  break;
 }
 case 142: {
  struct hfi_quantization_range *in = pdata, *range = prop_data;
  u32 min_qp, max_qp;

  min_qp = in->min_qp;
  max_qp = in->max_qp;




  if (min_qp > 0xff || max_qp > 0xff) {
   ret = -ERANGE;
   break;
  }





  range->min_qp = min_qp | min_qp << 8 | min_qp << 16;
  range->max_qp = max_qp | max_qp << 8 | max_qp << 16;
  range->layer_id = in->layer_id;

  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*range);
  break;
 }
 case 140: {
  struct hfi_vc1e_perf_cfg_type *in = pdata, *perf = prop_data;

  memcpy(perf->search_range_x_subsampled,
         in->search_range_x_subsampled,
         sizeof(perf->search_range_x_subsampled));
  memcpy(perf->search_range_y_subsampled,
         in->search_range_y_subsampled,
         sizeof(perf->search_range_y_subsampled));

  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*perf);
  break;
 }
 case 152: {
  struct hfi_max_num_b_frames *bframes = prop_data;
  u32 *in = pdata;

  bframes->max_num_b_frames = *in;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*bframes);
  break;
 }
 case 210: {
  struct hfi_intra_period *in = pdata, *intra = prop_data;

  intra->pframes = in->pframes;
  intra->bframes = in->bframes;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*intra);
  break;
 }
 case 211: {
  struct hfi_idr_period *in = pdata, *idr = prop_data;

  idr->idr_period = in->idr_period;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*idr);
  break;
 }
 case 180: {
  struct hfi_conceal_color *color = prop_data;
  u32 *in = pdata;

  color->conceal_color = *in;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*color);
  break;
 }
 case 201: {
  struct hfi_operations_type *in = pdata, *ops = prop_data;

  switch (in->rotation) {
  case 128:
  case 129:
  case 131:
  case 130:
   break;
  default:
   ret = -EINVAL;
   break;
  }

  switch (in->flip) {
  case 240:
  case 241:
  case 239:
   break;
  default:
   ret = -EINVAL;
   break;
  }

  ops->rotation = in->rotation;
  ops->flip = in->flip;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*ops);
  break;
 }
 case 154: {
  struct hfi_intra_refresh *in = pdata, *intra = prop_data;

  switch (in->mode) {
  case 232:
  case 235:
  case 234:
  case 233:
  case 231:
   break;
  default:
   ret = -EINVAL;
   break;
  }

  intra->mode = in->mode;
  intra->air_mbs = in->air_mbs;
  intra->air_ref = in->air_ref;
  intra->cir_mbs = in->cir_mbs;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*intra);
  break;
 }
 case 147: {
  struct hfi_multi_slice_control *in = pdata, *multi = prop_data;

  switch (in->multi_slice) {
  case 224:
  case 225:
  case 226:
  case 227:
   break;
  default:
   ret = -EINVAL;
   break;
  }

  multi->multi_slice = in->multi_slice;
  multi->slice_size = in->slice_size;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*multi);
  break;
 }
 case 141: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 159: {
  struct hfi_h264_vui_timing_info *in = pdata, *vui = prop_data;

  vui->enable = in->enable;
  vui->fixed_framerate = in->fixed_framerate;
  vui->time_scale = in->time_scale;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*vui);
  break;
 }
 case 202: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 162: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 200: {
  struct hfi_buffer_alloc_mode *in = pdata, *mode = prop_data;

  mode->type = in->type;
  mode->mode = in->mode;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*mode);
  break;
 }
 case 177: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 160: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 145: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 167: {
  struct hfi_scs_threshold *thres = prop_data;
  u32 *in = pdata;

  thres->threshold_value = *in;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*thres);
  break;
 }
 case 188: {
  struct hfi_mvc_buffer_layout_descp_type *in = pdata;
  struct hfi_mvc_buffer_layout_descp_type *mvc = prop_data;

  switch (in->layout_type) {
  case 222:
  case 223:
   break;
  default:
   ret = -EINVAL;
   break;
  }

  mvc->layout_type = in->layout_type;
  mvc->bright_view_first = in->bright_view_first;
  mvc->ngap = in->ngap;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*mvc);
  break;
 }
 case 153: {
  struct hfi_ltr_mode *in = pdata, *ltr = prop_data;

  switch (in->ltr_mode) {
  case 230:
  case 229:
  case 228:
   break;
  default:
   ret = -EINVAL;
   break;
  }

  ltr->ltr_mode = in->ltr_mode;
  ltr->ltr_count = in->ltr_count;
  ltr->trust_mode = in->trust_mode;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*ltr);
  break;
 }
 case 203: {
  struct hfi_ltr_use *in = pdata, *ltr_use = prop_data;

  ltr_use->frames = in->frames;
  ltr_use->ref_ltr = in->ref_ltr;
  ltr_use->use_constrnt = in->use_constrnt;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*ltr_use);
  break;
 }
 case 209: {
  struct hfi_ltr_mark *in = pdata, *ltr_mark = prop_data;

  ltr_mark->mark_frame = in->mark_frame;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*ltr_mark);
  break;
 }
 case 156: {
  u32 *in = pdata;

  pkt->data[1] = *in;
  pkt->shdr.hdr.size += sizeof(u32) * 2;
  break;
 }
 case 212: {
  u32 *in = pdata;

  pkt->data[1] = *in;
  pkt->shdr.hdr.size += sizeof(u32) * 2;
  break;
 }
 case 165: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 155: {
  struct hfi_initial_quantization *in = pdata, *quant = prop_data;

  quant->init_qp_enable = in->init_qp_enable;
  quant->qp_i = in->qp_i;
  quant->qp_p = in->qp_p;
  quant->qp_b = in->qp_b;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*quant);
  break;
 }
 case 138: {
  struct hfi_vpe_color_space_conversion *in = pdata;
  struct hfi_vpe_color_space_conversion *csc = prop_data;

  memcpy(csc->csc_matrix, in->csc_matrix,
         sizeof(csc->csc_matrix));
  memcpy(csc->csc_bias, in->csc_bias, sizeof(csc->csc_bias));
  memcpy(csc->csc_limit, in->csc_limit, sizeof(csc->csc_limit));
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*csc);
  break;
 }
 case 139: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 161: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 207: {
  u32 *in = pdata;

  pkt->data[1] = *in;
  pkt->shdr.hdr.size += sizeof(u32) * 2;
  break;
 }
 case 158: {
  u32 *in = pdata;

  pkt->data[1] = *in;
  pkt->shdr.hdr.size += sizeof(u32) * 2;
  break;
 }
 case 172: {
  struct hfi_enable *in = pdata, *en = prop_data;

  en->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*en);
  break;
 }
 case 157: {
  struct hfi_hybrid_hierp *in = pdata, *hierp = prop_data;

  hierp->layers = in->layers;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*hierp);
  break;
 }


 case 218:
 case 216:
 case 219:
 case 137:
 case 181:
 case 191:
 case 195:
 case 183:
 case 184:
 case 196:
 case 186:
 case 189:
 case 190:
 case 194:
 case 173:
 case 175:
 case 171:
 case 176:
 case 146:
 default:
  return -EINVAL;
 }

 return ret;
}
