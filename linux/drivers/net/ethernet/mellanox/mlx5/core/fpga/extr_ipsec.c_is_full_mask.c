
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (size_t) ;
 int memchr_inv (void const*,int,size_t) ;

__attribute__((used)) static bool is_full_mask(const void *p, size_t len)
{
 WARN_ON(len % 4);

 return !memchr_inv(p, 0xff, len);
}
