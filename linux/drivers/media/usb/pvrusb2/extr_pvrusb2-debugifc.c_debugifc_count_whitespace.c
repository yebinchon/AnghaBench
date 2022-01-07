
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int debugifc_count_whitespace(const char *buf,
           unsigned int count)
{
 unsigned int scnt;
 char ch;

 for (scnt = 0; scnt < count; scnt++) {
  ch = buf[scnt];
  if (ch == ' ') continue;
  if (ch == '\t') continue;
  if (ch == '\n') continue;
  break;
 }
 return scnt;
}
