
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_endpoint_test {scalar_t__* bar; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void pci_endpoint_test_bar_writel(struct pci_endpoint_test *test,
      int bar, u32 offset, u32 value)
{
 writel(value, test->bar[bar] + offset);
}
