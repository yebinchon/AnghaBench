
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vio_dring_state {scalar_t__ cons; scalar_t__ prod; } ;


 scalar_t__ vio_dring_next (struct vio_dring_state*,scalar_t__) ;

__attribute__((used)) static int idx_is_pending(struct vio_dring_state *dr, u32 end)
{
 u32 idx = dr->cons;
 int found = 0;

 while (idx != dr->prod) {
  if (idx == end) {
   found = 1;
   break;
  }
  idx = vio_dring_next(dr, idx);
 }
 return found;
}
