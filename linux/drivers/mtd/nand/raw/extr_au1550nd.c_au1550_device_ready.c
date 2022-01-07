
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int AU1000_MEM_STSTAT ;
 int alchemy_rdsmem (int ) ;

int au1550_device_ready(struct nand_chip *this)
{
 return (alchemy_rdsmem(AU1000_MEM_STSTAT) & 0x1) ? 1 : 0;
}
