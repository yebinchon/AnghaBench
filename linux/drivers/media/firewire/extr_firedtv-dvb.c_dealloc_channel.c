
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int channel_active; } ;


 int __clear_bit (int,int *) ;

__attribute__((used)) static inline void dealloc_channel(struct firedtv *fdtv, int i)
{
 __clear_bit(i, &fdtv->channel_active);
}
