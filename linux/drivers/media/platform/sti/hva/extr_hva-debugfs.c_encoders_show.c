
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct hva_dev* private; } ;
struct hva_dev {TYPE_1__** encoders; int nb_of_encoders; } ;
struct TYPE_2__ {int streamformat; int pixelformat; int name; } ;


 int seq_printf (struct seq_file*,char*,int ,...) ;

__attribute__((used)) static int encoders_show(struct seq_file *s, void *data)
{
 struct hva_dev *hva = s->private;
 unsigned int i = 0;

 seq_printf(s, "[encoders]\n|- %d registered encoders:\n",
     hva->nb_of_encoders);

 while (hva->encoders[i]) {
  seq_printf(s, "|- %s: %4.4s => %4.4s\n", hva->encoders[i]->name,
      (char *)&hva->encoders[i]->pixelformat,
      (char *)&hva->encoders[i]->streamformat);
  i++;
 }

 return 0;
}
