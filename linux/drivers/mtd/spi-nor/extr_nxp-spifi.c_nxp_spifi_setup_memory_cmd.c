
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_proto; int addr_width; int read_dummy; int read_opcode; } ;
struct nxp_spifi {int mcmd; TYPE_1__ nor; int dev; } ;


 int EINVAL ;



 int SPIFI_CMD_FIELDFORM_ALL_SERIAL ;
 int SPIFI_CMD_FIELDFORM_QUAD_DUAL_DATA ;
 int SPIFI_CMD_FRAMEFORM (int) ;
 int SPIFI_CMD_INTLEN (int) ;
 int SPIFI_CMD_OPCODE (int ) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int nxp_spifi_setup_memory_cmd(struct nxp_spifi *spifi)
{
 switch (spifi->nor.read_proto) {
 case 130:
  spifi->mcmd = SPIFI_CMD_FIELDFORM_ALL_SERIAL;
  break;
 case 129:
 case 128:
  spifi->mcmd = SPIFI_CMD_FIELDFORM_QUAD_DUAL_DATA;
  break;
 default:
  dev_err(spifi->dev, "unsupported SPI read mode\n");
  return -EINVAL;
 }


 if (spifi->nor.addr_width < 1 || spifi->nor.addr_width > 4)
  return -EINVAL;

 spifi->mcmd |= SPIFI_CMD_OPCODE(spifi->nor.read_opcode) |
         SPIFI_CMD_INTLEN(spifi->nor.read_dummy / 8) |
         SPIFI_CMD_FRAMEFORM(spifi->nor.addr_width + 1);

 return 0;
}
