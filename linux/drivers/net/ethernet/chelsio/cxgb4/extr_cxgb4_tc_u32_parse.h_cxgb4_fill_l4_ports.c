
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int fport; int lport; } ;
struct TYPE_3__ {int fport; int lport; } ;
struct ch_filter_specification {TYPE_2__ mask; TYPE_1__ val; } ;


 int ntohl (int ) ;

__attribute__((used)) static inline int cxgb4_fill_l4_ports(struct ch_filter_specification *f,
          u32 val, u32 mask)
{
 f->val.fport = ntohl(val) >> 16;
 f->mask.fport = ntohl(mask) >> 16;
 f->val.lport = ntohl(val) & 0x0000FFFF;
 f->mask.lport = ntohl(mask) & 0x0000FFFF;

 return 0;
}
