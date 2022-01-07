
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ data; } ;
struct il_ucode_header {TYPE_1__ v1; } ;



__attribute__((used)) static u8 *
il3945_ucode_get_data(const struct il_ucode_header *ucode)
{
 return (u8 *) ucode->v1.data;
}
