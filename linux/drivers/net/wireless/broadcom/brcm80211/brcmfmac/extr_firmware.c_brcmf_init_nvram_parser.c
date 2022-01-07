
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvram_parser {int line; int column; int nvram; int const* data; } ;


 size_t BRCMF_FW_MAX_NVRAM_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kzalloc (size_t,int ) ;
 int memset (struct nvram_parser*,int ,int) ;

__attribute__((used)) static int brcmf_init_nvram_parser(struct nvram_parser *nvp,
       const u8 *data, size_t data_len)
{
 size_t size;

 memset(nvp, 0, sizeof(*nvp));
 nvp->data = data;

 if (data_len > BRCMF_FW_MAX_NVRAM_SIZE)
  size = BRCMF_FW_MAX_NVRAM_SIZE;
 else
  size = data_len;

 size += 1 + 3 + sizeof(u32);
 nvp->nvram = kzalloc(size, GFP_KERNEL);
 if (!nvp->nvram)
  return -ENOMEM;

 nvp->line = 1;
 nvp->column = 1;
 return 0;
}
