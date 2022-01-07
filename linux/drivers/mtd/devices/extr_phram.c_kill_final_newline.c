
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

__attribute__((used)) static inline void kill_final_newline(char *str)
{
 char *newline = strrchr(str, '\n');

 if (newline && !newline[1])
  *newline = 0;
}
