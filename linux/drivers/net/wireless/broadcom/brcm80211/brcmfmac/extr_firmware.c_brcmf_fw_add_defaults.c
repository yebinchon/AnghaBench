
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvram_parser {char* nvram; size_t nvram_len; scalar_t__ boardrev_found; } ;


 int BRCMF_FW_DEFAULT_BOARDREV ;
 int memcpy (char*,int *,scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void brcmf_fw_add_defaults(struct nvram_parser *nvp)
{
 if (nvp->boardrev_found)
  return;

 memcpy(&nvp->nvram[nvp->nvram_len], &BRCMF_FW_DEFAULT_BOARDREV,
        strlen(BRCMF_FW_DEFAULT_BOARDREV));
 nvp->nvram_len += strlen(BRCMF_FW_DEFAULT_BOARDREV);
 nvp->nvram[nvp->nvram_len] = '\0';
 nvp->nvram_len++;
}
