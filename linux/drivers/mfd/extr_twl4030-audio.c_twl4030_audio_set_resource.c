
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct twl4030_audio {TYPE_1__* resource; } ;
typedef enum twl4030_audio_res { ____Placeholder_twl4030_audio_res } twl4030_audio_res ;
struct TYPE_2__ {int mask; int reg; } ;


 int TWL4030_MODULE_AUDIO_VOICE ;
 struct twl4030_audio* platform_get_drvdata (int ) ;
 int twl4030_audio_dev ;
 int twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static int twl4030_audio_set_resource(enum twl4030_audio_res id, int enable)
{
 struct twl4030_audio *audio = platform_get_drvdata(twl4030_audio_dev);
 u8 val;

 twl_i2c_read_u8(TWL4030_MODULE_AUDIO_VOICE, &val,
   audio->resource[id].reg);

 if (enable)
  val |= audio->resource[id].mask;
 else
  val &= ~audio->resource[id].mask;

 twl_i2c_write_u8(TWL4030_MODULE_AUDIO_VOICE,
     val, audio->resource[id].reg);

 return val;
}
