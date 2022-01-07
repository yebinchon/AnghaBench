; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_pool_free_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_pool_free_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc_pool = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_fc_bulk = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fc_pool*, %struct.mlx5_fc_bulk*)* @mlx5_fc_pool_free_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fc_pool_free_bulk(%struct.mlx5_fc_pool* %0, %struct.mlx5_fc_bulk* %1) #0 {
  %3 = alloca %struct.mlx5_fc_pool*, align 8
  %4 = alloca %struct.mlx5_fc_bulk*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_fc_pool* %0, %struct.mlx5_fc_pool** %3, align 8
  store %struct.mlx5_fc_bulk* %1, %struct.mlx5_fc_bulk** %4, align 8
  %6 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %6, i32 0, i32 1
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_core_dev* %8, %struct.mlx5_core_dev** %5, align 8
  %9 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %15, %11
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 8
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %19 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %4, align 8
  %20 = call i32 @mlx5_fc_bulk_destroy(%struct.mlx5_core_dev* %18, %struct.mlx5_fc_bulk* %19)
  %21 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %22 = call i32 @mlx5_fc_pool_update_threshold(%struct.mlx5_fc_pool* %21)
  ret void
}

declare dso_local i32 @mlx5_fc_bulk_destroy(%struct.mlx5_core_dev*, %struct.mlx5_fc_bulk*) #1

declare dso_local i32 @mlx5_fc_pool_update_threshold(%struct.mlx5_fc_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
