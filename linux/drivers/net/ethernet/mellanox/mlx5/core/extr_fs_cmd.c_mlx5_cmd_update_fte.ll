; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_cmd.c_mlx5_cmd_update_fte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_cmd.c_mlx5_cmd_update_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_flow_root_namespace = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_group = type { i32 }
%struct.fs_fte = type { i32 }

@flow_table_properties_nic_receive = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32, %struct.fs_fte*)* @mlx5_cmd_update_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_update_fte(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1, %struct.mlx5_flow_group* %2, i32 %3, %struct.fs_fte* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %8 = alloca %struct.mlx5_flow_table*, align 8
  %9 = alloca %struct.mlx5_flow_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fs_fte*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5_core_dev*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %7, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %8, align 8
  store %struct.mlx5_flow_group* %2, %struct.mlx5_flow_group** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.fs_fte* %4, %struct.fs_fte** %11, align 8
  %15 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %15, i32 0, i32 0
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %16, align 8
  store %struct.mlx5_core_dev* %17, %struct.mlx5_core_dev** %13, align 8
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @flow_table_properties_nic_receive, i32 0, i32 0), align 4
  %20 = call i32 @MLX5_CAP_FLOWTABLE(%struct.mlx5_core_dev* %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %36

26:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %31 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %32 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fs_fte*, %struct.fs_fte** %11, align 8
  %35 = call i32 @mlx5_cmd_set_fte(%struct.mlx5_core_dev* %27, i32 %28, i32 %29, %struct.mlx5_flow_table* %30, i32 %33, %struct.fs_fte* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %26, %23
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @MLX5_CAP_FLOWTABLE(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_cmd_set_fte(%struct.mlx5_core_dev*, i32, i32, %struct.mlx5_flow_table*, i32, %struct.fs_fte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
