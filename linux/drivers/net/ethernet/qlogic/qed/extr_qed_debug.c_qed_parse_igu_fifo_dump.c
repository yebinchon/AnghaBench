
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct igu_fifo_element {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int DBG_STATUS_IGU_FIFO_BAD_DATA ;
 int DBG_STATUS_OK ;
 int IGU_FIFO_ELEMENT_DWORDS ;
 int qed_get_buf_ptr (char*,int) ;
 int qed_parse_igu_fifo_element (struct igu_fifo_element*,char*,int*) ;
 int qed_print_section_params (int*,int,char*,int*) ;
 int qed_read_param (int*,char const**,char const**,int*) ;
 int qed_read_section_hdr (int*,char const**,int*) ;
 int sprintf (int ,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static enum dbg_status qed_parse_igu_fifo_dump(u32 *dump_buf,
            char *results_buf,
            u32 *parsed_results_bytes)
{
 const char *section_name, *param_name, *param_str_val;
 u32 param_num_val, num_section_params, num_elements;
 struct igu_fifo_element *elements;
 enum dbg_status status;
 u32 results_offset = 0;
 u8 i;


 dump_buf += qed_read_section_hdr(dump_buf,
      &section_name, &num_section_params);
 if (strcmp(section_name, "global_params"))
  return DBG_STATUS_IGU_FIFO_BAD_DATA;


 dump_buf += qed_print_section_params(dump_buf,
          num_section_params,
          results_buf, &results_offset);


 dump_buf += qed_read_section_hdr(dump_buf,
      &section_name, &num_section_params);
 if (strcmp(section_name, "igu_fifo_data"))
  return DBG_STATUS_IGU_FIFO_BAD_DATA;
 dump_buf += qed_read_param(dump_buf,
       &param_name, &param_str_val, &param_num_val);
 if (strcmp(param_name, "size"))
  return DBG_STATUS_IGU_FIFO_BAD_DATA;
 if (param_num_val % IGU_FIFO_ELEMENT_DWORDS)
  return DBG_STATUS_IGU_FIFO_BAD_DATA;
 num_elements = param_num_val / IGU_FIFO_ELEMENT_DWORDS;
 elements = (struct igu_fifo_element *)dump_buf;


 for (i = 0; i < num_elements; i++) {
  status = qed_parse_igu_fifo_element(&elements[i],
          results_buf,
          &results_offset);
  if (status != DBG_STATUS_OK)
   return status;
 }

 results_offset += sprintf(qed_get_buf_ptr(results_buf,
        results_offset),
      "fifo contained %d elements", num_elements);


 *parsed_results_bytes = results_offset + 1;

 return DBG_STATUS_OK;
}
