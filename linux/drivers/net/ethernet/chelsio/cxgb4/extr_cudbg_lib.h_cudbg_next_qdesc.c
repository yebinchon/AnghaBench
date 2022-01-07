
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cudbg_qdesc_entry {int data_size; } ;



__attribute__((used)) static inline
struct cudbg_qdesc_entry *cudbg_next_qdesc(struct cudbg_qdesc_entry *e)
{
 return (struct cudbg_qdesc_entry *)
        ((u8 *)e + sizeof(*e) + e->data_size);
}
