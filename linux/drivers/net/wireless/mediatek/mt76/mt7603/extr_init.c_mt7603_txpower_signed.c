
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int GENMASK (int,int ) ;

__attribute__((used)) static int
mt7603_txpower_signed(int val)
{
 bool sign = val & BIT(6);

 if (!(val & BIT(7)))
  return 0;

 val &= GENMASK(5, 0);
 if (!sign)
  val = -val;

 return val;
}
