; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_modify_tirs_lro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_modify_tirs_lro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.mlx5_core_dev* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_tir_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bitmask = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ctx = common dso_local global i32 0, align 4
@MLX5E_NUM_INDIR_TIRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_modify_tirs_lro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_modify_tirs_lro(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 4
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %4, align 8
  %14 = load i32, i32* @modify_tir_in, align 4
  %15 = call i32 @MLX5_ST_SZ_BYTES(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kvzalloc(i32 %16, i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %94

24:                                               ; preds = %1
  %25 = load i32, i32* @modify_tir_in, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmask, i32 0, i32 0), align 4
  %28 = call i32 @MLX5_SET(i32 %25, i8* %26, i32 %27, i32 1)
  %29 = load i32, i32* @modify_tir_in, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @ctx, align 4
  %32 = call i8* @MLX5_ADDR_OF(i32 %29, i8* %30, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @mlx5e_build_tir_ctx_lro(i32* %35, i8* %36)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %59, %24
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @mlx5_core_modify_tir(%struct.mlx5_core_dev* %43, i32 %51, i8* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %90

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %38

62:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %86, %62
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %66 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %63
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %71 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %72 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @mlx5_core_modify_tir(%struct.mlx5_core_dev* %70, i32 %78, i8* %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  br label %90

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %63

89:                                               ; preds = %63
  br label %90

90:                                               ; preds = %89, %84, %57
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @kvfree(i8* %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %21
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @mlx5e_build_tir_ctx_lro(i32*, i8*) #1

declare dso_local i32 @mlx5_core_modify_tir(%struct.mlx5_core_dev*, i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
