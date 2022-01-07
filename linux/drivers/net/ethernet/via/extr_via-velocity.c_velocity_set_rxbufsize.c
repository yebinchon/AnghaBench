
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf_sz; } ;
struct velocity_info {TYPE_1__ rx; } ;


 int ETH_DATA_LEN ;
 int PKT_BUF_SZ ;

__attribute__((used)) static void velocity_set_rxbufsize(struct velocity_info *vptr, int mtu)
{
 vptr->rx.buf_sz = (mtu <= ETH_DATA_LEN) ? PKT_BUF_SZ : mtu + 32;
}
