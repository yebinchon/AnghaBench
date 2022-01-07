
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {int dummy; } ;
struct mt7530_dummy_poll {int dummy; } ;


 int INIT_MT7530_DUMMY_POLL (struct mt7530_dummy_poll*,struct mt7530_priv*,int ) ;
 int _mt7530_read (struct mt7530_dummy_poll*) ;

__attribute__((used)) static u32
mt7530_read(struct mt7530_priv *priv, u32 reg)
{
 struct mt7530_dummy_poll p;

 INIT_MT7530_DUMMY_POLL(&p, priv, reg);
 return _mt7530_read(&p);
}
