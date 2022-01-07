
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECC_ERR_STAT_OFFSET ;
 int INT_ERR_ACK_OFFSET ;
 int INT_ERR_STAT_OFFSET ;
 int MEM_RESET_OFFSET ;
 int ONENAND_MEM_RESET_COLD ;
 int RST_CMP ;
 int s3c_read_reg (int ) ;
 int s3c_write_reg (int,int ) ;

__attribute__((used)) static void s3c_onenand_reset(void)
{
 unsigned long timeout = 0x10000;
 int stat;

 s3c_write_reg(ONENAND_MEM_RESET_COLD, MEM_RESET_OFFSET);
 while (1 && timeout--) {
  stat = s3c_read_reg(INT_ERR_STAT_OFFSET);
  if (stat & RST_CMP)
   break;
 }
 stat = s3c_read_reg(INT_ERR_STAT_OFFSET);
 s3c_write_reg(stat, INT_ERR_ACK_OFFSET);


 s3c_write_reg(0x0, INT_ERR_ACK_OFFSET);

 s3c_write_reg(0x0, ECC_ERR_STAT_OFFSET);
}
