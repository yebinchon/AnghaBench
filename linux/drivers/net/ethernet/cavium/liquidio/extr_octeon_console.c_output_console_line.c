
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_device {int dummy; } ;
struct octeon_console {char* leftover; int (* print ) (struct octeon_device*,int ,char*,char*) ;} ;
typedef size_t s32 ;


 size_t strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int stub1 (struct octeon_device*,int ,char*,char*) ;
 int stub2 (struct octeon_device*,int ,char*,char*) ;

__attribute__((used)) static void output_console_line(struct octeon_device *oct,
    struct octeon_console *console,
    size_t console_num,
    char *console_buffer,
    s32 bytes_read)
{
 char *line;
 s32 i;
 size_t len;

 line = console_buffer;
 for (i = 0; i < bytes_read; i++) {

  if (console_buffer[i] == '\n') {
   console_buffer[i] = '\0';







   if (console->leftover[0] &&
       (line != console->leftover)) {
    if (console->print)
     (*console->print)(oct, (u32)console_num,
         console->leftover,
         line);
    console->leftover[0] = '\0';
   } else {
    if (console->print)
     (*console->print)(oct, (u32)console_num,
         line, ((void*)0));
   }
   line = &console_buffer[i + 1];
  }
 }


 if (line != &console_buffer[bytes_read]) {
  console_buffer[bytes_read] = '\0';
  len = strlen(console->leftover);
  strncpy(&console->leftover[len], line,
   sizeof(console->leftover) - len);
 }
}
