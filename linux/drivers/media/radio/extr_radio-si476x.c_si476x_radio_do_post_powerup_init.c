
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct si476x_radio {TYPE_1__* core; } ;
typedef enum si476x_func { ____Placeholder_si476x_func } si476x_func ;
struct TYPE_3__ {int regmap; int diversity_mode; } ;


 int SI476X_FUNC_FM_RECEIVER ;
 int SI476X_PROP_AUDIO_DEEMPHASIS ;
 int SI476X_PROP_AUDIO_PWR_LINE_FILTER ;
 int SI476X_PROP_DIGITAL_IO_INPUT_SAMPLE_RATE ;
 int SI476X_PROP_DIGITAL_IO_OUTPUT_FORMAT ;
 int SI476X_PROP_FM_RDS_CONFIG ;
 int SI476X_PROP_FM_RDS_INTERRUPT_SOURCE ;
 int SI476X_PROP_INT_CTL_ENABLE ;
 int SI476X_PROP_VALID_MAX_TUNE_ERROR ;
 int SI476X_PROP_VALID_RSSI_THRESHOLD ;
 int SI476X_PROP_VALID_SNR_THRESHOLD ;
 int regcache_sync_region (int ,int ,int ) ;
 int si476x_core_cmd_fm_phase_diversity (TYPE_1__*,int ) ;
 scalar_t__ si476x_core_has_diversity (TYPE_1__*) ;
 int si476x_radio_init_vtable (struct si476x_radio*,int) ;

__attribute__((used)) static int si476x_radio_do_post_powerup_init(struct si476x_radio *radio,
          enum si476x_func func)
{
 int err;


 err = regcache_sync_region(radio->core->regmap,
       SI476X_PROP_DIGITAL_IO_INPUT_SAMPLE_RATE,
       SI476X_PROP_DIGITAL_IO_OUTPUT_FORMAT);
 if (err < 0)
  return err;

 err = regcache_sync_region(radio->core->regmap,
       SI476X_PROP_AUDIO_DEEMPHASIS,
       SI476X_PROP_AUDIO_PWR_LINE_FILTER);
 if (err < 0)
  return err;

 err = regcache_sync_region(radio->core->regmap,
       SI476X_PROP_INT_CTL_ENABLE,
       SI476X_PROP_INT_CTL_ENABLE);
 if (err < 0)
  return err;





 err = regcache_sync_region(radio->core->regmap,
       SI476X_PROP_VALID_MAX_TUNE_ERROR,
       SI476X_PROP_VALID_MAX_TUNE_ERROR);
 if (err < 0)
  return err;

 err = regcache_sync_region(radio->core->regmap,
       SI476X_PROP_VALID_SNR_THRESHOLD,
       SI476X_PROP_VALID_RSSI_THRESHOLD);
 if (err < 0)
  return err;

 if (func == SI476X_FUNC_FM_RECEIVER) {
  if (si476x_core_has_diversity(radio->core)) {
   err = si476x_core_cmd_fm_phase_diversity(radio->core,
         radio->core->diversity_mode);
   if (err < 0)
    return err;
  }

  err = regcache_sync_region(radio->core->regmap,
        SI476X_PROP_FM_RDS_INTERRUPT_SOURCE,
        SI476X_PROP_FM_RDS_CONFIG);
  if (err < 0)
   return err;
 }

 return si476x_radio_init_vtable(radio, func);

}
