; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_get_fdb_sub_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_get_fdb_sub_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_namespace = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_flow_steering* }
%struct.mlx5_flow_steering = type { %struct.mlx5_flow_namespace** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_namespace* @mlx5_get_fdb_sub_ns(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_flow_namespace*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_flow_steering*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %9, align 8
  store %struct.mlx5_flow_steering* %10, %struct.mlx5_flow_steering** %6, align 8
  %11 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %6, align 8
  %12 = icmp ne %struct.mlx5_flow_steering* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %14, i32 0, i32 0
  %16 = load %struct.mlx5_flow_namespace**, %struct.mlx5_flow_namespace*** %15, align 8
  %17 = icmp ne %struct.mlx5_flow_namespace** %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %2
  store %struct.mlx5_flow_namespace* null, %struct.mlx5_flow_namespace** %3, align 8
  br label %27

19:                                               ; preds = %13
  %20 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %20, i32 0, i32 0
  %22 = load %struct.mlx5_flow_namespace**, %struct.mlx5_flow_namespace*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %22, i64 %24
  %26 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %25, align 8
  store %struct.mlx5_flow_namespace* %26, %struct.mlx5_flow_namespace** %3, align 8
  br label %27

27:                                               ; preds = %19, %18
  %28 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %3, align 8
  ret %struct.mlx5_flow_namespace* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
