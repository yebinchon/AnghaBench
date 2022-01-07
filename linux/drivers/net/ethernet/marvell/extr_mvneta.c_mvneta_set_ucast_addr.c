
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mvneta_port {int dummy; } ;


 scalar_t__ MVNETA_DA_FILT_UCAST_BASE ;
 unsigned int mvreg_read (struct mvneta_port*,scalar_t__) ;
 int mvreg_write (struct mvneta_port*,scalar_t__,unsigned int) ;

__attribute__((used)) static void mvneta_set_ucast_addr(struct mvneta_port *pp, u8 last_nibble,
      int queue)
{
 unsigned int unicast_reg;
 unsigned int tbl_offset;
 unsigned int reg_offset;


 last_nibble = (0xf & last_nibble);


 tbl_offset = (last_nibble / 4) * 4;


 reg_offset = last_nibble % 4;

 unicast_reg = mvreg_read(pp, (MVNETA_DA_FILT_UCAST_BASE + tbl_offset));

 if (queue == -1) {

  unicast_reg &= ~(0xff << (8 * reg_offset));
 } else {
  unicast_reg &= ~(0xff << (8 * reg_offset));
  unicast_reg |= ((0x01 | (queue << 1)) << (8 * reg_offset));
 }

 mvreg_write(pp, (MVNETA_DA_FILT_UCAST_BASE + tbl_offset), unicast_reg);
}
