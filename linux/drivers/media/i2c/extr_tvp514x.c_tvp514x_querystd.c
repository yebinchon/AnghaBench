
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int v4l2_std_id ;
typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tvp514x_decoder {int input; TYPE_2__* std_list; int streaming; } ;
typedef enum tvp514x_std { ____Placeholder_tvp514x_std } tvp514x_std ;
typedef enum tvp514x_input { ____Placeholder_tvp514x_input } tvp514x_input ;
struct TYPE_3__ {int name; int id; } ;
struct TYPE_4__ {TYPE_1__ standard; } ;


 int EINVAL ;
 int LOCK_RETRY_DELAY ;
 int REG_STATUS1 ;
 int STATUS_CLR_SUBCAR_LOCK_BIT ;
 int STATUS_HORZ_SYNC_LOCK_BIT ;
 int STATUS_VIRT_SYNC_LOCK_BIT ;
 int STD_INVALID ;
 int V4L2_STD_UNKNOWN ;
 int debug ;
 int msleep (int ) ;
 struct tvp514x_decoder* to_decoder (struct v4l2_subdev*) ;
 int tvp514x_query_current_std (struct v4l2_subdev*) ;
 int tvp514x_read_reg (struct v4l2_subdev*,int ) ;
 int tvp514x_s_stream (struct v4l2_subdev*,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ) ;

__attribute__((used)) static int tvp514x_querystd(struct v4l2_subdev *sd, v4l2_std_id *std_id)
{
 struct tvp514x_decoder *decoder = to_decoder(sd);
 enum tvp514x_std current_std;
 enum tvp514x_input input_sel;
 u8 sync_lock_status, lock_mask;

 if (std_id == ((void*)0))
  return -EINVAL;


 if (!decoder->streaming) {
  tvp514x_s_stream(sd, 1);
  msleep(LOCK_RETRY_DELAY);
 }


 current_std = tvp514x_query_current_std(sd);
 if (current_std == STD_INVALID) {
  *std_id = V4L2_STD_UNKNOWN;
  return 0;
 }

 input_sel = decoder->input;

 switch (input_sel) {
 case 149:
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
  lock_mask = STATUS_CLR_SUBCAR_LOCK_BIT |
   STATUS_HORZ_SYNC_LOCK_BIT |
   STATUS_VIRT_SYNC_LOCK_BIT;
  break;

 case 139:
 case 137:
 case 135:
 case 138:
 case 136:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  lock_mask = STATUS_HORZ_SYNC_LOCK_BIT |
   STATUS_VIRT_SYNC_LOCK_BIT;
  break;

 default:
  return -EINVAL;
 }

 sync_lock_status = tvp514x_read_reg(sd, REG_STATUS1);
 if (lock_mask != (sync_lock_status & lock_mask)) {
  *std_id = V4L2_STD_UNKNOWN;
  return 0;
 }

 *std_id &= decoder->std_list[current_std].standard.id;

 v4l2_dbg(1, debug, sd, "Current STD: %s\n",
   decoder->std_list[current_std].standard.name);
 return 0;
}
