
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int mtk_mdp_dbg (int,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void mtk_mdp_check_crop_change(u32 new_w, u32 new_h, u32 *w, u32 *h)
{
 if (new_w != *w || new_h != *h) {
  mtk_mdp_dbg(1, "size change:%dx%d to %dx%d",
       *w, *h, new_w, new_h);

  *w = new_w;
  *h = new_h;
 }
}
