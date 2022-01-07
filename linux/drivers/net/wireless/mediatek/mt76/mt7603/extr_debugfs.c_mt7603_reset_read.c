
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct mt7603_dev {int * reset_cause; } ;


 int ARRAY_SIZE (char const* const*) ;







 struct mt7603_dev* dev_get_drvdata (int ) ;
 int seq_printf (struct seq_file*,char*,char const* const,int ) ;

__attribute__((used)) static int
mt7603_reset_read(struct seq_file *s, void *data)
{
 struct mt7603_dev *dev = dev_get_drvdata(s->private);
 static const char * const reset_cause_str[] = {
  [128] = "TX hang",
  [129] = "TX DMA busy stuck",
  [131] = "RX DMA busy stuck",
  [130] = "RX PSE busy stuck",
  [134] = "Beacon stuck",
  [133] = "MCU hang",
  [132] = "PSE reset failed",
 };
 int i;

 for (i = 0; i < ARRAY_SIZE(reset_cause_str); i++) {
  if (!reset_cause_str[i])
   continue;

  seq_printf(s, "%20s: %u\n", reset_cause_str[i],
      dev->reset_cause[i]);
 }

 return 0;
}
