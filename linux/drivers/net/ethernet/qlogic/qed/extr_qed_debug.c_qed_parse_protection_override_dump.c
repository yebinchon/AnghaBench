
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct protection_override_element {int data; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int DBG_STATUS_OK ;
 int DBG_STATUS_PROTECTION_OVERRIDE_BAD_DATA ;
 size_t GET_FIELD (int ,int ) ;
 int PROTECTION_OVERRIDE_ELEMENT_ADDRESS ;
 size_t PROTECTION_OVERRIDE_ELEMENT_ADDR_FACTOR ;
 int PROTECTION_OVERRIDE_ELEMENT_DWORDS ;
 int PROTECTION_OVERRIDE_ELEMENT_READ ;
 int PROTECTION_OVERRIDE_ELEMENT_READ_PROTECTION ;
 int PROTECTION_OVERRIDE_ELEMENT_WINDOW_SIZE ;
 int PROTECTION_OVERRIDE_ELEMENT_WRITE ;
 int PROTECTION_OVERRIDE_ELEMENT_WRITE_PROTECTION ;
 int qed_get_buf_ptr (char*,int) ;
 int qed_print_section_params (int*,int,char*,int*) ;
 int qed_read_param (int*,char const**,char const**,int*) ;
 int qed_read_section_hdr (int*,char const**,int*) ;
 char** s_protection_strs ;
 int sprintf (int ,char*,int,...) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static enum dbg_status
qed_parse_protection_override_dump(u32 *dump_buf,
       char *results_buf,
       u32 *parsed_results_bytes)
{
 const char *section_name, *param_name, *param_str_val;
 u32 param_num_val, num_section_params, num_elements;
 struct protection_override_element *elements;
 u32 results_offset = 0;
 u8 i;


 dump_buf += qed_read_section_hdr(dump_buf,
      &section_name, &num_section_params);
 if (strcmp(section_name, "global_params"))
  return DBG_STATUS_PROTECTION_OVERRIDE_BAD_DATA;


 dump_buf += qed_print_section_params(dump_buf,
          num_section_params,
          results_buf, &results_offset);


 dump_buf += qed_read_section_hdr(dump_buf,
      &section_name, &num_section_params);
 if (strcmp(section_name, "protection_override_data"))
  return DBG_STATUS_PROTECTION_OVERRIDE_BAD_DATA;
 dump_buf += qed_read_param(dump_buf,
       &param_name, &param_str_val, &param_num_val);
 if (strcmp(param_name, "size"))
  return DBG_STATUS_PROTECTION_OVERRIDE_BAD_DATA;
 if (param_num_val % PROTECTION_OVERRIDE_ELEMENT_DWORDS)
  return DBG_STATUS_PROTECTION_OVERRIDE_BAD_DATA;
 num_elements = param_num_val / PROTECTION_OVERRIDE_ELEMENT_DWORDS;
 elements = (struct protection_override_element *)dump_buf;


 for (i = 0; i < num_elements; i++) {
  u32 address = GET_FIELD(elements[i].data,
     PROTECTION_OVERRIDE_ELEMENT_ADDRESS) *
         PROTECTION_OVERRIDE_ELEMENT_ADDR_FACTOR;

  results_offset +=
      sprintf(qed_get_buf_ptr(results_buf,
         results_offset),
       "window %2d, address: 0x%07x, size: %7d regs, read: %d, write: %d, read protection: %-12s, write protection: %-12s\n",
       i, address,
       (u32)GET_FIELD(elements[i].data,
          PROTECTION_OVERRIDE_ELEMENT_WINDOW_SIZE),
       (u32)GET_FIELD(elements[i].data,
          PROTECTION_OVERRIDE_ELEMENT_READ),
       (u32)GET_FIELD(elements[i].data,
          PROTECTION_OVERRIDE_ELEMENT_WRITE),
       s_protection_strs[GET_FIELD(elements[i].data,
    PROTECTION_OVERRIDE_ELEMENT_READ_PROTECTION)],
       s_protection_strs[GET_FIELD(elements[i].data,
    PROTECTION_OVERRIDE_ELEMENT_WRITE_PROTECTION)]);
 }

 results_offset += sprintf(qed_get_buf_ptr(results_buf,
        results_offset),
      "protection override contained %d elements",
      num_elements);


 *parsed_results_bytes = results_offset + 1;

 return DBG_STATUS_OK;
}
