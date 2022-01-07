
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct page {int dummy; } ;
struct genwqe_dev {struct pci_dev* pci_dev; } ;
struct dma_mapping {unsigned long size; int nr_pages; int * u_vaddr; int * dma_list; int * page_list; int write; } ;
typedef int dma_addr_t ;


 int DIV_ROUND_UP (unsigned long,unsigned long) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int FOLL_WRITE ;
 int GFP_KERNEL ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 unsigned long ULONG_MAX ;
 int dev_err (int *,char*) ;
 int genwqe_free_user_pages (int *,int,int ) ;
 int genwqe_map_pages (struct genwqe_dev*,int *,int,int *) ;
 int get_user_pages_fast (unsigned long,int,int ,int *) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 unsigned long offset_in_page (unsigned long) ;

int genwqe_user_vmap(struct genwqe_dev *cd, struct dma_mapping *m, void *uaddr,
       unsigned long size)
{
 int rc = -EINVAL;
 unsigned long data, offs;
 struct pci_dev *pci_dev = cd->pci_dev;

 if ((uaddr == ((void*)0)) || (size == 0)) {
  m->size = 0;
  return -EINVAL;
 }
 m->u_vaddr = uaddr;
 m->size = size;


 data = (unsigned long)uaddr;
 offs = offset_in_page(data);
 if (size > ULONG_MAX - PAGE_SIZE - offs) {
  m->size = 0;
  return -EINVAL;
 }
 m->nr_pages = DIV_ROUND_UP(offs + size, PAGE_SIZE);

 m->page_list = kcalloc(m->nr_pages,
          sizeof(struct page *) + sizeof(dma_addr_t),
          GFP_KERNEL);
 if (!m->page_list) {
  dev_err(&pci_dev->dev, "err: alloc page_list failed\n");
  m->nr_pages = 0;
  m->u_vaddr = ((void*)0);
  m->size = 0;
  return -ENOMEM;
 }
 m->dma_list = (dma_addr_t *)(m->page_list + m->nr_pages);


 rc = get_user_pages_fast(data & PAGE_MASK,
     m->nr_pages,
     m->write ? FOLL_WRITE : 0,
     m->page_list);
 if (rc < 0)
  goto fail_get_user_pages;


 if (rc < m->nr_pages) {
  genwqe_free_user_pages(m->page_list, rc, m->write);
  rc = -EFAULT;
  goto fail_get_user_pages;
 }

 rc = genwqe_map_pages(cd, m->page_list, m->nr_pages, m->dma_list);
 if (rc != 0)
  goto fail_free_user_pages;

 return 0;

 fail_free_user_pages:
 genwqe_free_user_pages(m->page_list, m->nr_pages, m->write);

 fail_get_user_pages:
 kfree(m->page_list);
 m->page_list = ((void*)0);
 m->dma_list = ((void*)0);
 m->nr_pages = 0;
 m->u_vaddr = ((void*)0);
 m->size = 0;
 return rc;
}
