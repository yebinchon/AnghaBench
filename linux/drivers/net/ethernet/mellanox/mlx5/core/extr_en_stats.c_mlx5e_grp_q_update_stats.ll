; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_q_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_q_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5e_qcounter_stats }
%struct.mlx5e_qcounter_stats = type { i8*, i8* }

@query_q_counter_out = common dso_local global i32 0, align 4
@out_of_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_grp_q_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_grp_q_update_stats(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_qcounter_stats*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.mlx5e_qcounter_stats* %8, %struct.mlx5e_qcounter_stats** %3, align 8
  %9 = load i32, i32* @query_q_counter_out, align 4
  %10 = call i32 @MLX5_ST_SZ_DW(i32 %9)
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = mul nuw i64 4, %11
  %26 = trunc i64 %25 to i32
  %27 = call i32 @mlx5_core_query_q_counter(i32 %21, i64 %24, i32 0, i32* %13, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @query_q_counter_out, align 4
  %31 = load i32, i32* @out_of_buffer, align 4
  %32 = call i8* @MLX5_GET(i32 %30, i32* %13, i32 %31)
  %33 = load %struct.mlx5e_qcounter_stats*, %struct.mlx5e_qcounter_stats** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_qcounter_stats, %struct.mlx5e_qcounter_stats* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %29, %18, %1
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %37 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %42 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = mul nuw i64 4, %11
  %48 = trunc i64 %47 to i32
  %49 = call i32 @mlx5_core_query_q_counter(i32 %43, i64 %46, i32 0, i32* %13, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* @query_q_counter_out, align 4
  %53 = load i32, i32* @out_of_buffer, align 4
  %54 = call i8* @MLX5_GET(i32 %52, i32* %13, i32 %53)
  %55 = load %struct.mlx5e_qcounter_stats*, %struct.mlx5e_qcounter_stats** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5e_qcounter_stats, %struct.mlx5e_qcounter_stats* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %51, %40, %35
  %58 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx5_core_query_q_counter(i32, i64, i32, i32*, i32) #1

declare dso_local i8* @MLX5_GET(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
