; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_modify_tirs_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_modify_tirs_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_5__*, %struct.mlx5_core_dev*, %struct.TYPE_4__*, %struct.mlx5e_rss_params }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_rss_params = type { i32* }
%struct.mlx5e_tirc_config = type { i32 }

@modify_tir_in = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@bitmask = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MLX5E_NUM_INDIR_TIRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_modify_tirs_hash(%struct.mlx5e_priv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlx5e_rss_params*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5e_tirc_config, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @modify_tir_in, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @ctx, align 4
  %16 = call i8* @MLX5_ADDR_OF(i32 %13, i8* %14, i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 3
  store %struct.mlx5e_rss_params* %18, %struct.mlx5e_rss_params** %8, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 1
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %20, align 8
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @MLX5_ST_SZ_BYTES(i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @modify_tir_in, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmask, i32 0, i32 0), align 4
  %27 = call i32 @MLX5_SET(i32 %24, i8* %25, i32 %26, i32 1)
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %60, %3
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @memset(i8* %33, i32 0, i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mlx5e_update_rx_hash_fields(%struct.mlx5e_tirc_config* %11, i32 %36, i32 %43)
  %45 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %8, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @mlx5e_build_indir_tir_ctx_hash(%struct.mlx5e_rss_params* %45, %struct.mlx5e_tirc_config* %11, i8* %46, i32 0)
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @mlx5_core_modify_tir(%struct.mlx5_core_dev* %48, i32 %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %32
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %28

63:                                               ; preds = %28
  %64 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %65 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %64, i32 0, i32 1
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %65, align 8
  %67 = call i32 @mlx5e_tunnel_inner_ft_supported(%struct.mlx5_core_dev* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %106

70:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %103, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %71
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @memset(i8* %76, i32 0, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %8, align 8
  %81 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mlx5e_update_rx_hash_fields(%struct.mlx5e_tirc_config* %11, i32 %79, i32 %86)
  %88 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %8, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @mlx5e_build_indir_tir_ctx_hash(%struct.mlx5e_rss_params* %88, %struct.mlx5e_tirc_config* %11, i8* %89, i32 1)
  %91 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %92 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %93 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @mlx5_core_modify_tir(%struct.mlx5_core_dev* %91, i32 %99, i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %75
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %71

106:                                              ; preds = %69, %71
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mlx5e_update_rx_hash_fields(%struct.mlx5e_tirc_config*, i32, i32) #1

declare dso_local i32 @mlx5e_build_indir_tir_ctx_hash(%struct.mlx5e_rss_params*, %struct.mlx5e_tirc_config*, i8*, i32) #1

declare dso_local i32 @mlx5_core_modify_tir(%struct.mlx5_core_dev*, i32, i8*, i32) #1

declare dso_local i32 @mlx5e_tunnel_inner_ft_supported(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
