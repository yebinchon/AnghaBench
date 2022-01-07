
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_hw_queue {int dummy; } ;
struct hl_device {int dummy; } ;


 int ext_and_cpu_hw_queue_init (struct hl_device*,struct hl_hw_queue*,int) ;

__attribute__((used)) static int ext_hw_queue_init(struct hl_device *hdev, struct hl_hw_queue *q)
{
 return ext_and_cpu_hw_queue_init(hdev, q, 0);
}
