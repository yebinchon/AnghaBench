
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfp_pf {unsigned int num_shared_bufs; TYPE_1__* shared_bufs; } ;
typedef scalar_t__ __le32 ;
struct TYPE_2__ {scalar_t__ id; int pool_size_unit; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ cpu_to_le32 (unsigned int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 nfp_shared_buf_pool_unit(struct nfp_pf *pf, unsigned int sb)
{
 __le32 sb_id = cpu_to_le32(sb);
 unsigned int i;

 for (i = 0; i < pf->num_shared_bufs; i++)
  if (pf->shared_bufs[i].id == sb_id)
   return le32_to_cpu(pf->shared_bufs[i].pool_size_unit);

 WARN_ON_ONCE(1);
 return 0;
}
