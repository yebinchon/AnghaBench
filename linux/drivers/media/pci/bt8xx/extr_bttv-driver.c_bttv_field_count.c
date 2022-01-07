
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {scalar_t__ field_count; scalar_t__ users; } ;


 int BT848_INT_MASK ;
 int BT848_INT_VSYNC ;
 int btand (int ,int ) ;
 int btor (int ,int ) ;

__attribute__((used)) static void bttv_field_count(struct bttv *btv)
{
 int need_count = 0;

 if (btv->users)
  need_count++;

 if (need_count) {

  btor(BT848_INT_VSYNC,BT848_INT_MASK);
 } else {

  btand(~BT848_INT_VSYNC,BT848_INT_MASK);
  btv->field_count = 0;
 }
}
