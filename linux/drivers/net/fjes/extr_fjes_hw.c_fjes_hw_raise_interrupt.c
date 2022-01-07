
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fjes_hw {int dummy; } ;
typedef enum REG_ICTL_MASK { ____Placeholder_REG_ICTL_MASK } REG_ICTL_MASK ;


 int XSCT_IG ;
 int cpu_to_le32 (int) ;
 int wr32 (int ,int ) ;

int fjes_hw_raise_interrupt(struct fjes_hw *hw, int dest_epid,
       enum REG_ICTL_MASK mask)
{
 u32 ig = mask | dest_epid;

 wr32(XSCT_IG, cpu_to_le32(ig));

 return 0;
}
