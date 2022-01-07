
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vbi_anc_data {int* preamble; int did; int sdid; int* idid; int * payload; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_decode_vbi_line {int line; int type; int is_second_field; int * p; } ;
struct cx18_av_state {scalar_t__ slicer_line_offset; } ;
struct cx18 {struct cx18_av_state av_state; } ;


 int V4L2_SLICED_CAPTION_525 ;
 int V4L2_SLICED_TELETEXT_B ;
 int V4L2_SLICED_VPS ;
 int V4L2_SLICED_WSS_625 ;
 int decode_vps (int *,int *) ;
 int odd_parity (int ) ;
 int* sliced_vbi_did ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

int cx18_av_decode_vbi_line(struct v4l2_subdev *sd,
       struct v4l2_decode_vbi_line *vbi)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);
 struct cx18_av_state *state = &cx->av_state;
 struct vbi_anc_data *anc = (struct vbi_anc_data *)vbi->p;
 u8 *p;
 int did, sdid, l, err = 0;




 if (anc->preamble[0] ||
   anc->preamble[1] != 0xff || anc->preamble[2] != 0xff ||
   (anc->did != sliced_vbi_did[0] &&
    anc->did != sliced_vbi_did[1])) {
  vbi->line = vbi->type = 0;
  return 0;
 }

 did = anc->did;
 sdid = anc->sdid & 0xf;
 l = anc->idid[0] & 0x3f;
 l += state->slicer_line_offset;
 p = anc->payload;


 switch (sdid) {
 case 1:
  sdid = V4L2_SLICED_TELETEXT_B;
  break;
 case 4:
  sdid = V4L2_SLICED_WSS_625;
  break;
 case 6:
  sdid = V4L2_SLICED_CAPTION_525;
  err = !odd_parity(p[0]) || !odd_parity(p[1]);
  break;
 case 9:
  sdid = V4L2_SLICED_VPS;
  if (decode_vps(p, p) != 0)
   err = 1;
  break;
 default:
  sdid = 0;
  err = 1;
  break;
 }

 vbi->type = err ? 0 : sdid;
 vbi->line = err ? 0 : l;
 vbi->is_second_field = err ? 0 : (did == sliced_vbi_did[1]);
 vbi->p = p;
 return 0;
}
