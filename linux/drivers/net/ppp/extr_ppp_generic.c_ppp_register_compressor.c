
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressor_entry {int list; struct compressor* comp; } ;
struct compressor {int compress_proto; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int compressor_list ;
 int compressor_list_lock ;
 scalar_t__ find_comp_entry (int ) ;
 struct compressor_entry* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
ppp_register_compressor(struct compressor *cp)
{
 struct compressor_entry *ce;
 int ret;
 spin_lock(&compressor_list_lock);
 ret = -EEXIST;
 if (find_comp_entry(cp->compress_proto))
  goto out;
 ret = -ENOMEM;
 ce = kmalloc(sizeof(struct compressor_entry), GFP_ATOMIC);
 if (!ce)
  goto out;
 ret = 0;
 ce->comp = cp;
 list_add(&ce->list, &compressor_list);
 out:
 spin_unlock(&compressor_list_lock);
 return ret;
}
