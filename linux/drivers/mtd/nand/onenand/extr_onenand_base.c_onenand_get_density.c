
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ONENAND_DEVICE_DENSITY_MASK ;
 int ONENAND_DEVICE_DENSITY_SHIFT ;

__attribute__((used)) static inline int onenand_get_density(int dev_id)
{
 int density = dev_id >> ONENAND_DEVICE_DENSITY_SHIFT;
 return (density & ONENAND_DEVICE_DENSITY_MASK);
}
