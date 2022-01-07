; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_update_counter_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_update_counter_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc_cache = type { i64, i32, i64 }

@query_flow_counter_out = common dso_local global i32 0, align 4
@flow_statistics = common dso_local global i32* null, align 8
@traffic_counter = common dso_local global i32 0, align 4
@octets = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@packets = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.mlx5_fc_cache*)* @update_counter_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_counter_cache(i32 %0, i32* %1, %struct.mlx5_fc_cache* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlx5_fc_cache*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.mlx5_fc_cache* %2, %struct.mlx5_fc_cache** %6, align 8
  %10 = load i32, i32* @query_flow_counter_out, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** @flow_statistics, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @MLX5_ADDR_OF(i32 %10, i32* %11, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i32, i32* @traffic_counter, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i64 @MLX5_GET64(i32 %18, i8* %19, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* @traffic_counter, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @octets, align 4
  %26 = call i64 @MLX5_GET64(i32 %23, i8* %24, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.mlx5_fc_cache*, %struct.mlx5_fc_cache** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5_fc_cache, %struct.mlx5_fc_cache* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %43

33:                                               ; preds = %3
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.mlx5_fc_cache*, %struct.mlx5_fc_cache** %6, align 8
  %36 = getelementptr inbounds %struct.mlx5_fc_cache, %struct.mlx5_fc_cache* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.mlx5_fc_cache*, %struct.mlx5_fc_cache** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_fc_cache, %struct.mlx5_fc_cache* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @jiffies, align 4
  %41 = load %struct.mlx5_fc_cache*, %struct.mlx5_fc_cache** %6, align 8
  %42 = getelementptr inbounds %struct.mlx5_fc_cache, %struct.mlx5_fc_cache* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %33, %32
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i64 @MLX5_GET64(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
