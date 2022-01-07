
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_scan_results {struct brcmf_bss_info_le* bss_info_le; } ;
struct brcmf_bss_info_le {int length; } ;


 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static struct brcmf_bss_info_le *
next_bss_le(struct brcmf_scan_results *list, struct brcmf_bss_info_le *bss)
{
 if (bss == ((void*)0))
  return list->bss_info_le;
 return (struct brcmf_bss_info_le *)((unsigned long)bss +
         le32_to_cpu(bss->length));
}
