
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cas {int lock; scalar_t__ regs; } ;
struct TYPE_2__ {int offsets; } ;


 int cas_phy_read (struct cas*,int ) ;
 TYPE_1__* ethtool_register_table ;
 int memcpy (int *,int *,int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cas_read_regs(struct cas *cp, u8 *ptr, int len)
{
 u8 *p;
 int i;
 unsigned long flags;

 spin_lock_irqsave(&cp->lock, flags);
 for (i = 0, p = ptr; i < len ; i ++, p += sizeof(u32)) {
  u16 hval;
  u32 val;
  if (ethtool_register_table[i].offsets < 0) {
   hval = cas_phy_read(cp,
        -ethtool_register_table[i].offsets);
   val = hval;
  } else {
   val= readl(cp->regs+ethtool_register_table[i].offsets);
  }
  memcpy(p, (u8 *)&val, sizeof(u32));
 }
 spin_unlock_irqrestore(&cp->lock, flags);
}
