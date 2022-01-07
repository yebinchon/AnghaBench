
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int REG_IOE ;
 int anysee_wr_reg_mask (int ,int ,int,int) ;
 int fe_to_d (struct dvb_frontend*) ;

__attribute__((used)) static int anysee_i2c_gate_ctrl(struct dvb_frontend *fe, int enable)
{

 return anysee_wr_reg_mask(fe_to_d(fe), REG_IOE, (enable << 4), 0x10);
}
