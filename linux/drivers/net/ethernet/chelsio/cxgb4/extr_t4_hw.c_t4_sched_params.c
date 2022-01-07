
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int level; int mode; int ch; int cl; int unit; int rate; void* pktsize; void* weight; void* max; void* min; int sc; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct fw_sched_cmd {TYPE_2__ u; void* retval_len16; void* op_to_write; } ;
struct adapter {int mbox; } ;
typedef int cmd ;


 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_sched_cmd) ;
 int FW_SCHED_CMD ;
 int FW_SCHED_SC_PARAMS ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_sched_cmd*,int ,int) ;
 int t4_wr_mbox_meat (struct adapter*,int ,struct fw_sched_cmd*,int,int *,int) ;

int t4_sched_params(struct adapter *adapter, int type, int level, int mode,
      int rateunit, int ratemode, int channel, int class,
      int minrate, int maxrate, int weight, int pktsize)
{
 struct fw_sched_cmd cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_write = cpu_to_be32(FW_CMD_OP_V(FW_SCHED_CMD) |
          FW_CMD_REQUEST_F |
          FW_CMD_WRITE_F);
 cmd.retval_len16 = cpu_to_be32(FW_LEN16(cmd));

 cmd.u.params.sc = FW_SCHED_SC_PARAMS;
 cmd.u.params.type = type;
 cmd.u.params.level = level;
 cmd.u.params.mode = mode;
 cmd.u.params.ch = channel;
 cmd.u.params.cl = class;
 cmd.u.params.unit = rateunit;
 cmd.u.params.rate = ratemode;
 cmd.u.params.min = cpu_to_be32(minrate);
 cmd.u.params.max = cpu_to_be32(maxrate);
 cmd.u.params.weight = cpu_to_be16(weight);
 cmd.u.params.pktsize = cpu_to_be16(pktsize);

 return t4_wr_mbox_meat(adapter, adapter->mbox, &cmd, sizeof(cmd),
          ((void*)0), 1);
}
