
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct mt7603_dev {int false_cca_cck; int false_cca_ofdm; int sensitivity; } ;


 struct mt7603_dev* dev_get_drvdata (int ) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;

__attribute__((used)) static int
mt7603_radio_read(struct seq_file *s, void *data)
{
 struct mt7603_dev *dev = dev_get_drvdata(s->private);

 seq_printf(s, "Sensitivity: %d\n", dev->sensitivity);
 seq_printf(s, "False CCA: ofdm=%d cck=%d\n",
     dev->false_cca_ofdm, dev->false_cca_cck);

 return 0;
}
