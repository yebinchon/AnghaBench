
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct z8530_channel {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int R1 ;
 scalar_t__ Z85230 ;
 int read_zsreg (struct z8530_channel*,int ) ;

__attribute__((used)) static void z8530_flush_fifo(struct z8530_channel *c)
{
 read_zsreg(c, R1);
 read_zsreg(c, R1);
 read_zsreg(c, R1);
 read_zsreg(c, R1);
 if(c->dev->type==Z85230)
 {
  read_zsreg(c, R1);
  read_zsreg(c, R1);
  read_zsreg(c, R1);
  read_zsreg(c, R1);
 }
}
