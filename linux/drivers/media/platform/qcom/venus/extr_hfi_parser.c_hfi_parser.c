
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int dummy; } ;
struct venus_core {int dummy; } ;


 int HFI_ERR_NONE ;
 int HFI_ERR_SYS_INSUFFICIENT_RESOURCES ;







 int init_codecs (struct venus_core*) ;
 int parse_alloc_mode (struct venus_core*,int,int,int*) ;
 int parse_caps (struct venus_core*,int,int,int*) ;
 int parse_codecs (struct venus_core*,int*) ;
 int parse_codecs_mask (int*,int*,int*) ;
 int parse_max_sessions (struct venus_core*,int*) ;
 int parse_profile_level (struct venus_core*,int,int,int*) ;
 int parse_raw_formats (struct venus_core*,int,int,int*) ;
 int parser_fini (struct venus_inst*,int,int) ;
 int parser_init (struct venus_inst*,int*,int*) ;

u32 hfi_parser(struct venus_core *core, struct venus_inst *inst, void *buf,
        u32 size)
{
 unsigned int words_count = size >> 2;
 u32 *word = buf, *data, codecs = 0, domain = 0;

 if (size % 4)
  return HFI_ERR_SYS_INSUFFICIENT_RESOURCES;

 parser_init(inst, &codecs, &domain);

 while (words_count) {
  data = word + 1;

  switch (*word) {
  case 131:
   parse_codecs(core, data);
   init_codecs(core);
   break;
  case 130:
   parse_max_sessions(core, data);
   break;
  case 132:
   parse_codecs_mask(&codecs, &domain, data);
   break;
  case 128:
   parse_raw_formats(core, codecs, domain, data);
   break;
  case 133:
   parse_caps(core, codecs, domain, data);
   break;
  case 129:
   parse_profile_level(core, codecs, domain, data);
   break;
  case 134:
   parse_alloc_mode(core, codecs, domain, data);
   break;
  default:
   break;
  }

  word++;
  words_count--;
 }

 parser_fini(inst, codecs, domain);

 return HFI_ERR_NONE;
}
