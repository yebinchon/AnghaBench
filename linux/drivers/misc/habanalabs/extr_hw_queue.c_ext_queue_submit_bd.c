
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct hl_hw_queue {int pi; int hw_queue_id; scalar_t__ kernel_address; } ;
struct hl_device {TYPE_1__* asic_funcs; } ;
struct hl_bd {int ptr; void* len; void* ctl; } ;
struct TYPE_2__ {int (* ring_doorbell ) (struct hl_device*,int ,int ) ;} ;


 void* cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int hl_pi_2_offset (int ) ;
 int hl_queue_inc_ptr (int ) ;
 int stub1 (struct hl_device*,int ,int ) ;

__attribute__((used)) static void ext_queue_submit_bd(struct hl_device *hdev, struct hl_hw_queue *q,
    u32 ctl, u32 len, u64 ptr)
{
 struct hl_bd *bd;

 bd = (struct hl_bd *) (uintptr_t) q->kernel_address;
 bd += hl_pi_2_offset(q->pi);
 bd->ctl = cpu_to_le32(ctl);
 bd->len = cpu_to_le32(len);
 bd->ptr = cpu_to_le64(ptr);

 q->pi = hl_queue_inc_ptr(q->pi);
 hdev->asic_funcs->ring_doorbell(hdev, q->hw_queue_id, q->pi);
}
