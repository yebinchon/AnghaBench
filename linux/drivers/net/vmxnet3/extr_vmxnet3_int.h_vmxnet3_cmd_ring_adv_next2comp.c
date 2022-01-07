
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_cmd_ring {int size; int next2comp; } ;


 int VMXNET3_INC_RING_IDX_ONLY (int ,int ) ;

__attribute__((used)) static inline void
vmxnet3_cmd_ring_adv_next2comp(struct vmxnet3_cmd_ring *ring)
{
 VMXNET3_INC_RING_IDX_ONLY(ring->next2comp, ring->size);
}
