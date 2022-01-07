
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_audio {unsigned int audio_mclk; } ;


 struct twl4030_audio* platform_get_drvdata (int ) ;
 int twl4030_audio_dev ;

unsigned int twl4030_audio_get_mclk(void)
{
 struct twl4030_audio *audio = platform_get_drvdata(twl4030_audio_dev);

 return audio->audio_mclk;
}
