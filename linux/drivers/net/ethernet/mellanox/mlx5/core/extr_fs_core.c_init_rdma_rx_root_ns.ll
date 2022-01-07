; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_init_rdma_rx_root_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_init_rdma_rx_root_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_steering = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FS_FT_RDMA_RX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rdma_rx_root_fs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_steering*)* @init_rdma_rx_root_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rdma_rx_root_ns(%struct.mlx5_flow_steering* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_flow_steering*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_flow_steering* %0, %struct.mlx5_flow_steering** %3, align 8
  %5 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %6 = load i32, i32* @FS_FT_RDMA_RX, align 4
  %7 = call %struct.TYPE_6__* @create_root_ns(%struct.mlx5_flow_steering* %5, i32 %6)
  %8 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %8, i32 0, i32 0
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %9, align 8
  %10 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %19 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @init_root_tree(%struct.mlx5_flow_steering* %18, i32* @rdma_rx_root_fs, i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @set_prio_attrs(%struct.TYPE_6__* %31)
  store i32 0, i32* %2, align 4
  br label %41

33:                                               ; preds = %27
  %34 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i32 @cleanup_root_ns(%struct.TYPE_6__* %36)
  %38 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %38, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %39, align 8
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %33, %28, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.TYPE_6__* @create_root_ns(%struct.mlx5_flow_steering*, i32) #1

declare dso_local i32 @init_root_tree(%struct.mlx5_flow_steering*, i32*, i32*) #1

declare dso_local i32 @set_prio_attrs(%struct.TYPE_6__*) #1

declare dso_local i32 @cleanup_root_ns(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
