
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_eq {scalar_t__ kernel_address; scalar_t__ ci; } ;
struct hl_device {int dummy; } ;


 int HL_EQ_SIZE_IN_BYTES ;
 int memset (void*,int ,int ) ;

void hl_eq_reset(struct hl_device *hdev, struct hl_eq *q)
{
 q->ci = 0;
 memset((void *) (uintptr_t) q->kernel_address, 0, HL_EQ_SIZE_IN_BYTES);
}
