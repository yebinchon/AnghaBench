
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct be_mcc_wrb {int embedded; } ;
struct be_adapter {int dummy; } ;


 int MCC_WRB_EMBEDDED_MASK ;
 int cpu_to_le32 (int ) ;
 scalar_t__ embedded_payload (struct be_mcc_wrb*) ;
 int fill_wrb_tags (struct be_mcc_wrb*,int ) ;
 int memcpy (struct be_mcc_wrb*,struct be_mcc_wrb*,int) ;
 scalar_t__ use_mcc (struct be_adapter*) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

__attribute__((used)) static struct be_mcc_wrb *be_cmd_copy(struct be_adapter *adapter,
          struct be_mcc_wrb *wrb)
{
 struct be_mcc_wrb *dest_wrb;

 if (use_mcc(adapter)) {
  dest_wrb = wrb_from_mccq(adapter);
  if (!dest_wrb)
   return ((void*)0);
 } else {
  dest_wrb = wrb_from_mbox(adapter);
 }

 memcpy(dest_wrb, wrb, sizeof(*wrb));
 if (wrb->embedded & cpu_to_le32(MCC_WRB_EMBEDDED_MASK))
  fill_wrb_tags(dest_wrb, (ulong) embedded_payload(wrb));

 return dest_wrb;
}
