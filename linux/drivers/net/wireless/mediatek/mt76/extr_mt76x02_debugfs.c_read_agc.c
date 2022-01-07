
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct TYPE_2__ {int agc_gain_adjust; int false_cca; int low_gain; int avg_rssi_all; } ;
struct mt76x02_dev {TYPE_1__ cal; } ;


 struct mt76x02_dev* dev_get_drvdata (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int read_agc(struct seq_file *file, void *data)
{
 struct mt76x02_dev *dev = dev_get_drvdata(file->private);

 seq_printf(file, "avg_rssi: %d\n", dev->cal.avg_rssi_all);
 seq_printf(file, "low_gain: %d\n", dev->cal.low_gain);
 seq_printf(file, "false_cca: %d\n", dev->cal.false_cca);
 seq_printf(file, "agc_gain_adjust: %d\n", dev->cal.agc_gain_adjust);

 return 0;
}
