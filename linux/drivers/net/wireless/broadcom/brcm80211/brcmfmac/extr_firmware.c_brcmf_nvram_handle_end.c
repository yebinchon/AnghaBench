
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvram_parser {int dummy; } ;
typedef enum nvram_parser_state { ____Placeholder_nvram_parser_state } nvram_parser_state ;


 int END ;

__attribute__((used)) static enum nvram_parser_state brcmf_nvram_handle_end(struct nvram_parser *nvp)
{

 return END;
}
