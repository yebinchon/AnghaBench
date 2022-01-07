
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvaser_pciefd_can {int cmd_seq; scalar_t__ reg_base; } ;


 scalar_t__ KVASER_PCIEFD_KCAN_CMD_REG ;
 int KVASER_PCIEFD_KCAN_CMD_SEQ_SHIFT ;
 int KVASER_PCIEFD_KCAN_CMD_SRQ ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void kvaser_pciefd_request_status(struct kvaser_pciefd_can *can)
{
 u32 cmd;

 cmd = KVASER_PCIEFD_KCAN_CMD_SRQ;
 cmd |= ++can->cmd_seq << KVASER_PCIEFD_KCAN_CMD_SEQ_SHIFT;
 iowrite32(cmd, can->reg_base + KVASER_PCIEFD_KCAN_CMD_REG);
}
