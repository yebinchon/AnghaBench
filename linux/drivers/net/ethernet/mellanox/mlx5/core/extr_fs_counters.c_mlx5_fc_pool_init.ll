; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc_pool = type { i64, i64, i64, i32, i32, i32, i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fc_pool*, %struct.mlx5_core_dev*)* @mlx5_fc_pool_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fc_pool_init(%struct.mlx5_fc_pool* %0, %struct.mlx5_core_dev* %1) #0 {
  %3 = alloca %struct.mlx5_fc_pool*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_fc_pool* %0, %struct.mlx5_fc_pool** %3, align 8
  store %struct.mlx5_core_dev* %1, %struct.mlx5_core_dev** %4, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %6 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %6, i32 0, i32 7
  store %struct.mlx5_core_dev* %5, %struct.mlx5_core_dev** %7, align 8
  %8 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %8, i32 0, i32 6
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %11, i32 0, i32 5
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %14, i32 0, i32 4
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %17, i32 0, i32 3
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
