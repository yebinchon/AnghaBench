; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_fw_reporters_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_fw_reporters_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_core_health }
%struct.mlx5_core_health = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*)* @mlx5_fw_reporters_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fw_reporters_destroy(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_core_health*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.mlx5_core_health* %6, %struct.mlx5_core_health** %3, align 8
  %7 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IS_ERR_OR_NULL(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @devlink_health_reporter_destroy(i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IS_ERR_OR_NULL(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @devlink_health_reporter_destroy(i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @devlink_health_reporter_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
