
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_upr {unsigned int type; int paddr; } ;
struct slic_device {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct slic_upr* kmalloc (int,int ) ;
 int slic_queue_upr (struct slic_device*,struct slic_upr*) ;

__attribute__((used)) static int slic_new_upr(struct slic_device *sdev, unsigned int type,
   dma_addr_t paddr)
{
 struct slic_upr *upr;

 upr = kmalloc(sizeof(*upr), GFP_ATOMIC);
 if (!upr)
  return -ENOMEM;
 upr->type = type;
 upr->paddr = paddr;

 slic_queue_upr(sdev, upr);

 return 0;
}
