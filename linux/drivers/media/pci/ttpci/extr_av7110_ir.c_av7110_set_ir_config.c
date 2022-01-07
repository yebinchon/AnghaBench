
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ir_config; } ;
struct av7110 {TYPE_1__ ir; } ;


 int COMTYPE_PIDFILTER ;
 int SetIR ;
 int av7110_fw_cmd (struct av7110*,int ,int ,int,int ) ;
 int dprintk (int,char*,int ) ;

int av7110_set_ir_config(struct av7110 *av7110)
{
 dprintk(4, "ir config = %08x\n", av7110->ir.ir_config);

 return av7110_fw_cmd(av7110, COMTYPE_PIDFILTER, SetIR, 1,
        av7110->ir.ir_config);
}
