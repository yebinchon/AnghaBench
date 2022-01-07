
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int select; } ;
struct TYPE_4__ {int Length; int Opcode; } ;
struct TYPE_6__ {TYPE_2__ SetGpioPin; TYPE_1__ hdr; } ;
struct ngene_command {int in_len; scalar_t__ out_len; TYPE_3__ cmd; } ;
struct ngene {int dummy; } ;


 int CMD_SET_GPIO_PIN ;
 int ngene_command (struct ngene*,struct ngene_command*) ;

int ngene_command_gpio_set(struct ngene *dev, u8 select, u8 level)
{
 struct ngene_command com;

 com.cmd.hdr.Opcode = CMD_SET_GPIO_PIN;
 com.cmd.hdr.Length = 1;
 com.cmd.SetGpioPin.select = select | (level << 7);
 com.in_len = 1;
 com.out_len = 0;

 return ngene_command(dev, &com);
}
