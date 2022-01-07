
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int capability; int name; scalar_t__ index; } ;
struct file {int dummy; } ;


 int V4L2_AUDCAP_STEREO ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int pvr2_g_audio(struct file *file, void *priv, struct v4l2_audio *vin)
{

 vin->index = 0;
 strscpy(vin->name, "PVRUSB2 Audio", sizeof(vin->name));
 vin->capability = V4L2_AUDCAP_STEREO;
 return 0;
}
