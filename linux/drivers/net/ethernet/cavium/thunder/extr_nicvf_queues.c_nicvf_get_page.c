
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {scalar_t__ rb_pageref; int rb_page; } ;


 int page_ref_add (int ,scalar_t__) ;

__attribute__((used)) static void nicvf_get_page(struct nicvf *nic)
{
 if (!nic->rb_pageref || !nic->rb_page)
  return;

 page_ref_add(nic->rb_page, nic->rb_pageref);
 nic->rb_pageref = 0;
}
