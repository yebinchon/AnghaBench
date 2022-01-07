
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct rcar_drif_sdr {TYPE_1__* vdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 char* KBUILD_MODNAME ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct rcar_drif_sdr* video_drvdata (struct file*) ;

__attribute__((used)) static int rcar_drif_querycap(struct file *file, void *fh,
         struct v4l2_capability *cap)
{
 struct rcar_drif_sdr *sdr = video_drvdata(file);

 strscpy(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
 strscpy(cap->card, sdr->vdev->name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   sdr->vdev->name);

 return 0;
}
