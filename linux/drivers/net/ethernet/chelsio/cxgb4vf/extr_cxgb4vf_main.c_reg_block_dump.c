
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 unsigned int CIM_VF_EXT_MAILBOX_CTRL ;
 unsigned int T4VF_CIM_BASE_ADDR ;
 void* T4VF_REGMAP_START ;
 int t4_read_reg (struct adapter*,unsigned int) ;

__attribute__((used)) static void reg_block_dump(struct adapter *adapter, void *regbuf,
      unsigned int start, unsigned int end)
{
 u32 *bp = regbuf + start - T4VF_REGMAP_START;

 for ( ; start <= end; start += sizeof(u32)) {





  if (start == T4VF_CIM_BASE_ADDR + CIM_VF_EXT_MAILBOX_CTRL)
   *bp++ = 0xffff;
  else
   *bp++ = t4_read_reg(adapter, start);
 }
}
