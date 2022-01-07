
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct TYPE_2__ {int vht; int ht; int stbc; int ofdm; int cck; } ;
struct mt76_dev {TYPE_1__ rate_power; } ;


 int ARRAY_SIZE (int ) ;
 struct mt76_dev* dev_get_drvdata (int ) ;
 int mt76_seq_puts_array (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int mt76_read_rate_txpower(struct seq_file *s, void *data)
{
 struct mt76_dev *dev = dev_get_drvdata(s->private);

 mt76_seq_puts_array(s, "CCK", dev->rate_power.cck,
       ARRAY_SIZE(dev->rate_power.cck));
 mt76_seq_puts_array(s, "OFDM", dev->rate_power.ofdm,
       ARRAY_SIZE(dev->rate_power.ofdm));
 mt76_seq_puts_array(s, "STBC", dev->rate_power.stbc,
       ARRAY_SIZE(dev->rate_power.stbc));
 mt76_seq_puts_array(s, "HT", dev->rate_power.ht,
       ARRAY_SIZE(dev->rate_power.ht));
 mt76_seq_puts_array(s, "VHT", dev->rate_power.vht,
       ARRAY_SIZE(dev->rate_power.vht));
 return 0;
}
