
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct video_mux {size_t active; int lock; struct v4l2_mbus_framefmt* format_mbus; struct media_pad* pads; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int code; scalar_t__ field; int height; int width; } ;
struct v4l2_subdev_format {size_t pad; struct v4l2_mbus_framefmt format; int which; } ;
struct TYPE_2__ {size_t num_pads; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
struct media_pad {int flags; size_t index; } ;


 int EINVAL ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 scalar_t__ V4L2_FIELD_ANY ;
 scalar_t__ V4L2_FIELD_NONE ;
 struct v4l2_mbus_framefmt* __video_mux_get_pad_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct video_mux* v4l2_subdev_to_video_mux (struct v4l2_subdev*) ;
 int v4l_bound_align_image (int *,int,int,int ,int *,int,int,int ,int ) ;

__attribute__((used)) static int video_mux_set_format(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *sdformat)
{
 struct video_mux *vmux = v4l2_subdev_to_video_mux(sd);
 struct v4l2_mbus_framefmt *mbusformat, *source_mbusformat;
 struct media_pad *pad = &vmux->pads[sdformat->pad];
 u16 source_pad = sd->entity.num_pads - 1;

 mbusformat = __video_mux_get_pad_format(sd, cfg, sdformat->pad,
         sdformat->which);
 if (!mbusformat)
  return -EINVAL;

 source_mbusformat = __video_mux_get_pad_format(sd, cfg, source_pad,
             sdformat->which);
 if (!source_mbusformat)
  return -EINVAL;


 v4l_bound_align_image(&sdformat->format.width, 1, 65536, 0,
         &sdformat->format.height, 1, 65536, 0, 0);


 switch (sdformat->format.code) {
 case 203:
 case 202:
 case 201:
 case 200:
 case 199:
 case 198:
 case 212:
 case 211:
 case 197:
 case 196:
 case 195:
 case 207:
 case 194:
 case 210:
 case 209:
 case 193:
 case 191:
 case 190:
 case 214:
 case 192:
 case 206:
 case 205:
 case 204:
 case 147:
 case 169:
 case 163:
 case 151:
 case 136:
 case 129:
 case 162:
 case 150:
 case 135:
 case 128:
 case 149:
 case 167:
 case 155:
 case 140:
 case 133:
 case 148:
 case 165:
 case 153:
 case 138:
 case 131:
 case 164:
 case 152:
 case 137:
 case 130:
 case 146:
 case 168:
 case 156:
 case 141:
 case 134:
 case 157:
 case 142:
 case 158:
 case 166:
 case 154:
 case 139:
 case 132:
 case 145:
 case 161:
 case 213:
 case 160:
 case 144:
 case 143:
 case 159:
 case 208:
 case 215:
 case 185:
 case 180:
 case 175:
 case 170:
 case 189:
 case 184:
 case 179:
 case 174:
 case 188:
 case 183:
 case 178:
 case 173:
 case 187:
 case 182:
 case 177:
 case 172:
 case 186:
 case 181:
 case 176:
 case 171:
  break;
 default:
  sdformat->format.code = 147;
  break;
 }
 if (sdformat->format.field == V4L2_FIELD_ANY)
  sdformat->format.field = V4L2_FIELD_NONE;

 mutex_lock(&vmux->lock);


 if ((pad->flags & MEDIA_PAD_FL_SOURCE) && vmux->active >= 0)
  sdformat->format = vmux->format_mbus[vmux->active];

 *mbusformat = sdformat->format;


 if ((pad->flags & MEDIA_PAD_FL_SINK) && (pad->index == vmux->active))
  *source_mbusformat = sdformat->format;

 mutex_unlock(&vmux->lock);

 return 0;
}
