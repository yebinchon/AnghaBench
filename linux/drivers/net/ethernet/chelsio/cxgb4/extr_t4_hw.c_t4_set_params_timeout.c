
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fw_params_cmd {void* retval_len16; void* op_to_vfn; TYPE_1__* param; } ;
struct adapter {int dummy; } ;
typedef int c ;
typedef int __be32 ;
struct TYPE_2__ {int mnem; } ;


 int EINVAL ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_params_cmd) ;
 int FW_PARAMS_CMD ;
 int FW_PARAMS_CMD_PFN_V (unsigned int) ;
 int FW_PARAMS_CMD_VFN_V (unsigned int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_params_cmd*,int ,int) ;
 int t4_wr_mbox_timeout (struct adapter*,unsigned int,struct fw_params_cmd*,int,int *,int) ;

int t4_set_params_timeout(struct adapter *adap, unsigned int mbox,
     unsigned int pf, unsigned int vf,
     unsigned int nparams, const u32 *params,
     const u32 *val, int timeout)
{
 struct fw_params_cmd c;
 __be32 *p = &c.param[0].mnem;

 if (nparams > 7)
  return -EINVAL;

 memset(&c, 0, sizeof(c));
 c.op_to_vfn = cpu_to_be32(FW_CMD_OP_V(FW_PARAMS_CMD) |
      FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
      FW_PARAMS_CMD_PFN_V(pf) |
      FW_PARAMS_CMD_VFN_V(vf));
 c.retval_len16 = cpu_to_be32(FW_LEN16(c));

 while (nparams--) {
  *p++ = cpu_to_be32(*params++);
  *p++ = cpu_to_be32(*val++);
 }

 return t4_wr_mbox_timeout(adap, mbox, &c, sizeof(c), ((void*)0), timeout);
}
