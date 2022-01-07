
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_dmaring {struct b43legacy_dmadesc32* descbase; struct b43legacy_dmadesc_meta* meta; } ;
struct b43legacy_dmadesc_meta {int dummy; } ;
struct b43legacy_dmadesc32 {int dummy; } ;



__attribute__((used)) static
struct b43legacy_dmadesc32 *op32_idx2desc(struct b43legacy_dmaring *ring,
       int slot,
       struct b43legacy_dmadesc_meta **meta)
{
 struct b43legacy_dmadesc32 *desc;

 *meta = &(ring->meta[slot]);
 desc = ring->descbase;
 desc = &(desc[slot]);

 return desc;
}
