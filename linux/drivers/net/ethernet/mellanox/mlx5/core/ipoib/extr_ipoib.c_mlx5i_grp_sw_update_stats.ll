; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_grp_sw_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_grp_sw_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, %struct.TYPE_2__, %struct.mlx5e_channel_stats* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_channel_stats = type { %struct.mlx5e_sq_stats*, %struct.mlx5e_rq_stats }
%struct.mlx5e_sq_stats = type { i64, i64, i64 }
%struct.mlx5e_rq_stats = type { i64, i64 }
%struct.mlx5e_sw_stats = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5i_grp_sw_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5i_grp_sw_update_stats(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_sw_stats, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_channel_stats*, align 8
  %7 = alloca %struct.mlx5e_rq_stats*, align 8
  %8 = alloca %struct.mlx5e_sq_stats*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %9 = bitcast %struct.mlx5e_sw_stats* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %82, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %85

16:                                               ; preds = %10
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 3
  %19 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %19, i64 %21
  store %struct.mlx5e_channel_stats* %22, %struct.mlx5e_channel_stats** %6, align 8
  %23 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %23, i32 0, i32 1
  store %struct.mlx5e_rq_stats* %24, %struct.mlx5e_rq_stats** %7, align 8
  %25 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %3, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %27
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %3, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %35
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %78, %16
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %44 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %41
  %48 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %48, i32 0, i32 0
  %50 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %50, i64 %52
  store %struct.mlx5e_sq_stats* %53, %struct.mlx5e_sq_stats** %8, align 8
  %54 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %8, align 8
  %55 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %3, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %56
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %8, align 8
  %63 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %3, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %64
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %8, align 8
  %71 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %3, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %72
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  br label %78

78:                                               ; preds = %47
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %41

81:                                               ; preds = %41
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %10

85:                                               ; preds = %10
  %86 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %87 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @memcpy(i32* %88, %struct.mlx5e_sw_stats* %3, i32 24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, %struct.mlx5e_sw_stats*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
