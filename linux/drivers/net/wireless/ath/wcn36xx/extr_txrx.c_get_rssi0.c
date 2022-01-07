
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_rx_bd {int phy_stat0; } ;



__attribute__((used)) static inline int get_rssi0(struct wcn36xx_rx_bd *bd)
{
 return 100 - ((bd->phy_stat0 >> 24) & 0xff);
}
