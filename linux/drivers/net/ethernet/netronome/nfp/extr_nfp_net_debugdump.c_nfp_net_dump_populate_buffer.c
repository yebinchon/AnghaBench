
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int dummy; } ;
struct nfp_dumpspec {int size; int data; } ;
struct nfp_dump_state {scalar_t__ dumped_size; scalar_t__ buf_size; void* p; int requested_level; } ;
struct ethtool_dump {scalar_t__ len; int flag; } ;


 int cpu_to_be32 (int ) ;
 int nfp_dump_populate_prolog (struct nfp_dump_state*) ;
 int nfp_dump_specific_level ;
 int nfp_traverse_tlvs (struct nfp_pf*,int ,int ,struct nfp_dump_state*,int ) ;

int nfp_net_dump_populate_buffer(struct nfp_pf *pf, struct nfp_dumpspec *spec,
     struct ethtool_dump *dump_param, void *dest)
{
 struct nfp_dump_state dump;
 int err;

 dump.requested_level = cpu_to_be32(dump_param->flag);
 dump.dumped_size = 0;
 dump.p = dest;
 dump.buf_size = dump_param->len;

 err = nfp_dump_populate_prolog(&dump);
 if (err)
  return err;

 err = nfp_traverse_tlvs(pf, spec->data, spec->size, &dump,
    nfp_dump_specific_level);
 if (err)
  return err;




 dump_param->len = dump.dumped_size;

 return 0;
}
