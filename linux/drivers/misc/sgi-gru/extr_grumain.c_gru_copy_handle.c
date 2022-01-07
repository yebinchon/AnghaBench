
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long GRU_HANDLE_BYTES ;
 int memcpy (void*,void*,long) ;

__attribute__((used)) static inline long gru_copy_handle(void *d, void *s)
{
 memcpy(d, s, GRU_HANDLE_BYTES);
 return GRU_HANDLE_BYTES;
}
