; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_icm_pool.c_dr_icm_bucket_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_icm_pool.c_dr_icm_bucket_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_icm_pool = type { i64 }
%struct.mlx5dr_icm_bucket = type { i32, i32, i32, i32, i32, %struct.mlx5dr_icm_pool*, i32, i32 }

@DR_ICM_TYPE_STE = common dso_local global i64 0, align 8
@DR_STE_SIZE = common dso_local global i32 0, align 4
@DR_MODIFY_ACTION_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_bucket*, i32)* @dr_icm_bucket_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_icm_bucket_init(%struct.mlx5dr_icm_pool* %0, %struct.mlx5dr_icm_bucket* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5dr_icm_pool*, align 8
  %5 = alloca %struct.mlx5dr_icm_bucket*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5dr_icm_pool* %0, %struct.mlx5dr_icm_pool** %4, align 8
  store %struct.mlx5dr_icm_bucket* %1, %struct.mlx5dr_icm_bucket** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DR_ICM_TYPE_STE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @DR_STE_SIZE, align 4
  %14 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_icm_bucket, %struct.mlx5dr_icm_bucket* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @DR_MODIFY_ACTION_SIZE, align 4
  %18 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_icm_bucket, %struct.mlx5dr_icm_bucket* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mlx5dr_icm_pool_chunk_size_to_entries(i32 %21)
  %23 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_icm_bucket, %struct.mlx5dr_icm_bucket* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %4, align 8
  %26 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_icm_bucket, %struct.mlx5dr_icm_bucket* %26, i32 0, i32 5
  store %struct.mlx5dr_icm_pool* %25, %struct.mlx5dr_icm_pool** %27, align 8
  %28 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_icm_bucket, %struct.mlx5dr_icm_bucket* %28, i32 0, i32 4
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_icm_bucket, %struct.mlx5dr_icm_bucket* %31, i32 0, i32 3
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_icm_bucket, %struct.mlx5dr_icm_bucket* %34, i32 0, i32 2
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_icm_bucket, %struct.mlx5dr_icm_bucket* %37, i32 0, i32 1
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_icm_bucket, %struct.mlx5dr_icm_bucket* %40, i32 0, i32 0
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  ret void
}

declare dso_local i32 @mlx5dr_icm_pool_chunk_size_to_entries(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
