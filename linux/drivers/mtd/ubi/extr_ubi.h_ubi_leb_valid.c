
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {int reserved_pebs; } ;



__attribute__((used)) static inline bool ubi_leb_valid(struct ubi_volume *vol, int lnum)
{
 return lnum >= 0 && lnum < vol->reserved_pebs;
}
