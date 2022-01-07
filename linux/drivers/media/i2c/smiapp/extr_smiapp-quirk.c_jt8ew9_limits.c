
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int revision_number_major; } ;
struct smiapp_sensor {int frame_skip; TYPE_1__ minfo; } ;


 int SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MAX ;
 int SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN ;
 int smiapp_replace_limit (struct smiapp_sensor*,int ,int) ;

__attribute__((used)) static int jt8ew9_limits(struct smiapp_sensor *sensor)
{
 if (sensor->minfo.revision_number_major < 0x03)
  sensor->frame_skip = 1;



 smiapp_replace_limit(sensor, SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN, 59);
 smiapp_replace_limit(
  sensor, SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MAX, 6000);

 return 0;
}
