
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8842_adapter {int dummy; } ;


 int REG_RXCR ;
 int ks8842_clear_bits (struct ks8842_adapter*,int,int,int ) ;

__attribute__((used)) static void ks8842_disable_rx(struct ks8842_adapter *adapter)
{
 ks8842_clear_bits(adapter, 16, 0x01, REG_RXCR);
}
