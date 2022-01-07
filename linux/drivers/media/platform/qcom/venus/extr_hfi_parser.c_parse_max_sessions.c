
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_core {int max_sessions_supported; } ;
struct hfi_max_sessions_supported {int max_sessions; } ;



__attribute__((used)) static void parse_max_sessions(struct venus_core *core, const void *data)
{
 const struct hfi_max_sessions_supported *sessions = data;

 core->max_sessions_supported = sessions->max_sessions;
}
