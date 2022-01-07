
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct ksz_device {TYPE_1__* vlan_cache; } ;
struct TYPE_2__ {int* table; } ;


 int TABLE_VLAN ;
 int ksz8795_r_table (struct ksz_device*,int ,int,int *) ;
 int ksz8795_w_table (struct ksz_device*,int ,int,int ) ;

__attribute__((used)) static void ksz8795_w_vlan_table(struct ksz_device *dev, u16 vid, u16 vlan)
{
 int index;
 u16 *data;
 u16 addr;
 u64 buf;

 data = (u16 *)&buf;
 addr = vid / 4;
 index = vid & 3;
 ksz8795_r_table(dev, TABLE_VLAN, addr, &buf);
 data[index] = vlan;
 dev->vlan_cache[vid].table[0] = vlan;
 ksz8795_w_table(dev, TABLE_VLAN, addr, buf);
}
