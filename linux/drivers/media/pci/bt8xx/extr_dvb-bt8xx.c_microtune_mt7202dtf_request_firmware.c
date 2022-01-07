
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct dvb_bt8xx_card {TYPE_3__* bt; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {scalar_t__ priv; } ;


 int request_firmware (struct firmware const**,char*,int *) ;

__attribute__((used)) static int microtune_mt7202dtf_request_firmware(struct dvb_frontend* fe, const struct firmware **fw, char* name)
{
 struct dvb_bt8xx_card* bt = (struct dvb_bt8xx_card*) fe->dvb->priv;

 return request_firmware(fw, name, &bt->bt->dev->dev);
}
