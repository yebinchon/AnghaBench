
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int Device; int Data; } ;
struct TYPE_6__ {scalar_t__ Length; int Opcode; } ;
struct TYPE_5__ {int* raw8; TYPE_1__ I2CRead; TYPE_3__ hdr; } ;
struct ngene_command {int out_len; TYPE_2__ cmd; scalar_t__ in_len; } ;
struct ngene {int dummy; } ;


 int CMD_I2C_WRITE ;
 int EIO ;
 int memcpy (int ,int*,int) ;
 scalar_t__ ngene_command (struct ngene*,struct ngene_command*) ;

__attribute__((used)) static int ngene_command_i2c_write(struct ngene *dev, u8 adr,
       u8 *out, u8 outlen)
{
 struct ngene_command com;


 com.cmd.hdr.Opcode = CMD_I2C_WRITE;
 com.cmd.hdr.Length = outlen + 1;
 com.cmd.I2CRead.Device = adr << 1;
 memcpy(com.cmd.I2CRead.Data, out, outlen);
 com.in_len = outlen + 1;
 com.out_len = 1;

 if (ngene_command(dev, &com) < 0)
  return -EIO;

 if (com.cmd.raw8[0] == 1)
  return -EIO;

 return 0;
}
