
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int TP_PIO_ADDR_A ;
 int TP_PIO_DATA_A ;
 unsigned int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,unsigned int) ;

void t4_tp_wr_bits_indirect(struct adapter *adap, unsigned int addr,
       unsigned int mask, unsigned int val)
{
 t4_write_reg(adap, TP_PIO_ADDR_A, addr);
 val |= t4_read_reg(adap, TP_PIO_DATA_A) & ~mask;
 t4_write_reg(adap, TP_PIO_DATA_A, val);
}
