; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_icm_pool.c_dr_icm_chunk_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_icm_pool.c_dr_icm_chunk_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_icm_chunk = type { i32, %struct.mlx5dr_icm_bucket* }
%struct.mlx5dr_icm_bucket = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@DR_ICM_TYPE_STE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_icm_chunk*)* @dr_icm_chunk_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_icm_chunk_destroy(%struct.mlx5dr_icm_chunk* %0) #0 {
  %2 = alloca %struct.mlx5dr_icm_chunk*, align 8
  %3 = alloca %struct.mlx5dr_icm_bucket*, align 8
  store %struct.mlx5dr_icm_chunk* %0, %struct.mlx5dr_icm_chunk** %2, align 8
  %4 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5dr_icm_chunk, %struct.mlx5dr_icm_chunk* %4, i32 0, i32 1
  %6 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %5, align 8
  store %struct.mlx5dr_icm_bucket* %6, %struct.mlx5dr_icm_bucket** %3, align 8
  %7 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5dr_icm_chunk, %struct.mlx5dr_icm_chunk* %7, i32 0, i32 0
  %9 = call i32 @list_del(i32* %8)
  %10 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5dr_icm_bucket, %struct.mlx5dr_icm_bucket* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.mlx5dr_icm_bucket*, %struct.mlx5dr_icm_bucket** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_icm_bucket, %struct.mlx5dr_icm_bucket* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DR_ICM_TYPE_STE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %2, align 8
  %23 = call i32 @dr_icm_chunk_ste_cleanup(%struct.mlx5dr_icm_chunk* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %2, align 8
  %26 = call i32 @kvfree(%struct.mlx5dr_icm_chunk* %25)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dr_icm_chunk_ste_cleanup(%struct.mlx5dr_icm_chunk*) #1

declare dso_local i32 @kvfree(%struct.mlx5dr_icm_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
