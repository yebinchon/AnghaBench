
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 int strscpy (int ,char*,int) ;

__attribute__((used)) static int
vdec_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
{
 strscpy(cap->driver, "qcom-venus", sizeof(cap->driver));
 strscpy(cap->card, "Qualcomm Venus video decoder", sizeof(cap->card));
 strscpy(cap->bus_info, "platform:qcom-venus", sizeof(cap->bus_info));

 return 0;
}
