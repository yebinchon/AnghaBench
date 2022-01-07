
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int ath9k_ioread32 (void*,int ) ;

__attribute__((used)) static void ath9k_multi_ioread32(void *hw_priv, u32 *addr,
                                u32 *val, u16 count)
{
 int i;

 for (i = 0; i < count; i++)
  val[i] = ath9k_ioread32(hw_priv, addr[i]);
}
