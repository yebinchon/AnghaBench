
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct octeon_device {scalar_t__ num_iqs; scalar_t__ num_oqs; } ;


 int cn23xx_vf_reset_io_queues (struct octeon_device*,scalar_t__) ;

__attribute__((used)) static void cn23xx_disable_vf_io_queues(struct octeon_device *oct)
{
 u32 num_queues = oct->num_iqs;




 if (num_queues < oct->num_oqs)
  num_queues = oct->num_oqs;

 cn23xx_vf_reset_io_queues(oct, num_queues);
}
