
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tvdata ;
struct tveeprom {int tuner_formats; int serial_number; int tuner_type; int rev_str; int revision; int model; int audio_processor; int has_radio; } ;
struct pvr2_hdw {int tuner_updated; int std_mask_eeprom; int serial_number; int tuner_type; } ;


 int EINVAL ;
 int kfree (int *) ;
 int memset (struct tveeprom*,int ,int) ;
 int * pvr2_eeprom_fetch (struct pvr2_hdw*) ;
 int trace_eeprom (char*,...) ;
 int tveeprom_hauppauge_analog (struct tveeprom*,int *) ;

int pvr2_eeprom_analyze(struct pvr2_hdw *hdw)
{
 u8 *eeprom;
 struct tveeprom tvdata;

 memset(&tvdata,0,sizeof(tvdata));

 eeprom = pvr2_eeprom_fetch(hdw);
 if (!eeprom)
  return -EINVAL;

 tveeprom_hauppauge_analog(&tvdata, eeprom);

 trace_eeprom("eeprom assumed v4l tveeprom module");
 trace_eeprom("eeprom direct call results:");
 trace_eeprom("has_radio=%d",tvdata.has_radio);
 trace_eeprom("tuner_type=%d",tvdata.tuner_type);
 trace_eeprom("tuner_formats=0x%x",tvdata.tuner_formats);
 trace_eeprom("audio_processor=%d",tvdata.audio_processor);
 trace_eeprom("model=%d",tvdata.model);
 trace_eeprom("revision=%d",tvdata.revision);
 trace_eeprom("serial_number=%d",tvdata.serial_number);
 trace_eeprom("rev_str=%s",tvdata.rev_str);
 hdw->tuner_type = tvdata.tuner_type;
 hdw->tuner_updated = !0;
 hdw->serial_number = tvdata.serial_number;
 hdw->std_mask_eeprom = tvdata.tuner_formats;

 kfree(eeprom);

 return 0;
}
