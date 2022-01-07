
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nfp_pf {int cpp; } ;
struct TYPE_3__ {int cpp_id; int dump_length; int offset; } ;
struct TYPE_4__ {int type; } ;
struct nfp_dumpspec_csr {TYPE_1__ cpp; int register_width; TYPE_2__ tl; } ;
struct nfp_dump_state {struct nfp_dump_csr* p; } ;
struct nfp_dump_csr {void* error_offset; void* error; int register_width; TYPE_1__ cpp; } ;


 int ALIGN8 (int) ;
 int BITS_PER_BYTE ;
 int EINVAL ;
 int EIO ;
 int be32_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 scalar_t__ is_xpb_read (int *) ;
 int nfp_add_tlv (int,int,struct nfp_dump_state*) ;
 int nfp_cpp_read (int ,int,int,void*,int) ;
 int nfp_csr_spec_valid (struct nfp_dumpspec_csr*) ;
 int nfp_dump_error_tlv (TYPE_2__*,int ,struct nfp_dump_state*) ;
 int nfp_get_numeric_cpp_id (int *) ;
 int nfp_xpb_readl (int ,int,int*) ;

__attribute__((used)) static int
nfp_dump_csr_range(struct nfp_pf *pf, struct nfp_dumpspec_csr *spec_csr,
     struct nfp_dump_state *dump)
{
 struct nfp_dump_csr *dump_header = dump->p;
 u32 reg_sz, header_size, total_size;
 u32 cpp_rd_addr, max_rd_addr;
 int bytes_read;
 void *dest;
 u32 cpp_id;
 int err;

 if (!nfp_csr_spec_valid(spec_csr))
  return nfp_dump_error_tlv(&spec_csr->tl, -EINVAL, dump);

 reg_sz = be32_to_cpu(spec_csr->register_width) / BITS_PER_BYTE;
 header_size = ALIGN8(sizeof(*dump_header));
 total_size = header_size +
       ALIGN8(be32_to_cpu(spec_csr->cpp.dump_length));
 dest = dump->p + header_size;

 err = nfp_add_tlv(be32_to_cpu(spec_csr->tl.type), total_size, dump);
 if (err)
  return err;

 dump_header->cpp = spec_csr->cpp;
 dump_header->register_width = spec_csr->register_width;

 cpp_id = nfp_get_numeric_cpp_id(&spec_csr->cpp.cpp_id);
 cpp_rd_addr = be32_to_cpu(spec_csr->cpp.offset);
 max_rd_addr = cpp_rd_addr + be32_to_cpu(spec_csr->cpp.dump_length);

 while (cpp_rd_addr < max_rd_addr) {
  if (is_xpb_read(&spec_csr->cpp.cpp_id)) {
   err = nfp_xpb_readl(pf->cpp, cpp_rd_addr, (u32 *)dest);
  } else {
   bytes_read = nfp_cpp_read(pf->cpp, cpp_id, cpp_rd_addr,
        dest, reg_sz);
   err = bytes_read == reg_sz ? 0 : -EIO;
  }
  if (err) {
   dump_header->error = cpu_to_be32(err);
   dump_header->error_offset = cpu_to_be32(cpp_rd_addr);
   break;
  }
  cpp_rd_addr += reg_sz;
  dest += reg_sz;
 }

 return 0;
}
