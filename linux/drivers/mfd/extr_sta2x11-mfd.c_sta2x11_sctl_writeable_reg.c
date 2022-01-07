
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SCTL_SCPCIECSBRST ;
 int SCTL_SCRSTSTA ;
 int __reg_within_range (unsigned int,int ,int ) ;

__attribute__((used)) static bool sta2x11_sctl_writeable_reg(struct device *dev, unsigned int reg)
{
 return !__reg_within_range(reg, SCTL_SCPCIECSBRST, SCTL_SCRSTSTA);
}
