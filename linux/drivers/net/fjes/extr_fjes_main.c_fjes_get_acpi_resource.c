
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {scalar_t__ end; scalar_t__ start; } ;
struct acpi_resource_irq {int interrupt_count; scalar_t__* interrupts; } ;
struct TYPE_3__ {scalar_t__ address_length; scalar_t__ minimum; } ;
struct acpi_resource_address32 {TYPE_1__ address; } ;
struct TYPE_4__ {struct acpi_resource_irq irq; struct acpi_resource_address32 address32; } ;
struct acpi_resource {int type; TYPE_2__ data; } ;
typedef int acpi_status ;




 int AE_ERROR ;
 int AE_OK ;

__attribute__((used)) static acpi_status
fjes_get_acpi_resource(struct acpi_resource *acpi_res, void *data)
{
 struct acpi_resource_address32 *addr;
 struct acpi_resource_irq *irq;
 struct resource *res = data;

 switch (acpi_res->type) {
 case 129:
  addr = &acpi_res->data.address32;
  res[0].start = addr->address.minimum;
  res[0].end = addr->address.minimum +
   addr->address.address_length - 1;
  break;

 case 128:
  irq = &acpi_res->data.irq;
  if (irq->interrupt_count != 1)
   return AE_ERROR;
  res[1].start = irq->interrupts[0];
  res[1].end = irq->interrupts[0];
  break;

 default:
  break;
 }

 return AE_OK;
}
