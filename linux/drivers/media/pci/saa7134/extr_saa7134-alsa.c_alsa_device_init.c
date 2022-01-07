
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct saa7134_dev* priv_data; } ;
struct saa7134_dev {int nr; TYPE_1__ dmasound; } ;


 int alsa_card_saa7134_create (struct saa7134_dev*,int ) ;

__attribute__((used)) static int alsa_device_init(struct saa7134_dev *dev)
{
 dev->dmasound.priv_data = dev;
 alsa_card_saa7134_create(dev,dev->nr);
 return 1;
}
