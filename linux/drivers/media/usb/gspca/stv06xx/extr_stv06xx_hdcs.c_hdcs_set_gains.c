
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int HDCS_ERECPGA ;
 int hdcs_reg_write_seq (struct sd*,int ,int*,int) ;

__attribute__((used)) static int hdcs_set_gains(struct sd *sd, u8 g)
{
 int err;
 u8 gains[4];


 if (g > 127)
  g = 0x80 | (g / 2);

 gains[0] = g;
 gains[1] = g;
 gains[2] = g;
 gains[3] = g;

 err = hdcs_reg_write_seq(sd, HDCS_ERECPGA, gains, 4);
 return err;
}
