
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cont_thread_id ;
 int kgdb_hex2long (char**,int *) ;

__attribute__((used)) static int get_thread_id_continue(char *put_str, char *arg)
{
 char *ptr = &put_str[11];

 if (put_str[1] != 'T' || put_str[2] != '0')
  return 1;
 kgdb_hex2long(&ptr, &cont_thread_id);
 return 0;
}
