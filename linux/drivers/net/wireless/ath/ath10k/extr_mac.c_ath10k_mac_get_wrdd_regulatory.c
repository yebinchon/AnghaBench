
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ath10k {int dev; } ;
struct acpi_buffer {int pointer; int * member_1; int member_0; } ;
typedef int acpi_string ;
typedef char* acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (char*) ;
 int ACPI_HANDLE (int ) ;
 int ATH10K_DBG_BOOT ;
 int COUNTRY_ERD_FLAG ;
 int EIO ;
 int EOPNOTSUPP ;
 scalar_t__ WRD_METHOD ;
 char* acpi_evaluate_object (int ,int *,int *,struct acpi_buffer*) ;
 char* acpi_get_handle (int ,int ,int *) ;
 int ath10k_dbg (struct ath10k*,int ,char*,char*) ;
 int ath10k_mac_wrdd_get_mcc (struct ath10k*,int ) ;
 int ath_regd_find_country_by_name (char*) ;
 int kfree (int ) ;

__attribute__((used)) static int ath10k_mac_get_wrdd_regulatory(struct ath10k *ar, u16 *rd)
{
 acpi_handle root_handle;
 acpi_handle handle;
 struct acpi_buffer wrdd = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 acpi_status status;
 u32 alpha2_code;
 char alpha2[3];

 root_handle = ACPI_HANDLE(ar->dev);
 if (!root_handle)
  return -EOPNOTSUPP;

 status = acpi_get_handle(root_handle, (acpi_string)WRD_METHOD, &handle);
 if (ACPI_FAILURE(status)) {
  ath10k_dbg(ar, ATH10K_DBG_BOOT,
      "failed to get wrd method %d\n", status);
  return -EIO;
 }

 status = acpi_evaluate_object(handle, ((void*)0), ((void*)0), &wrdd);
 if (ACPI_FAILURE(status)) {
  ath10k_dbg(ar, ATH10K_DBG_BOOT,
      "failed to call wrdc %d\n", status);
  return -EIO;
 }

 alpha2_code = ath10k_mac_wrdd_get_mcc(ar, wrdd.pointer);
 kfree(wrdd.pointer);
 if (!alpha2_code)
  return -EIO;

 alpha2[0] = (alpha2_code >> 8) & 0xff;
 alpha2[1] = (alpha2_code >> 0) & 0xff;
 alpha2[2] = '\0';

 ath10k_dbg(ar, ATH10K_DBG_BOOT,
     "regulatory hint from WRDD (alpha2-code): %s\n", alpha2);

 *rd = ath_regd_find_country_by_name(alpha2);
 if (*rd == 0xffff)
  return -EIO;

 *rd |= COUNTRY_ERD_FLAG;
 return 0;
}
