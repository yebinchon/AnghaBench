
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ican3_dev {TYPE_1__* dpmctrl; } ;
struct TYPE_2__ {int window_address; } ;


 int BUG_ON (int) ;
 unsigned int DPM_NUM_PAGES ;
 int iowrite8 (unsigned int,int *) ;

__attribute__((used)) static inline void ican3_set_page(struct ican3_dev *mod, unsigned int page)
{
 BUG_ON(page >= DPM_NUM_PAGES);
 iowrite8(page, &mod->dpmctrl->window_address);
}
