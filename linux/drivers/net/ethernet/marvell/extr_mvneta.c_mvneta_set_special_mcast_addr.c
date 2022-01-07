
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int dummy; } ;


 scalar_t__ MVNETA_DA_FILT_SPEC_MCAST ;
 unsigned int mvreg_read (struct mvneta_port*,scalar_t__) ;
 int mvreg_write (struct mvneta_port*,scalar_t__,unsigned int) ;

__attribute__((used)) static void mvneta_set_special_mcast_addr(struct mvneta_port *pp,
       unsigned char last_byte,
       int queue)
{
 unsigned int smc_table_reg;
 unsigned int tbl_offset;
 unsigned int reg_offset;


 tbl_offset = (last_byte / 4);

 reg_offset = last_byte % 4;

 smc_table_reg = mvreg_read(pp, (MVNETA_DA_FILT_SPEC_MCAST
     + tbl_offset * 4));

 if (queue == -1)
  smc_table_reg &= ~(0xff << (8 * reg_offset));
 else {
  smc_table_reg &= ~(0xff << (8 * reg_offset));
  smc_table_reg |= ((0x01 | (queue << 1)) << (8 * reg_offset));
 }

 mvreg_write(pp, MVNETA_DA_FILT_SPEC_MCAST + tbl_offset * 4,
      smc_table_reg);
}
