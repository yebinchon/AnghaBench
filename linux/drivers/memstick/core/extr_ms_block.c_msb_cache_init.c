
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {scalar_t__ cache; int block_size; int cache_flush_timer; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kzalloc (int ,int ) ;
 int msb_cache_discard (struct msb_data*) ;
 int msb_cache_flush_timer ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int msb_cache_init(struct msb_data *msb)
{
 timer_setup(&msb->cache_flush_timer, msb_cache_flush_timer, 0);

 if (!msb->cache)
  msb->cache = kzalloc(msb->block_size, GFP_KERNEL);
 if (!msb->cache)
  return -ENOMEM;

 msb_cache_discard(msb);
 return 0;
}
