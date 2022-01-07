
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {scalar_t__ avail; scalar_t__ pend_cred; } ;
struct sge {scalar_t__ fl_starve_thres; } ;
struct adapter {struct sge sge; } ;



__attribute__((used)) static inline bool fl_starving(const struct adapter *adapter,
          const struct sge_fl *fl)
{
 const struct sge *s = &adapter->sge;

 return fl->avail - fl->pend_cred <= s->fl_starve_thres;
}
