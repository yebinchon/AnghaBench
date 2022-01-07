
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ EHEA_AER_RESTYPE_CQ ;
 scalar_t__ EHEA_AER_RESTYPE_EQ ;
 scalar_t__ EHEA_AER_RESTYPE_QP ;
 void* EHEA_BMASK_GET (int ,scalar_t__) ;
 int EHEA_PAGESIZE ;
 int ERROR_DATA_LENGTH ;
 int ERROR_DATA_TYPE ;
 int ehea_dump (scalar_t__*,int,char*) ;
 int pr_err (char*,scalar_t__,scalar_t__,...) ;

__attribute__((used)) static void print_error_data(u64 *data)
{
 int length;
 u64 type = EHEA_BMASK_GET(ERROR_DATA_TYPE, data[2]);
 u64 resource = data[1];

 length = EHEA_BMASK_GET(ERROR_DATA_LENGTH, data[0]);

 if (length > EHEA_PAGESIZE)
  length = EHEA_PAGESIZE;

 if (type == EHEA_AER_RESTYPE_QP)
  pr_err("QP (resource=%llX) state: AER=0x%llX, AERR=0x%llX, port=%llX\n",
         resource, data[6], data[12], data[22]);
 else if (type == EHEA_AER_RESTYPE_CQ)
  pr_err("CQ (resource=%llX) state: AER=0x%llX\n",
         resource, data[6]);
 else if (type == EHEA_AER_RESTYPE_EQ)
  pr_err("EQ (resource=%llX) state: AER=0x%llX\n",
         resource, data[6]);

 ehea_dump(data, length, "error data");
}
