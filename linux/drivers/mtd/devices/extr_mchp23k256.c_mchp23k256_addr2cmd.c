
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct mchp23k256_flash {TYPE_1__* caps; } ;
struct TYPE_2__ {int addr_width; } ;



__attribute__((used)) static void mchp23k256_addr2cmd(struct mchp23k256_flash *flash,
    unsigned int addr, u8 *cmd)
{
 int i;






 for (i = flash->caps->addr_width; i > 0; i--, addr >>= 8)
  cmd[i] = addr;
}
