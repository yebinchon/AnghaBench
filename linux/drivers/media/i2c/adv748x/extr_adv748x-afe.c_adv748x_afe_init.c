
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adv748x_state {scalar_t__* endpoints; } ;
struct TYPE_4__ {int entity; } ;
struct adv748x_afe {unsigned int input; int streaming; TYPE_2__ sd; TYPE_1__* pads; int curr_norm; } ;
struct TYPE_3__ {int flags; } ;


 int ADV748X_AFE_NR_PADS ;
 unsigned int ADV748X_AFE_SINK_AIN0 ;
 unsigned int ADV748X_AFE_SINK_AIN7 ;
 size_t ADV748X_AFE_SOURCE ;
 unsigned int ADV748X_PORT_AIN0 ;
 unsigned int ADV748X_PORT_AIN7 ;
 int MEDIA_ENT_F_ATV_DECODER ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int V4L2_STD_NTSC_M ;
 int adv748x_afe_init_controls (struct adv748x_afe*) ;
 int adv748x_afe_ops ;
 int adv748x_afe_s_input (struct adv748x_afe*,unsigned int) ;
 struct adv748x_state* adv748x_afe_to_state (struct adv748x_afe*) ;
 int adv748x_subdev_init (TYPE_2__*,struct adv748x_state*,int *,int ,char*) ;
 int adv_dbg (struct adv748x_state*,char*,unsigned int) ;
 int media_entity_cleanup (int *) ;
 int media_entity_pads_init (int *,int ,TYPE_1__*) ;

int adv748x_afe_init(struct adv748x_afe *afe)
{
 struct adv748x_state *state = adv748x_afe_to_state(afe);
 int ret;
 unsigned int i;

 afe->input = 0;
 afe->streaming = 0;
 afe->curr_norm = V4L2_STD_NTSC_M;

 adv748x_subdev_init(&afe->sd, state, &adv748x_afe_ops,
       MEDIA_ENT_F_ATV_DECODER, "afe");


 for (i = ADV748X_PORT_AIN0; i <= ADV748X_PORT_AIN7; i++) {

  if (state->endpoints[i]) {
   afe->input = i;
   break;
  }
 }

 adv748x_afe_s_input(afe, afe->input);

 adv_dbg(state, "AFE Default input set to %d\n", afe->input);


 for (i = ADV748X_AFE_SINK_AIN0; i <= ADV748X_AFE_SINK_AIN7; i++)
  afe->pads[i].flags = MEDIA_PAD_FL_SINK;

 afe->pads[ADV748X_AFE_SOURCE].flags = MEDIA_PAD_FL_SOURCE;

 ret = media_entity_pads_init(&afe->sd.entity, ADV748X_AFE_NR_PADS,
   afe->pads);
 if (ret)
  return ret;

 ret = adv748x_afe_init_controls(afe);
 if (ret)
  goto error;

 return 0;

error:
 media_entity_cleanup(&afe->sd.entity);

 return ret;
}
