
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvram_parser {int state; char* data; size_t pos; size_t entry; int multi_dev_v1; int multi_dev_v2; int boardrev_found; int column; int line; } ;
typedef enum nvram_parser_state { ____Placeholder_nvram_parser_state } nvram_parser_state ;


 int COMMENT ;
 int INFO ;
 int VALUE ;
 int brcmf_dbg (int ,char*,int ,int ) ;
 int is_nvram_char (char) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static enum nvram_parser_state brcmf_nvram_handle_key(struct nvram_parser *nvp)
{
 enum nvram_parser_state st = nvp->state;
 char c;

 c = nvp->data[nvp->pos];
 if (c == '=') {

  if (strncmp(&nvp->data[nvp->entry], "RAW1", 4) == 0)
   st = COMMENT;
  else
   st = VALUE;
  if (strncmp(&nvp->data[nvp->entry], "devpath", 7) == 0)
   nvp->multi_dev_v1 = 1;
  if (strncmp(&nvp->data[nvp->entry], "pcie/", 5) == 0)
   nvp->multi_dev_v2 = 1;
  if (strncmp(&nvp->data[nvp->entry], "boardrev", 8) == 0)
   nvp->boardrev_found = 1;
 } else if (!is_nvram_char(c) || c == ' ') {
  brcmf_dbg(INFO, "warning: ln=%d:col=%d: '=' expected, skip invalid key entry\n",
     nvp->line, nvp->column);
  return COMMENT;
 }

 nvp->column++;
 nvp->pos++;
 return st;
}
