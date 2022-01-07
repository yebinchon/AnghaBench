; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_fold_sw_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_fold_sw_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, %struct.mlx5e_channel_stats* }
%struct.mlx5e_channel_stats = type { %struct.mlx5e_sq_stats*, %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats }
%struct.mlx5e_sq_stats = type { i64, i64, i64 }
%struct.mlx5e_rq_stats = type { i64, i64 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_fold_sw_stats64(%struct.mlx5e_priv* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_channel_stats*, align 8
  %7 = alloca %struct.mlx5e_rq_stats*, align 8
  %8 = alloca %struct.mlx5e_rq_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5e_sq_stats*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %98, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %101

17:                                               ; preds = %11
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 2
  %20 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %20, i64 %22
  store %struct.mlx5e_channel_stats* %23, %struct.mlx5e_channel_stats** %6, align 8
  %24 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %24, i32 0, i32 2
  store %struct.mlx5e_rq_stats* %25, %struct.mlx5e_rq_stats** %7, align 8
  %26 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %26, i32 0, i32 1
  store %struct.mlx5e_rq_stats* %27, %struct.mlx5e_rq_stats** %8, align 8
  %28 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %8, align 8
  %29 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %7, align 8
  %32 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %36 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %8, align 8
  %42 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %7, align 8
  %45 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %49 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %94, %17
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %54
  %61 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %6, align 8
  %62 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %61, i32 0, i32 0
  %63 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %63, i64 %65
  store %struct.mlx5e_sq_stats* %66, %struct.mlx5e_sq_stats** %10, align 8
  %67 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %10, align 8
  %68 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %71 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  %76 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %10, align 8
  %77 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %80 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %10, align 8
  %86 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %89 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  br label %94

94:                                               ; preds = %60
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %54

97:                                               ; preds = %54
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %11

101:                                              ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
