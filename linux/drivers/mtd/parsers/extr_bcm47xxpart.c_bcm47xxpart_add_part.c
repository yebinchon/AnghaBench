
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u64 ;
struct mtd_partition {char const* name; int mask_flags; int offset; } ;



__attribute__((used)) static void bcm47xxpart_add_part(struct mtd_partition *part, const char *name,
     u64 offset, uint32_t mask_flags)
{
 part->name = name;
 part->offset = offset;
 part->mask_flags = mask_flags;
}
