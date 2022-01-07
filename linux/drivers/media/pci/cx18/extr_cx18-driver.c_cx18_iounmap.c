
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int * enc_mem; } ;


 int CX18_DEBUG_INFO (char*) ;
 int iounmap (int *) ;

__attribute__((used)) static void cx18_iounmap(struct cx18 *cx)
{
 if (!cx)
  return;


 if (cx->enc_mem) {
  CX18_DEBUG_INFO("releasing enc_mem\n");
  iounmap(cx->enc_mem);
  cx->enc_mem = ((void*)0);
 }
}
