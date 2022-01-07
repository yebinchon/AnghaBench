
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_device {int dummy; } ;
struct snd_ivtv_card {int dummy; } ;
struct TYPE_2__ {struct snd_ivtv_card* alsa; } ;


 TYPE_1__* to_ivtv (struct v4l2_device*) ;

__attribute__((used)) static inline
struct snd_ivtv_card *to_snd_ivtv_card(struct v4l2_device *v4l2_dev)
{
 return to_ivtv(v4l2_dev)->alsa;
}
