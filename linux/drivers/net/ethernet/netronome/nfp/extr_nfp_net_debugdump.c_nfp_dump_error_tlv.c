
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfp_dump_tl {int length; } ;
struct nfp_dump_state {struct nfp_dump_error* p; } ;
struct nfp_dump_error {int spec; int error; } ;


 scalar_t__ ALIGN8 (scalar_t__) ;
 int NFP_DUMPSPEC_TYPE_ERROR ;
 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int memcpy (int ,struct nfp_dump_tl*,scalar_t__) ;
 int nfp_add_tlv (int ,scalar_t__,struct nfp_dump_state*) ;

__attribute__((used)) static int
nfp_dump_error_tlv(struct nfp_dump_tl *spec, int error,
     struct nfp_dump_state *dump)
{
 struct nfp_dump_error *dump_header = dump->p;
 u32 total_spec_size, total_size;
 int err;

 total_spec_size = sizeof(*spec) + be32_to_cpu(spec->length);
 total_size = ALIGN8(sizeof(*dump_header) + total_spec_size);

 err = nfp_add_tlv(NFP_DUMPSPEC_TYPE_ERROR, total_size, dump);
 if (err)
  return err;

 dump_header->error = cpu_to_be32(error);
 memcpy(dump_header->spec, spec, total_spec_size);

 return 0;
}
