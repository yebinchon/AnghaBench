; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_fc_stats }
%struct.mlx5_fc_stats = type { i32 }

@flow_counter_bulk_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_fc* (%struct.mlx5_core_dev*, i32)* @mlx5_fc_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_fc* @mlx5_fc_acquire(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_fc*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_fc_stats*, align 8
  %7 = alloca %struct.mlx5_fc*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.mlx5_fc_stats* %10, %struct.mlx5_fc_stats** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %15 = load i32, i32* @flow_counter_bulk_alloc, align 4
  %16 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.mlx5_fc_stats*, %struct.mlx5_fc_stats** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_fc_stats, %struct.mlx5_fc_stats* %19, i32 0, i32 0
  %21 = call %struct.mlx5_fc* @mlx5_fc_pool_acquire_counter(i32* %20)
  store %struct.mlx5_fc* %21, %struct.mlx5_fc** %7, align 8
  %22 = load %struct.mlx5_fc*, %struct.mlx5_fc** %7, align 8
  %23 = call i32 @IS_ERR(%struct.mlx5_fc* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load %struct.mlx5_fc*, %struct.mlx5_fc** %7, align 8
  store %struct.mlx5_fc* %26, %struct.mlx5_fc** %3, align 8
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %13, %2
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %30 = call %struct.mlx5_fc* @mlx5_fc_single_alloc(%struct.mlx5_core_dev* %29)
  store %struct.mlx5_fc* %30, %struct.mlx5_fc** %3, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.mlx5_fc*, %struct.mlx5_fc** %3, align 8
  ret %struct.mlx5_fc* %32
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local %struct.mlx5_fc* @mlx5_fc_pool_acquire_counter(i32*) #1

declare dso_local i32 @IS_ERR(%struct.mlx5_fc*) #1

declare dso_local %struct.mlx5_fc* @mlx5_fc_single_alloc(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
