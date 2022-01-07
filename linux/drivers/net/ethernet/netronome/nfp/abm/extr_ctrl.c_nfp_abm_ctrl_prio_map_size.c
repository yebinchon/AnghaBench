
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_abm {unsigned int num_prios; int num_bands; } ;


 int BITS_PER_BYTE ;
 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int order_base_2 (int ) ;
 unsigned int round_up (unsigned int,int) ;
 unsigned int roundup_pow_of_two (int ) ;

__attribute__((used)) static unsigned int nfp_abm_ctrl_prio_map_size(struct nfp_abm *abm)
{
 unsigned int size;

 size = roundup_pow_of_two(order_base_2(abm->num_bands));
 size = DIV_ROUND_UP(size * abm->num_prios, BITS_PER_BYTE);
 size = round_up(size, sizeof(u32));

 return size;
}
