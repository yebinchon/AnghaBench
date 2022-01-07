
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct epbuf_handler {int * ring; int * info; scalar_t__ size; int * buffer; } ;


 int vfree (int *) ;

__attribute__((used)) static void fjes_hw_free_epbuf(struct epbuf_handler *epbh)
{
 vfree(epbh->buffer);
 epbh->buffer = ((void*)0);
 epbh->size = 0;

 epbh->info = ((void*)0);
 epbh->ring = ((void*)0);
}
