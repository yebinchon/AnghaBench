
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ionic_status_code { ____Placeholder_ionic_status_code } ionic_status_code ;
__attribute__((used)) static const char *ionic_error_to_str(enum ionic_status_code code)
{
 switch (code) {
 case 128:
  return "IONIC_RC_SUCCESS";
 case 129:
  return "IONIC_RC_EVERSION";
 case 136:
  return "IONIC_RC_EOPCODE";
 case 140:
  return "IONIC_RC_EIO";
 case 135:
  return "IONIC_RC_EPERM";
 case 134:
  return "IONIC_RC_EQID";
 case 133:
  return "IONIC_RC_EQTYPE";
 case 139:
  return "IONIC_RC_ENOENT";
 case 142:
  return "IONIC_RC_EINTR";
 case 146:
  return "IONIC_RC_EAGAIN";
 case 138:
  return "IONIC_RC_ENOMEM";
 case 143:
  return "IONIC_RC_EFAULT";
 case 145:
  return "IONIC_RC_EBUSY";
 case 144:
  return "IONIC_RC_EEXIST";
 case 141:
  return "IONIC_RC_EINVAL";
 case 137:
  return "IONIC_RC_ENOSPC";
 case 132:
  return "IONIC_RC_ERANGE";
 case 148:
  return "IONIC_RC_BAD_ADDR";
 case 147:
  return "IONIC_RC_DEV_CMD";
 case 130:
  return "IONIC_RC_ERROR";
 case 131:
  return "IONIC_RC_ERDMA";
 default:
  return "IONIC_RC_UNKNOWN";
 }
}
