
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rocker {TYPE_1__* msix_entries; } ;
struct TYPE_2__ {int vector; } ;



__attribute__((used)) static u32 rocker_msix_vector(const struct rocker *rocker, unsigned int vector)
{
 return rocker->msix_entries[vector].vector;
}
