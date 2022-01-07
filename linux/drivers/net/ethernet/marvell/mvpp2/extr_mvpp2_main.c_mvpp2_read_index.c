
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2 {int dummy; } ;


 int MVPP2_CTRS_IDX ;
 int mvpp2_read (struct mvpp2*,int ) ;
 int mvpp2_write (struct mvpp2*,int ,int ) ;

__attribute__((used)) static u32 mvpp2_read_index(struct mvpp2 *priv, u32 index, u32 reg)
{
 mvpp2_write(priv, MVPP2_CTRS_IDX, index);
 return mvpp2_read(priv, reg);
}
