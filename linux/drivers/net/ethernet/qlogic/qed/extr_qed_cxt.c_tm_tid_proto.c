
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;


 int PROTOCOLID_FCOE ;

__attribute__((used)) static bool tm_tid_proto(enum protocol_type type)
{
 return type == PROTOCOLID_FCOE;
}
