
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct media_pad {unsigned int index; unsigned long flags; } ;


 int ENOMEM ;
 struct media_pad* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct media_pad* kcalloc (unsigned int,int,int ) ;

struct media_pad *vimc_pads_init(u16 num_pads, const unsigned long *pads_flag)
{
 struct media_pad *pads;
 unsigned int i;


 pads = kcalloc(num_pads, sizeof(*pads), GFP_KERNEL);
 if (!pads)
  return ERR_PTR(-ENOMEM);


 for (i = 0; i < num_pads; i++) {
  pads[i].index = i;
  pads[i].flags = pads_flag[i];
 }

 return pads;
}
