
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_fpga_conn {int fdev; } ;
struct mlx5_err_cqe {int syndrome; } ;
struct mlx5_cqe64 {int dummy; } ;






 int get_cqe_opcode (struct mlx5_cqe64*) ;
 int mlx5_fpga_conn_rq_cqe (struct mlx5_fpga_conn*,struct mlx5_cqe64*,int) ;
 int mlx5_fpga_conn_sq_cqe (struct mlx5_fpga_conn*,struct mlx5_cqe64*,int) ;
 int mlx5_fpga_warn (int ,char*,int) ;

__attribute__((used)) static void mlx5_fpga_conn_handle_cqe(struct mlx5_fpga_conn *conn,
          struct mlx5_cqe64 *cqe)
{
 u8 opcode, status = 0;

 opcode = get_cqe_opcode(cqe);

 switch (opcode) {
 case 130:
  status = ((struct mlx5_err_cqe *)cqe)->syndrome;

 case 131:
  mlx5_fpga_conn_sq_cqe(conn, cqe, status);
  break;

 case 129:
  status = ((struct mlx5_err_cqe *)cqe)->syndrome;

 case 128:
  mlx5_fpga_conn_rq_cqe(conn, cqe, status);
  break;
 default:
  mlx5_fpga_warn(conn->fdev, "Unexpected cqe opcode %u\n",
          opcode);
 }
}
