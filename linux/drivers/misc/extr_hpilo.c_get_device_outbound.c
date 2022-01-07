
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilo_hwinfo {int * mmio_vaddr; } ;


 size_t DB_OUT ;
 int ioread32 (int *) ;

__attribute__((used)) static inline int get_device_outbound(struct ilo_hwinfo *hw)
{
 return ioread32(&hw->mmio_vaddr[DB_OUT]);
}
