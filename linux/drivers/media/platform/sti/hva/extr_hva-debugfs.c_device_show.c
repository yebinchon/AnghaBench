
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct hva_dev* private; } ;
struct TYPE_3__ {int name; } ;
struct hva_dev {TYPE_2__* vdev; TYPE_1__ v4l2_dev; } ;
struct TYPE_4__ {int num; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int device_show(struct seq_file *s, void *data)
{
 struct hva_dev *hva = s->private;

 seq_printf(s, "[%s]\n", hva->v4l2_dev.name);
 seq_printf(s, "registered as /dev/video%d\n", hva->vdev->num);

 return 0;
}
