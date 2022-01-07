; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_query_cached.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_query_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc = type { i64, i64, %struct.mlx5_fc_cache }
%struct.mlx5_fc_cache = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fc_query_cached(%struct.mlx5_fc* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.mlx5_fc*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.mlx5_fc_cache, align 8
  store %struct.mlx5_fc* %0, %struct.mlx5_fc** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.mlx5_fc*, %struct.mlx5_fc** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %10, i32 0, i32 2
  %12 = bitcast %struct.mlx5_fc_cache* %9 to i8*
  %13 = bitcast %struct.mlx5_fc_cache* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  %14 = getelementptr inbounds %struct.mlx5_fc_cache, %struct.mlx5_fc_cache* %9, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mlx5_fc*, %struct.mlx5_fc** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = load i64*, i64** %6, align 8
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.mlx5_fc_cache, %struct.mlx5_fc_cache* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mlx5_fc*, %struct.mlx5_fc** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.mlx5_fc_cache, %struct.mlx5_fc_cache* %9, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %8, align 8
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.mlx5_fc_cache, %struct.mlx5_fc_cache* %9, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mlx5_fc*, %struct.mlx5_fc** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = getelementptr inbounds %struct.mlx5_fc_cache, %struct.mlx5_fc_cache* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mlx5_fc*, %struct.mlx5_fc** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
