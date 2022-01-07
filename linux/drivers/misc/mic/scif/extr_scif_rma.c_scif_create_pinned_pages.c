
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_pinned_pages {int prot; int magic; void* pages; } ;


 int SCIFEP_MAGIC ;
 int might_sleep () ;
 int scif_free (struct scif_pinned_pages*,int) ;
 void* scif_zalloc (int) ;

__attribute__((used)) static struct scif_pinned_pages *
scif_create_pinned_pages(int nr_pages, int prot)
{
 struct scif_pinned_pages *pin;

 might_sleep();
 pin = scif_zalloc(sizeof(*pin));
 if (!pin)
  goto error;

 pin->pages = scif_zalloc(nr_pages * sizeof(*pin->pages));
 if (!pin->pages)
  goto error_free_pinned_pages;

 pin->prot = prot;
 pin->magic = SCIFEP_MAGIC;
 return pin;

error_free_pinned_pages:
 scif_free(pin, sizeof(*pin));
error:
 return ((void*)0);
}
