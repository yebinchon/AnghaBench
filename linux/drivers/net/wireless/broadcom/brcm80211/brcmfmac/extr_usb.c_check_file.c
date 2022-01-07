
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct trx_header_le {scalar_t__ magic; int * offsets; int flag_version; } ;


 int TRX_MAGIC ;
 size_t TRX_OFFSETS_DLFWLEN_IDX ;
 int TRX_UNCOMP_IMAGE ;
 int USB ;
 int brcmf_dbg (int ,char*) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int check_file(const u8 *headers)
{
 struct trx_header_le *trx;
 int actual_len = -1;

 brcmf_dbg(USB, "Enter\n");

 trx = (struct trx_header_le *) headers;
 if (trx->magic != cpu_to_le32(TRX_MAGIC))
  return -1;

 headers += sizeof(struct trx_header_le);

 if (le32_to_cpu(trx->flag_version) & TRX_UNCOMP_IMAGE) {
  actual_len = le32_to_cpu(trx->offsets[TRX_OFFSETS_DLFWLEN_IDX]);
  return actual_len + sizeof(struct trx_header_le);
 }
 return -1;
}
