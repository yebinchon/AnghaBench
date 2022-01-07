; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_pool_alloc_new_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_pool_alloc_new_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc_bulk = type { i64 }
%struct.mlx5_fc_pool = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_fc_bulk* (%struct.mlx5_fc_pool*)* @mlx5_fc_pool_alloc_new_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_fc_bulk* @mlx5_fc_pool_alloc_new_bulk(%struct.mlx5_fc_pool* %0) #0 {
  %2 = alloca %struct.mlx5_fc_pool*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fc_bulk*, align 8
  store %struct.mlx5_fc_pool* %0, %struct.mlx5_fc_pool** %2, align 8
  %5 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %5, i32 0, i32 1
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5_core_dev* %7, %struct.mlx5_core_dev** %3, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = call %struct.mlx5_fc_bulk* @mlx5_fc_bulk_create(%struct.mlx5_core_dev* %8)
  store %struct.mlx5_fc_bulk* %9, %struct.mlx5_fc_bulk** %4, align 8
  %10 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %4, align 8
  %11 = call i32 @IS_ERR(%struct.mlx5_fc_bulk* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 8
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %25 = call i32 @mlx5_fc_pool_update_threshold(%struct.mlx5_fc_pool* %24)
  %26 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %4, align 8
  ret %struct.mlx5_fc_bulk* %26
}

declare dso_local %struct.mlx5_fc_bulk* @mlx5_fc_bulk_create(%struct.mlx5_core_dev*) #1

declare dso_local i32 @IS_ERR(%struct.mlx5_fc_bulk*) #1

declare dso_local i32 @mlx5_fc_pool_update_threshold(%struct.mlx5_fc_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
