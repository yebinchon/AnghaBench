
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvram_parser {char* data; size_t pos; size_t entry; int column; int line; } ;
typedef enum nvram_parser_state { ____Placeholder_nvram_parser_state } nvram_parser_state ;


 int COMMENT ;
 int IDLE ;
 int INFO ;
 int KEY ;
 int brcmf_dbg (int ,char*,int ,int ) ;
 scalar_t__ is_nvram_char (char) ;
 scalar_t__ is_whitespace (char) ;

__attribute__((used)) static enum nvram_parser_state brcmf_nvram_handle_idle(struct nvram_parser *nvp)
{
 char c;

 c = nvp->data[nvp->pos];
 if (c == '\n')
  return COMMENT;
 if (is_whitespace(c) || c == '\0')
  goto proceed;
 if (c == '#')
  return COMMENT;
 if (is_nvram_char(c)) {
  nvp->entry = nvp->pos;
  return KEY;
 }
 brcmf_dbg(INFO, "warning: ln=%d:col=%d: ignoring invalid character\n",
    nvp->line, nvp->column);
proceed:
 nvp->column++;
 nvp->pos++;
 return IDLE;
}
