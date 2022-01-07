
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvram_parser {size_t pos; int column; int line; int * data; } ;
typedef enum nvram_parser_state { ____Placeholder_nvram_parser_state } nvram_parser_state ;


 int END ;
 int IDLE ;
 char* strchr (char*,char) ;

__attribute__((used)) static enum nvram_parser_state
brcmf_nvram_handle_comment(struct nvram_parser *nvp)
{
 char *eoc, *sol;

 sol = (char *)&nvp->data[nvp->pos];
 eoc = strchr(sol, '\n');
 if (!eoc) {
  eoc = strchr(sol, '\0');
  if (!eoc)
   return END;
 }


 nvp->line++;
 nvp->column = 1;
 nvp->pos += (eoc - sol) + 1;
 return IDLE;
}
