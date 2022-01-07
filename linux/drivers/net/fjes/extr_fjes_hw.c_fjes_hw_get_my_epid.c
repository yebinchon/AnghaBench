
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int epid; } ;
union REG_OWNER_EPID {TYPE_1__ bits; int reg; } ;
struct fjes_hw {int dummy; } ;


 int XSCT_OWNER_EPID ;
 int rd32 (int ) ;

__attribute__((used)) static int fjes_hw_get_my_epid(struct fjes_hw *hw)
{
 union REG_OWNER_EPID info;

 info.reg = rd32(XSCT_OWNER_EPID);

 return info.bits.epid;
}
