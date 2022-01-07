
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfp_pf {int mip; } ;
struct nfp_dump_tl {int data; } ;
struct nfp_dump_state {struct nfp_dump_tl* p; } ;


 scalar_t__ ALIGN8 (scalar_t__) ;
 int NFP_DUMPSPEC_TYPE_FWNAME ;
 int memcpy (int ,char const*,scalar_t__) ;
 int nfp_add_tlv (int ,scalar_t__,struct nfp_dump_state*) ;
 char* nfp_mip_name (int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int nfp_dump_fwname(struct nfp_pf *pf, struct nfp_dump_state *dump)
{
 struct nfp_dump_tl *dump_header = dump->p;
 u32 fwname_len, total_size;
 const char *fwname;
 int err;

 fwname = nfp_mip_name(pf->mip);
 fwname_len = strlen(fwname);
 total_size = sizeof(*dump_header) + ALIGN8(fwname_len + 1);

 err = nfp_add_tlv(NFP_DUMPSPEC_TYPE_FWNAME, total_size, dump);
 if (err)
  return err;

 memcpy(dump_header->data, fwname, fwname_len);

 return 0;
}
