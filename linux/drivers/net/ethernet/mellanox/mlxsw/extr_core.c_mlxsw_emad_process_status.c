
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlxsw_emad_op_tlv_status { ____Placeholder_mlxsw_emad_op_tlv_status } mlxsw_emad_op_tlv_status ;


 int EAGAIN ;
 int EIO ;
 int mlxsw_emad_op_tlv_status_get (char*) ;

__attribute__((used)) static int mlxsw_emad_process_status(char *op_tlv,
         enum mlxsw_emad_op_tlv_status *p_status)
{
 *p_status = mlxsw_emad_op_tlv_status_get(op_tlv);

 switch (*p_status) {
 case 130:
  return 0;
 case 137:
 case 134:
  return -EAGAIN;
 case 128:
 case 129:
 case 132:
 case 136:
 case 133:
 case 138:
 case 131:
 case 135:
 default:
  return -EIO;
 }
}
