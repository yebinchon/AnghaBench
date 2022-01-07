
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int * enc_mem; int * dec_mem; scalar_t__ has_cx23415; int * reg_mem; } ;


 int IVTV_DEBUG_INFO (char*) ;
 int iounmap (int *) ;

__attribute__((used)) static void ivtv_iounmap(struct ivtv *itv)
{
 if (itv == ((void*)0))
  return;


 if (itv->reg_mem != ((void*)0)) {
  IVTV_DEBUG_INFO("releasing reg_mem\n");
  iounmap(itv->reg_mem);
  itv->reg_mem = ((void*)0);
 }

 if (itv->has_cx23415 && itv->dec_mem != ((void*)0)) {
  IVTV_DEBUG_INFO("releasing dec_mem\n");
  iounmap(itv->dec_mem);
 }
 itv->dec_mem = ((void*)0);


 if (itv->enc_mem != ((void*)0)) {
  IVTV_DEBUG_INFO("releasing enc_mem\n");
  iounmap(itv->enc_mem);
  itv->enc_mem = ((void*)0);
 }
}
