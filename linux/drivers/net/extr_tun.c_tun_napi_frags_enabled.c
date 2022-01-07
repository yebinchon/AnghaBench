
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_file {int napi_frags_enabled; } ;



__attribute__((used)) static bool tun_napi_frags_enabled(const struct tun_file *tfile)
{
 return tfile->napi_frags_enabled;
}
