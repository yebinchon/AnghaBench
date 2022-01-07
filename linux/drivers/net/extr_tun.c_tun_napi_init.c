
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int dev; } ;
struct tun_file {int napi_enabled; int napi_frags_enabled; int napi; } ;


 int NAPI_POLL_WEIGHT ;
 int napi_enable (int *) ;
 int netif_napi_add (int ,int *,int ,int ) ;
 int tun_napi_poll ;

__attribute__((used)) static void tun_napi_init(struct tun_struct *tun, struct tun_file *tfile,
     bool napi_en, bool napi_frags)
{
 tfile->napi_enabled = napi_en;
 tfile->napi_frags_enabled = napi_en && napi_frags;
 if (napi_en) {
  netif_napi_add(tun->dev, &tfile->napi, tun_napi_poll,
          NAPI_POLL_WEIGHT);
  napi_enable(&tfile->napi);
 }
}
