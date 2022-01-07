
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct v4l2_ctrl {int id; int val; int handler; } ;
struct si476x_radio {TYPE_3__* core; TYPE_2__* ops; } ;
typedef enum si476x_phase_diversity_mode { ____Placeholder_si476x_phase_diversity_mode } si476x_phase_diversity_mode ;
struct TYPE_10__ {int rds_fifo_depth; int diversity_mode; int regmap; TYPE_1__* client; } ;
struct TYPE_9__ {int (* phase_diversity ) (TYPE_3__*,int) ;} ;
struct TYPE_8__ {int irq; } ;


 int EINVAL ;
 int SI476X_PROP_AUDIO_DEEMPHASIS ;
 int SI476X_PROP_AUDIO_PWR_LINE_FILTER ;
 int SI476X_PROP_FM_RDS_CONFIG ;
 int SI476X_PROP_FM_RDS_INTERRUPT_FIFO_COUNT ;
 int SI476X_PROP_FM_RDS_INTERRUPT_SOURCE ;
 int SI476X_PROP_PWR_ENABLE_MASK ;
 int SI476X_PROP_PWR_GRID_50HZ ;
 int SI476X_PROP_PWR_GRID_60HZ ;
 int SI476X_PROP_PWR_GRID_MASK ;
 int SI476X_PROP_PWR_HARMONICS_MASK ;
 int SI476X_PROP_RDSEN ;
 int SI476X_PROP_RDSEN_MASK ;
 int SI476X_PROP_VALID_MAX_TUNE_ERROR ;
 int SI476X_PROP_VALID_RSSI_THRESHOLD ;
 int SI476X_PROP_VALID_SNR_THRESHOLD ;
 int SI476X_RDSRECV ;
 int regcache_cache_only (int ,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int) ;
 int si476x_core_cmd_fm_rds_status (TYPE_3__*,int,int,int,int *) ;
 int si476x_core_is_in_am_receiver_mode (TYPE_3__*) ;
 int si476x_core_lock (TYPE_3__*) ;
 int si476x_core_unlock (TYPE_3__*) ;
 int si476x_phase_diversity_idx_to_mode (int) ;
 int stub1 (TYPE_3__*,int) ;
 struct si476x_radio* v4l2_ctrl_handler_to_radio (int ) ;

__attribute__((used)) static int si476x_radio_s_ctrl(struct v4l2_ctrl *ctrl)
{
 int retval;
 enum si476x_phase_diversity_mode mode;
 struct si476x_radio *radio = v4l2_ctrl_handler_to_radio(ctrl->handler);

 si476x_core_lock(radio->core);

 switch (ctrl->id) {
 case 132:
  retval = regmap_update_bits(radio->core->regmap,
         SI476X_PROP_AUDIO_PWR_LINE_FILTER,
         SI476X_PROP_PWR_HARMONICS_MASK,
         ctrl->val);
  break;
 case 138:
  switch (ctrl->val) {
  case 135:
   retval = regmap_update_bits(radio->core->regmap,
          SI476X_PROP_AUDIO_PWR_LINE_FILTER,
          SI476X_PROP_PWR_ENABLE_MASK,
          0);
   break;
  case 137:
   retval = regmap_update_bits(radio->core->regmap,
          SI476X_PROP_AUDIO_PWR_LINE_FILTER,
          SI476X_PROP_PWR_GRID_MASK,
          SI476X_PROP_PWR_GRID_50HZ);
   break;
  case 136:
   retval = regmap_update_bits(radio->core->regmap,
          SI476X_PROP_AUDIO_PWR_LINE_FILTER,
          SI476X_PROP_PWR_GRID_MASK,
          SI476X_PROP_PWR_GRID_60HZ);
   break;
  default:
   retval = -EINVAL;
   break;
  }
  break;
 case 130:
  retval = regmap_write(radio->core->regmap,
          SI476X_PROP_VALID_RSSI_THRESHOLD,
          ctrl->val);
  break;
 case 129:
  retval = regmap_write(radio->core->regmap,
          SI476X_PROP_VALID_SNR_THRESHOLD,
          ctrl->val);
  break;
 case 131:
  retval = regmap_write(radio->core->regmap,
          SI476X_PROP_VALID_MAX_TUNE_ERROR,
          ctrl->val);
  break;
 case 134:





  if (si476x_core_is_in_am_receiver_mode(radio->core))
   regcache_cache_only(radio->core->regmap, 1);

  if (ctrl->val) {
   retval = regmap_write(radio->core->regmap,
           SI476X_PROP_FM_RDS_INTERRUPT_FIFO_COUNT,
           radio->core->rds_fifo_depth);
   if (retval < 0)
    break;

   if (radio->core->client->irq) {
    retval = regmap_write(radio->core->regmap,
            SI476X_PROP_FM_RDS_INTERRUPT_SOURCE,
            SI476X_RDSRECV);
    if (retval < 0)
     break;
   }


   retval = si476x_core_cmd_fm_rds_status(radio->core,
              0,
              1,
              1,
              ((void*)0));
   if (retval < 0)
    break;

   retval = regmap_update_bits(radio->core->regmap,
          SI476X_PROP_FM_RDS_CONFIG,
          SI476X_PROP_RDSEN_MASK,
          SI476X_PROP_RDSEN);
  } else {
   retval = regmap_update_bits(radio->core->regmap,
          SI476X_PROP_FM_RDS_CONFIG,
          SI476X_PROP_RDSEN_MASK,
          !SI476X_PROP_RDSEN);
  }

  if (si476x_core_is_in_am_receiver_mode(radio->core))
   regcache_cache_only(radio->core->regmap, 0);
  break;
 case 128:
  retval = regmap_write(radio->core->regmap,
          SI476X_PROP_AUDIO_DEEMPHASIS,
          ctrl->val);
  break;

 case 133:
  mode = si476x_phase_diversity_idx_to_mode(ctrl->val);

  if (mode == radio->core->diversity_mode) {
   retval = 0;
   break;
  }

  if (si476x_core_is_in_am_receiver_mode(radio->core)) {




   radio->core->diversity_mode = mode;
   retval = 0;
  } else {
   retval = radio->ops->phase_diversity(radio->core, mode);
   if (!retval)
    radio->core->diversity_mode = mode;
  }
  break;

 default:
  retval = -EINVAL;
  break;
 }

 si476x_core_unlock(radio->core);

 return retval;
}
