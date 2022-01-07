
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pluto {TYPE_1__* pdev; } ;
struct firmware {int dummy; } ;
struct dvb_frontend {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 struct pluto* frontend_to_pluto (struct dvb_frontend*) ;
 int request_firmware (struct firmware const**,char*,int *) ;

__attribute__((used)) static int pluto2_request_firmware(struct dvb_frontend *fe,
       const struct firmware **fw, char *name)
{
 struct pluto *pluto = frontend_to_pluto(fe);

 return request_firmware(fw, name, &pluto->pdev->dev);
}
