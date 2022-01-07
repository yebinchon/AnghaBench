
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dev {TYPE_1__* tvnorm; } ;
struct TYPE_2__ {int id; } ;


 int s_std ;
 int saa7134_set_decoder (struct saa7134_dev*) ;
 int saa_call_all (struct saa7134_dev*,int ,int ,int ) ;
 int saa_call_empress (struct saa7134_dev*,int ,int ,int ) ;
 int video ;

void saa7134_set_tvnorm_hw(struct saa7134_dev *dev)
{
 saa7134_set_decoder(dev);

 saa_call_all(dev, video, s_std, dev->tvnorm->id);


 saa_call_empress(dev, video, s_std, dev->tvnorm->id);
}
