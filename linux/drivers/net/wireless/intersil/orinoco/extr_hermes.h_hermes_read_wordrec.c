
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hermes {int dummy; } ;
typedef int __le16 ;


 int HERMES_READ_RECORD (struct hermes*,int,int ,int *) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int hermes_read_wordrec(struct hermes *hw, int bap, u16 rid,
          u16 *word)
{
 __le16 rec;
 int err;

 err = HERMES_READ_RECORD(hw, bap, rid, &rec);
 *word = le16_to_cpu(rec);
 return err;
}
