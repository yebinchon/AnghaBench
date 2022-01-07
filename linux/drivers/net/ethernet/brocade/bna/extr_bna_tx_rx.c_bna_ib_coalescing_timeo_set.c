
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {int doorbell_ack; } ;
struct bna_ib {scalar_t__ coalescing_timeo; TYPE_1__ door_bell; } ;


 int BNA_DOORBELL_IB_INT_ACK (int ,int ) ;

__attribute__((used)) static void
bna_ib_coalescing_timeo_set(struct bna_ib *ib, u8 coalescing_timeo)
{
 ib->coalescing_timeo = coalescing_timeo;
 ib->door_bell.doorbell_ack = BNA_DOORBELL_IB_INT_ACK(
    (u32)ib->coalescing_timeo, 0);
}
