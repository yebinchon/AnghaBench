
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct seq_file {struct mic_device* private; } ;
struct mic_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_postcode ) (struct mic_device*) ;} ;


 int seq_printf (struct seq_file*,char*,int,int) ;
 int stub1 (struct mic_device*) ;

__attribute__((used)) static int mic_post_code_show(struct seq_file *s, void *pos)
{
 struct mic_device *mdev = s->private;
 u32 reg = mdev->ops->get_postcode(mdev);

 seq_printf(s, "%c%c", reg & 0xff, (reg >> 8) & 0xff);
 return 0;
}
