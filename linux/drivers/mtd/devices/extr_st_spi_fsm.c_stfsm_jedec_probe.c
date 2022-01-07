
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct stfsm {int dev; } ;
struct flash_info {int jedec_id; int ext_id; scalar_t__ name; } ;


 int dev_dbg (int ,char*,int,int*) ;
 int dev_err (int ,char*,int) ;
 struct flash_info* flash_types ;
 int stfsm_read_jedec (struct stfsm*,int*) ;

__attribute__((used)) static struct flash_info *stfsm_jedec_probe(struct stfsm *fsm)
{
 struct flash_info *info;
 u16 ext_jedec;
 u32 jedec;
 u8 id[5];

 stfsm_read_jedec(fsm, id);

 jedec = id[0] << 16 | id[1] << 8 | id[2];





 ext_jedec = id[3] << 8 | id[4];

 dev_dbg(fsm->dev, "JEDEC =  0x%08x [%5ph]\n", jedec, id);

 for (info = flash_types; info->name; info++) {
  if (info->jedec_id == jedec) {
   if (info->ext_id && info->ext_id != ext_jedec)
    continue;
   return info;
  }
 }
 dev_err(fsm->dev, "Unrecognized JEDEC id %06x\n", jedec);

 return ((void*)0);
}
