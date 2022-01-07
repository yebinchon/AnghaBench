
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 int strscpy (int ,char*,int) ;

__attribute__((used)) static int radio_si4713_querycap(struct file *file, void *priv,
     struct v4l2_capability *capability)
{
 strscpy(capability->driver, "radio-si4713", sizeof(capability->driver));
 strscpy(capability->card, "Silicon Labs Si4713 Modulator",
  sizeof(capability->card));
 strscpy(capability->bus_info, "platform:radio-si4713",
  sizeof(capability->bus_info));
 return 0;
}
