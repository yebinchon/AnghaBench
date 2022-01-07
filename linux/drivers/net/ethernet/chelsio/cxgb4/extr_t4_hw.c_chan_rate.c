
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {unsigned int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;



__attribute__((used)) static u64 chan_rate(struct adapter *adap, unsigned int bytes256)
{
 u64 v = bytes256 * adap->params.vpd.cclk;

 return v * 62 + v / 2;
}
