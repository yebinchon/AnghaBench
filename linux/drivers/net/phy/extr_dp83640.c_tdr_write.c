
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct phy_device {int dummy; } ;


 int PAGE4 ;
 int PTP_CTL ;
 int PTP_TDR ;
 int ext_write (int,struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int tdr_write(int bc, struct phy_device *dev,
       const struct timespec64 *ts, u16 cmd)
{
 ext_write(bc, dev, PAGE4, PTP_TDR, ts->tv_nsec & 0xffff);
 ext_write(bc, dev, PAGE4, PTP_TDR, ts->tv_nsec >> 16);
 ext_write(bc, dev, PAGE4, PTP_TDR, ts->tv_sec & 0xffff);
 ext_write(bc, dev, PAGE4, PTP_TDR, ts->tv_sec >> 16);

 ext_write(bc, dev, PAGE4, PTP_CTL, cmd);

 return 0;
}
