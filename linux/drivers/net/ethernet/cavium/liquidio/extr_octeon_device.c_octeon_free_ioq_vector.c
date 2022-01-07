
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int ioq_vector; } ;


 int vfree (int ) ;

void
octeon_free_ioq_vector(struct octeon_device *oct)
{
 vfree(oct->ioq_vector);
}
