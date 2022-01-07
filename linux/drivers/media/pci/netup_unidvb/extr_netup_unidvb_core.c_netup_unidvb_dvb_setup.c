
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netup_unidvb_dev {int dummy; } ;


 int netup_unidvb_dvb_fini (struct netup_unidvb_dev*,int ) ;
 int netup_unidvb_dvb_init (struct netup_unidvb_dev*,int) ;

__attribute__((used)) static int netup_unidvb_dvb_setup(struct netup_unidvb_dev *ndev)
{
 int res;

 res = netup_unidvb_dvb_init(ndev, 0);
 if (res)
  return res;
 res = netup_unidvb_dvb_init(ndev, 1);
 if (res) {
  netup_unidvb_dvb_fini(ndev, 0);
  return res;
 }
 return 0;
}
