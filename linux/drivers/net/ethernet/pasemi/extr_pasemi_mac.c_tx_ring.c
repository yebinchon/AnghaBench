
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasemi_mac_txring {int dummy; } ;
struct pasemi_mac {struct pasemi_mac_txring* tx; } ;



__attribute__((used)) static struct pasemi_mac_txring *tx_ring(const struct pasemi_mac *mac)
{
 return mac->tx;
}
