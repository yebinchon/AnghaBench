
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct twl4030_audio {int mutex; TYPE_1__* resource; } ;
typedef enum twl4030_audio_res { ____Placeholder_twl4030_audio_res } twl4030_audio_res ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int request_count; } ;


 int EINVAL ;
 int EPERM ;
 int TWL4030_AUDIO_RES_MAX ;
 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct twl4030_audio* platform_get_drvdata (TYPE_2__*) ;
 TYPE_2__* twl4030_audio_dev ;
 int twl4030_audio_get_resource (int) ;
 int twl4030_audio_set_resource (int,int ) ;

int twl4030_audio_disable_resource(enum twl4030_audio_res id)
{
 struct twl4030_audio *audio = platform_get_drvdata(twl4030_audio_dev);
 int val;

 if (id >= TWL4030_AUDIO_RES_MAX) {
  dev_err(&twl4030_audio_dev->dev,
    "Invalid resource ID (%u)\n", id);
  return -EINVAL;
 }

 mutex_lock(&audio->mutex);
 if (!audio->resource[id].request_count) {
  dev_err(&twl4030_audio_dev->dev,
   "Resource has been disabled already (%u)\n", id);
  mutex_unlock(&audio->mutex);
  return -EPERM;
 }
 audio->resource[id].request_count--;

 if (!audio->resource[id].request_count)

  val = twl4030_audio_set_resource(id, 0);
 else
  val = twl4030_audio_get_resource(id);

 mutex_unlock(&audio->mutex);

 return val;
}
