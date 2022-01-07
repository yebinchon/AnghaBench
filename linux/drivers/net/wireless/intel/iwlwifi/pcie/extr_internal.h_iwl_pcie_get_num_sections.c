
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_img {int num_sec; TYPE_1__* sec; } ;
struct TYPE_2__ {scalar_t__ offset; } ;


 scalar_t__ CPU1_CPU2_SEPARATOR_SECTION ;
 scalar_t__ PAGING_SEPARATOR_SECTION ;

__attribute__((used)) static inline int iwl_pcie_get_num_sections(const struct fw_img *fw,
         int start)
{
 int i = 0;

 while (start < fw->num_sec &&
        fw->sec[start].offset != CPU1_CPU2_SEPARATOR_SECTION &&
        fw->sec[start].offset != PAGING_SEPARATOR_SECTION) {
  start++;
  i++;
 }

 return i;
}
