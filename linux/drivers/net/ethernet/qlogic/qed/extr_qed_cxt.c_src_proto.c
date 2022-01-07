
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;


 int PROTOCOLID_FCOE ;
 int PROTOCOLID_ISCSI ;
 int PROTOCOLID_IWARP ;

__attribute__((used)) static bool src_proto(enum protocol_type type)
{
 return type == PROTOCOLID_ISCSI ||
        type == PROTOCOLID_FCOE ||
        type == PROTOCOLID_IWARP;
}
