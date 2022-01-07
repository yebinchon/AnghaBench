
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef void* u16 ;
struct TYPE_2__ {void** size; } ;
struct octeon_sg_entry {TYPE_1__ u; } ;



__attribute__((used)) static inline void add_sg_size(struct octeon_sg_entry *sg_entry,
          u16 size,
          u32 pos)
{



 sg_entry->u.size[3 - pos] = size;

}
