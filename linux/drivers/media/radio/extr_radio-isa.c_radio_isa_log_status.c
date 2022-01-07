
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct radio_isa_card {TYPE_1__ v4l2_dev; int hdl; int io; } ;
struct file {int dummy; } ;


 int v4l2_ctrl_handler_log_status (int *,int ) ;
 int v4l2_info (TYPE_1__*,char*,int ) ;
 struct radio_isa_card* video_drvdata (struct file*) ;

__attribute__((used)) static int radio_isa_log_status(struct file *file, void *priv)
{
 struct radio_isa_card *isa = video_drvdata(file);

 v4l2_info(&isa->v4l2_dev, "I/O Port = 0x%03x\n", isa->io);
 v4l2_ctrl_handler_log_status(&isa->hdl, isa->v4l2_dev.name);
 return 0;
}
