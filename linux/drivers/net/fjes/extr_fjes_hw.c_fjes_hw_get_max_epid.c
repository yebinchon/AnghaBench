
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxep; } ;
union REG_MAX_EP {TYPE_1__ bits; int reg; } ;
struct fjes_hw {int dummy; } ;


 int XSCT_MAX_EP ;
 int rd32 (int ) ;

__attribute__((used)) static int fjes_hw_get_max_epid(struct fjes_hw *hw)
{
 union REG_MAX_EP info;

 info.reg = rd32(XSCT_MAX_EP);

 return info.bits.maxep;
}
