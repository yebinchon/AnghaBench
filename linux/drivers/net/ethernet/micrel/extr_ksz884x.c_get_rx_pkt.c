
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ksz_desc_info {size_t last; size_t mask; int avail; struct ksz_desc* ring; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct ksz_desc {TYPE_2__ sw; } ;


 int KS_DESC_RX_MASK ;

__attribute__((used)) static void get_rx_pkt(struct ksz_desc_info *info, struct ksz_desc **desc)
{
 *desc = &info->ring[info->last];
 info->last++;
 info->last &= info->mask;
 info->avail--;
 (*desc)->sw.buf.data &= ~KS_DESC_RX_MASK;
}
