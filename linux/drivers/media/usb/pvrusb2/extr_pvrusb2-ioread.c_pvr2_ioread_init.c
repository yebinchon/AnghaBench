
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ioread {int * buffer_storage; int mutex; int * stream; } ;


 unsigned int BUFFER_COUNT ;
 int BUFFER_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int pvr2_ioread_init(struct pvr2_ioread *cp)
{
 unsigned int idx;

 cp->stream = ((void*)0);
 mutex_init(&cp->mutex);

 for (idx = 0; idx < BUFFER_COUNT; idx++) {
  cp->buffer_storage[idx] = kmalloc(BUFFER_SIZE,GFP_KERNEL);
  if (!(cp->buffer_storage[idx])) break;
 }

 if (idx < BUFFER_COUNT) {

  for (idx = 0; idx < BUFFER_COUNT; idx++) {
   if (!(cp->buffer_storage[idx])) continue;
   kfree(cp->buffer_storage[idx]);
  }
  return -ENOMEM;
 }
 return 0;
}
