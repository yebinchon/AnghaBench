
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int LBICTRL_LPCCTL_NR ;
 int inl (int ) ;
 int lpcctl ;

int pasemi_device_ready(struct nand_chip *chip)
{
 return !!(inl(lpcctl) & LBICTRL_LPCCTL_NR);
}
