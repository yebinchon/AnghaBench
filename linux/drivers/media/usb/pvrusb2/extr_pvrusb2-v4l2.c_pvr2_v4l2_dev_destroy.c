
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pvr2_v4l2_dev {int config; int devbase; int * stream; TYPE_3__* v4lp; int minor_type; } ;
struct pvr2_hdw {int dummy; } ;
typedef int msg ;
typedef enum pvr2_config { ____Placeholder_pvr2_config } pvr2_config ;
struct TYPE_5__ {TYPE_1__* mc_head; } ;
struct TYPE_6__ {TYPE_2__ channel; } ;
struct TYPE_4__ {struct pvr2_hdw* hdw; } ;


 int pr_info (char*,char*) ;
 int pvr2_config_get_name (int) ;
 int pvr2_hdw_v4l_store_minor_number (struct pvr2_hdw*,int ,int) ;
 unsigned int scnprintf (char*,int,char*,int ,int ) ;
 int video_device_node_name (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void pvr2_v4l2_dev_destroy(struct pvr2_v4l2_dev *dip)
{
 struct pvr2_hdw *hdw = dip->v4lp->channel.mc_head->hdw;
 enum pvr2_config cfg = dip->config;
 char msg[80];
 unsigned int mcnt;




 mcnt = scnprintf(msg, sizeof(msg) - 1,
    "pvrusb2: unregistered device %s [%s]",
    video_device_node_name(&dip->devbase),
    pvr2_config_get_name(cfg));
 msg[mcnt] = 0;

 pvr2_hdw_v4l_store_minor_number(hdw,dip->minor_type,-1);


 dip->v4lp = ((void*)0);
 dip->stream = ((void*)0);



 video_unregister_device(&dip->devbase);

 pr_info("%s\n", msg);

}
