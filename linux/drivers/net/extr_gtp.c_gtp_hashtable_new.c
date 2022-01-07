
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct gtp_dev {int hash_size; int * addr_hash; int * tid_hash; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int kfree (int *) ;
 void* kmalloc_array (int,int,int ) ;

__attribute__((used)) static int gtp_hashtable_new(struct gtp_dev *gtp, int hsize)
{
 int i;

 gtp->addr_hash = kmalloc_array(hsize, sizeof(struct hlist_head),
           GFP_KERNEL);
 if (gtp->addr_hash == ((void*)0))
  return -ENOMEM;

 gtp->tid_hash = kmalloc_array(hsize, sizeof(struct hlist_head),
          GFP_KERNEL);
 if (gtp->tid_hash == ((void*)0))
  goto err1;

 gtp->hash_size = hsize;

 for (i = 0; i < hsize; i++) {
  INIT_HLIST_HEAD(&gtp->addr_hash[i]);
  INIT_HLIST_HEAD(&gtp->tid_hash[i]);
 }
 return 0;
err1:
 kfree(gtp->addr_hash);
 return -ENOMEM;
}
