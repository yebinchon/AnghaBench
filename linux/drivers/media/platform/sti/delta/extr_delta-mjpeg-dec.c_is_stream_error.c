
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum jpeg_decoding_error_t { ____Placeholder_jpeg_decoding_error_t } jpeg_decoding_error_t ;
__attribute__((used)) static inline bool is_stream_error(enum jpeg_decoding_error_t err)
{
 switch (err) {
 case 128:
 case 131:
 case 130:
 case 129:
 case 136:
 case 138:
 case 137:
 case 135:
 case 134:
 case 132:
 case 133:
 case 139:
  return 1;
 default:
  return 0;
 }
}
