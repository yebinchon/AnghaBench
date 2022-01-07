
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttusb {TYPE_2__* dev; } ;
struct firmware {int dummy; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ priv; } ;


 int request_firmware (struct firmware const**,char*,int *) ;

__attribute__((used)) static int philips_tdm1316l_request_firmware(struct dvb_frontend* fe, const struct firmware **fw, char* name)
{
 struct ttusb* ttusb = (struct ttusb*) fe->dvb->priv;

 return request_firmware(fw, name, &ttusb->dev->dev);
}
