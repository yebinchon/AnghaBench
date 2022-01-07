
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {unsigned int index; int name; int capability; } ;
struct em28xx {unsigned int* amux_map; scalar_t__ has_msp34xx; } ;


 int EINVAL ;
 int V4L2_AUDCAP_STEREO ;
 int em28xx_videodbg (char*,char const*,unsigned int,int ) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int em28xx_fill_audio_input(struct em28xx *dev,
       const char *s,
       struct v4l2_audio *a,
       unsigned int index)
{
 unsigned int idx = dev->amux_map[index];
 if (dev->has_msp34xx && idx != 130)
  idx = 134;

 switch (idx) {
 case 129:
  strscpy(a->name, "Television", sizeof(a->name));
  break;
 case 134:
  strscpy(a->name, "Line In", sizeof(a->name));
  break;
 case 128:
  strscpy(a->name, "Television alt", sizeof(a->name));
  break;
 case 131:
  strscpy(a->name, "Phone", sizeof(a->name));
  break;
 case 133:
  strscpy(a->name, "Mic", sizeof(a->name));
  break;
 case 135:
  strscpy(a->name, "CD", sizeof(a->name));
  break;
 case 136:
  strscpy(a->name, "Aux", sizeof(a->name));
  break;
 case 132:
  strscpy(a->name, "PCM", sizeof(a->name));
  break;
 case 130:
 default:
  return -EINVAL;
 }
 a->index = index;
 a->capability = V4L2_AUDCAP_STEREO;

 em28xx_videodbg("%s: audio input index %d is '%s'\n",
   s, a->index, a->name);

 return 0;
}
