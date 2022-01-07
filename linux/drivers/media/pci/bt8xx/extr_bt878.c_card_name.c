
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ driver_data; } ;



__attribute__((used)) static const char * card_name(const struct pci_device_id *id)
{
 return id->driver_data ? (const char *)id->driver_data : "Unknown";
}
