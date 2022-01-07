
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct mt7615_dev {int dummy; } ;


 struct mt7615_dev* dev_get_drvdata (int ) ;
 int mt7615_mcu_get_temperature (struct mt7615_dev*,int ) ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int mt7615_read_temperature(struct seq_file *s, void *data)
{
 struct mt7615_dev *dev = dev_get_drvdata(s->private);
 int temp;


 temp = mt7615_mcu_get_temperature(dev, 0);
 seq_printf(s, "Temperature: %d\n", temp);

 return 0;
}
