
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mal_instance {int dcr_host; } ;


 int dcr_write (int ,int,int ) ;

__attribute__((used)) static inline void set_mal_dcrn(struct mal_instance *mal, int reg, u32 val)
{
 dcr_write(mal->dcr_host, reg, val);
}
