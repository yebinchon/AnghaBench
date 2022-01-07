
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pno_info {int req_lock; } ;
struct brcmf_cfg80211_info {struct brcmf_pno_info* pno; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TRACE ;
 int brcmf_dbg (int ,char*) ;
 struct brcmf_pno_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;

int brcmf_pno_attach(struct brcmf_cfg80211_info *cfg)
{
 struct brcmf_pno_info *pi;

 brcmf_dbg(TRACE, "enter\n");
 pi = kzalloc(sizeof(*pi), GFP_KERNEL);
 if (!pi)
  return -ENOMEM;

 cfg->pno = pi;
 mutex_init(&pi->req_lock);
 return 0;
}
