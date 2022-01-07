
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct delta_dev {unsigned int nb_of_decoders; int nb_of_streamformats; int streamformats; TYPE_1__** decoders; int nb_of_pixelformats; int pixelformats; } ;
struct TYPE_2__ {int streamformat; int pixelformat; } ;


 int register_format (int ,int ,int *) ;

__attribute__((used)) static void register_formats(struct delta_dev *delta)
{
 unsigned int i;

 for (i = 0; i < delta->nb_of_decoders; i++) {
  register_format(delta->decoders[i]->pixelformat,
    delta->pixelformats,
    &delta->nb_of_pixelformats);

  register_format(delta->decoders[i]->streamformat,
    delta->streamformats,
    &delta->nb_of_streamformats);
 }
}
