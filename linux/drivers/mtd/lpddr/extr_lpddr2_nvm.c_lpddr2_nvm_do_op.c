
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
typedef int u_char ;
struct pcm_int_data {int bus_width; } ;
struct map_info {int pfow_base; struct pcm_int_data* fldrv_priv; } ;
struct TYPE_6__ {int member_0; } ;
struct TYPE_7__ {int* x; TYPE_1__ member_0; } ;
typedef TYPE_2__ map_word ;


 int CMD_ADD_H_OFS ;
 int CMD_ADD_L_OFS ;
 int CMD_CODE_OFS ;
 int CMD_DATA_OFS ;
 int CMD_EXEC_OFS ;
 int EIO ;
 int LPDDR2_NVM_BUF_OVERWRITE ;
 int LPDDR2_NVM_BUF_PROGRAM ;
 int MPR_H_OFS ;
 int MPR_L_OFS ;
 int PRG_BUFFER_OFS ;
 int STATUS_REG_OFS ;
 TYPE_2__ build_map_word (int ) ;
 int build_sr_ok_datamask (int) ;
 TYPE_2__ map_read (struct map_info*,int) ;
 int map_write (struct map_info*,TYPE_2__,int) ;
 int ow_reg_add (struct map_info*,int ) ;

__attribute__((used)) static int lpddr2_nvm_do_op(struct map_info *map, u_long cmd_code,
 u_long cmd_data, u_long cmd_add, u_long cmd_mpr, u_char *buf)
{
 map_word add_l = { {0} }, add_h = { {0} }, mpr_l = { {0} },
  mpr_h = { {0} }, data_l = { {0} }, cmd = { {0} },
  exec_cmd = { {0} }, sr;
 map_word data_h = { {0} };
 u_long i, status_reg, prg_buff_ofs;
 struct pcm_int_data *pcm_data = map->fldrv_priv;
 u_int sr_ok_datamask = build_sr_ok_datamask(pcm_data->bus_width);


 add_l.x[0] = cmd_add & 0x0000FFFF;
 add_h.x[0] = (cmd_add >> 16) & 0x0000FFFF;
 mpr_l.x[0] = cmd_mpr & 0x0000FFFF;
 mpr_h.x[0] = (cmd_mpr >> 16) & 0x0000FFFF;
 cmd.x[0] = cmd_code & 0x0000FFFF;
 exec_cmd.x[0] = 0x0001;
 data_l.x[0] = cmd_data & 0x0000FFFF;
 data_h.x[0] = (cmd_data >> 16) & 0x0000FFFF;


 map_write(map, cmd, ow_reg_add(map, CMD_CODE_OFS));
 map_write(map, data_l, ow_reg_add(map, CMD_DATA_OFS));
 map_write(map, add_l, ow_reg_add(map, CMD_ADD_L_OFS));
 map_write(map, add_h, ow_reg_add(map, CMD_ADD_H_OFS));
 map_write(map, mpr_l, ow_reg_add(map, MPR_L_OFS));
 map_write(map, mpr_h, ow_reg_add(map, MPR_H_OFS));
 if (pcm_data->bus_width == 0x0004) {
  map_write(map, cmd, ow_reg_add(map, CMD_CODE_OFS) + 2);
  map_write(map, data_h, ow_reg_add(map, CMD_DATA_OFS) + 2);
  map_write(map, add_l, ow_reg_add(map, CMD_ADD_L_OFS) + 2);
  map_write(map, add_h, ow_reg_add(map, CMD_ADD_H_OFS) + 2);
  map_write(map, mpr_l, ow_reg_add(map, MPR_L_OFS) + 2);
  map_write(map, mpr_h, ow_reg_add(map, MPR_H_OFS) + 2);
 }


 if ((cmd_code == LPDDR2_NVM_BUF_PROGRAM) ||
  (cmd_code == LPDDR2_NVM_BUF_OVERWRITE)) {
  prg_buff_ofs = (map_read(map,
   ow_reg_add(map, PRG_BUFFER_OFS))).x[0];
  for (i = 0; i < cmd_mpr; i++) {
   map_write(map, build_map_word(buf[i]), map->pfow_base +
   prg_buff_ofs + i);
  }
 }


 map_write(map, exec_cmd, ow_reg_add(map, CMD_EXEC_OFS));
 if (pcm_data->bus_width == 0x0004)
  map_write(map, exec_cmd, ow_reg_add(map, CMD_EXEC_OFS) + 2);


 do {
  sr = map_read(map, ow_reg_add(map, STATUS_REG_OFS));
  status_reg = sr.x[0];
  if (pcm_data->bus_width == 0x0004) {
   sr = map_read(map, ow_reg_add(map,
    STATUS_REG_OFS) + 2);
   status_reg += sr.x[0] << 16;
  }
 } while ((status_reg & sr_ok_datamask) != sr_ok_datamask);

 return (((status_reg & sr_ok_datamask) == sr_ok_datamask) ? 0 : -EIO);
}
