
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hva_dev {unsigned int nb_of_encoders; int nb_of_streamformats; int streamformats; TYPE_1__** encoders; int nb_of_pixelformats; int pixelformats; } ;
struct TYPE_2__ {int streamformat; int pixelformat; } ;


 int register_format (int ,int ,int *) ;

__attribute__((used)) static void register_formats(struct hva_dev *hva)
{
 unsigned int i;

 for (i = 0; i < hva->nb_of_encoders; i++) {
  register_format(hva->encoders[i]->pixelformat,
    hva->pixelformats,
    &hva->nb_of_pixelformats);

  register_format(hva->encoders[i]->streamformat,
    hva->streamformats,
    &hva->nb_of_streamformats);
 }
}
