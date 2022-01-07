
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_chain {int entities; } ;


 int UVC_TERM_INPUT ;
 int UVC_TERM_OUTPUT ;
 int sprintf (char*,char*) ;
 int uvc_print_terms (int *,int ,char*) ;

__attribute__((used)) static const char *uvc_print_chain(struct uvc_video_chain *chain)
{
 static char buffer[43];
 char *p = buffer;

 p += uvc_print_terms(&chain->entities, UVC_TERM_INPUT, p);
 p += sprintf(p, " -> ");
 uvc_print_terms(&chain->entities, UVC_TERM_OUTPUT, p);

 return buffer;
}
