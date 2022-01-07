
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct mt76x02_dev {int target_power_delta; int target_power; } ;


 int ARRAY_SIZE (int ) ;
 struct mt76x02_dev* dev_get_drvdata (int ) ;
 int mt76_seq_puts_array (struct seq_file*,char*,int ,int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int read_txpower(struct seq_file *file, void *data)
{
 struct mt76x02_dev *dev = dev_get_drvdata(file->private);

 seq_printf(file, "Target power: %d\n", dev->target_power);

 mt76_seq_puts_array(file, "Delta", dev->target_power_delta,
       ARRAY_SIZE(dev->target_power_delta));
 return 0;
}
