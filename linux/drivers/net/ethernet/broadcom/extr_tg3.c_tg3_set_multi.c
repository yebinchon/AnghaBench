
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;


 int MAC_HASH_REG_0 ;
 int MAC_HASH_REG_1 ;
 int MAC_HASH_REG_2 ;
 int MAC_HASH_REG_3 ;
 int tw32 (int ,int) ;

__attribute__((used)) static void tg3_set_multi(struct tg3 *tp, unsigned int accept_all)
{

 tw32(MAC_HASH_REG_0, accept_all ? 0xffffffff : 0);
 tw32(MAC_HASH_REG_1, accept_all ? 0xffffffff : 0);
 tw32(MAC_HASH_REG_2, accept_all ? 0xffffffff : 0);
 tw32(MAC_HASH_REG_3, accept_all ? 0xffffffff : 0);
}
