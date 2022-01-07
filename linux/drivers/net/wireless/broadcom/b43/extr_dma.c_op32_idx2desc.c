
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_dmaring {struct b43_dmadesc32* descbase; struct b43_dmadesc_meta* meta; } ;
struct b43_dmadesc_meta {int dummy; } ;
struct b43_dmadesc_generic {int dummy; } ;
struct b43_dmadesc32 {int dummy; } ;



__attribute__((used)) static
struct b43_dmadesc_generic *op32_idx2desc(struct b43_dmaring *ring,
       int slot,
       struct b43_dmadesc_meta **meta)
{
 struct b43_dmadesc32 *desc;

 *meta = &(ring->meta[slot]);
 desc = ring->descbase;
 desc = &(desc[slot]);

 return (struct b43_dmadesc_generic *)desc;
}
