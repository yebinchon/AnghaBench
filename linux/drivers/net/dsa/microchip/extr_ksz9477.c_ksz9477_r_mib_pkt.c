
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u16 ;
struct ksz_device {int dummy; } ;
struct TYPE_2__ {size_t index; } ;


 TYPE_1__* ksz9477_mib_names ;
 int ksz9477_r_mib_cnt (struct ksz_device*,int,size_t,int *) ;

__attribute__((used)) static void ksz9477_r_mib_pkt(struct ksz_device *dev, int port, u16 addr,
         u64 *dropped, u64 *cnt)
{
 addr = ksz9477_mib_names[addr].index;
 ksz9477_r_mib_cnt(dev, port, addr, cnt);
}
