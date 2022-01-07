
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int acpi_string ;


 int ENOENT ;
 void* ERR_PTR (int ) ;

__attribute__((used)) static inline void *iwl_acpi_get_object(struct device *dev, acpi_string method)
{
 return ERR_PTR(-ENOENT);
}
