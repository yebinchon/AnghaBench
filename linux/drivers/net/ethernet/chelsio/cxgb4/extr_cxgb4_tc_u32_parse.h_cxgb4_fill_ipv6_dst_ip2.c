
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int * lip; } ;
struct TYPE_3__ {int * lip; } ;
struct ch_filter_specification {TYPE_2__ mask; TYPE_1__ val; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline int cxgb4_fill_ipv6_dst_ip2(struct ch_filter_specification *f,
       u32 val, u32 mask)
{
 memcpy(&f->val.lip[8], &val, sizeof(u32));
 memcpy(&f->mask.lip[8], &mask, sizeof(u32));

 return 0;
}
