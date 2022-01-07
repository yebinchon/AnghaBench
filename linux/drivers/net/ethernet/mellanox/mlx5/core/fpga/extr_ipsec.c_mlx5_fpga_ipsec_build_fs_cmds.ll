; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_build_fs_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_build_fs_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@fpga_ipsec_ingress = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@mlx5_fpga_ipsec_fs_create_flow_group_ingress = common dso_local global i32 0, align 4
@mlx5_fpga_ipsec_fs_create_fte_ingress = common dso_local global i32 0, align 4
@mlx5_fpga_ipsec_fs_update_fte_ingress = common dso_local global i32 0, align 4
@mlx5_fpga_ipsec_fs_delete_fte_ingress = common dso_local global i32 0, align 4
@fpga_ipsec_egress = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@mlx5_fpga_ipsec_fs_create_flow_group_egress = common dso_local global i32 0, align 4
@mlx5_fpga_ipsec_fs_create_fte_egress = common dso_local global i32 0, align 4
@mlx5_fpga_ipsec_fs_update_fte_egress = common dso_local global i32 0, align 4
@mlx5_fpga_ipsec_fs_delete_fte_egress = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fpga_ipsec_build_fs_cmds() #0 {
  %1 = call i32 @egress_to_fs_ft(i32 0)
  %2 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %1)
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpga_ipsec_ingress, i32 0, i32 8), align 4
  %5 = call i32 @egress_to_fs_ft(i32 0)
  %6 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpga_ipsec_ingress, i32 0, i32 7), align 4
  %9 = call i32 @egress_to_fs_ft(i32 0)
  %10 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpga_ipsec_ingress, i32 0, i32 6), align 4
  %13 = load i32, i32* @mlx5_fpga_ipsec_fs_create_flow_group_ingress, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpga_ipsec_ingress, i32 0, i32 5), align 4
  %14 = call i32 @egress_to_fs_ft(i32 0)
  %15 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpga_ipsec_ingress, i32 0, i32 4), align 4
  %18 = load i32, i32* @mlx5_fpga_ipsec_fs_create_fte_ingress, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpga_ipsec_ingress, i32 0, i32 3), align 4
  %19 = load i32, i32* @mlx5_fpga_ipsec_fs_update_fte_ingress, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpga_ipsec_ingress, i32 0, i32 2), align 4
  %20 = load i32, i32* @mlx5_fpga_ipsec_fs_delete_fte_ingress, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpga_ipsec_ingress, i32 0, i32 1), align 4
  %21 = call i32 @egress_to_fs_ft(i32 0)
  %22 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpga_ipsec_ingress, i32 0, i32 0), align 4
  %25 = call i32 @egress_to_fs_ft(i32 1)
  %26 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpga_ipsec_egress, i32 0, i32 8), align 4
  %29 = call i32 @egress_to_fs_ft(i32 1)
  %30 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpga_ipsec_egress, i32 0, i32 7), align 4
  %33 = call i32 @egress_to_fs_ft(i32 1)
  %34 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpga_ipsec_egress, i32 0, i32 6), align 4
  %37 = load i32, i32* @mlx5_fpga_ipsec_fs_create_flow_group_egress, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpga_ipsec_egress, i32 0, i32 5), align 4
  %38 = call i32 @egress_to_fs_ft(i32 1)
  %39 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpga_ipsec_egress, i32 0, i32 4), align 4
  %42 = load i32, i32* @mlx5_fpga_ipsec_fs_create_fte_egress, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpga_ipsec_egress, i32 0, i32 3), align 4
  %43 = load i32, i32* @mlx5_fpga_ipsec_fs_update_fte_egress, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpga_ipsec_egress, i32 0, i32 2), align 4
  %44 = load i32, i32* @mlx5_fpga_ipsec_fs_delete_fte_egress, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpga_ipsec_egress, i32 0, i32 1), align 4
  %45 = call i32 @egress_to_fs_ft(i32 1)
  %46 = call %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpga_ipsec_egress, i32 0, i32 0), align 4
  ret void
}

declare dso_local %struct.TYPE_4__* @mlx5_fs_cmd_get_default(i32) #1

declare dso_local i32 @egress_to_fs_ft(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
