
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpeg_video_decode_init_params_t {int circular_buffer_begin_addr_p; int circular_buffer_end_addr_p; } ;


 int snprintf (char*,unsigned int,char*,int,int) ;

__attribute__((used)) static char *ipc_open_param_str(struct jpeg_video_decode_init_params_t *p,
    char *str, unsigned int len)
{
 char *b = str;

 if (!p)
  return "";

 b += snprintf(b, len,
        "jpeg_video_decode_init_params_t\n"
        "circular_buffer_begin_addr_p 0x%x\n"
        "circular_buffer_end_addr_p   0x%x\n",
        p->circular_buffer_begin_addr_p,
        p->circular_buffer_end_addr_p);

 return str;
}
