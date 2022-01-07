
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_endpoint_test {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void pci_endpoint_test_writel(struct pci_endpoint_test *test,
         u32 offset, u32 value)
{
 writel(value, test->base + offset);
}
