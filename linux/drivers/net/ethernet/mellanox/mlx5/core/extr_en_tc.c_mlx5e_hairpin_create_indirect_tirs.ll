; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_create_indirect_tirs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_create_indirect_tirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_hairpin = type { i32*, i32, %struct.TYPE_2__, i32, %struct.mlx5e_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_tirc_config = type { i32 }

@create_tir_in = common dso_local global i32 0, align 4
@MLX5E_NUM_INDIR_TIRS = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@transport_domain = common dso_local global i32 0, align 4
@disp_type = common dso_local global i32 0, align 4
@MLX5_TIRC_DISP_TYPE_INDIRECT = common dso_local global i32 0, align 4
@indirect_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"create indirect tirs failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_hairpin*)* @mlx5e_hairpin_create_indirect_tirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_hairpin_create_indirect_tirs(%struct.mlx5e_hairpin* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_hairpin*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mlx5e_tirc_config, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5e_hairpin* %0, %struct.mlx5e_hairpin** %3, align 8
  %13 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %13, i32 0, i32 4
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %14, align 8
  store %struct.mlx5e_priv* %15, %struct.mlx5e_priv** %4, align 8
  %16 = load i32, i32* @create_tir_in, align 4
  %17 = call i32 @MLX5_ST_SZ_DW(i32 %16)
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %80, %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mlx5e_tirc_get_default_config(i32 %26)
  %28 = getelementptr inbounds %struct.mlx5e_tirc_config, %struct.mlx5e_tirc_config* %11, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @create_tir_in, align 4
  %30 = call i32 @MLX5_ST_SZ_BYTES(i32 %29)
  %31 = call i32 @memset(i32* %20, i32 0, i32 %30)
  %32 = load i32, i32* @create_tir_in, align 4
  %33 = load i32, i32* @ctx, align 4
  %34 = call i8* @MLX5_ADDR_OF(i32 %32, i32* %20, i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* @transport_domain, align 4
  %38 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @MLX5_SET(i8* %35, i8* %36, i32 %37, i32 %40)
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* @disp_type, align 4
  %45 = load i32, i32* @MLX5_TIRC_DISP_TYPE_INDIRECT, align 4
  %46 = call i32 @MLX5_SET(i8* %42, i8* %43, i32 %44, i32 %45)
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* @indirect_table, align 4
  %50 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MLX5_SET(i8* %47, i8* %48, i32 %49, i32 %53)
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %55, i32 0, i32 0
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @mlx5e_build_indir_tir_ctx_hash(i32* %56, %struct.mlx5e_tirc_config* %11, i8* %57, i32 0)
  %59 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %60 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @create_tir_in, align 4
  %63 = call i32 @MLX5_ST_SZ_BYTES(i32 %62)
  %64 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %65 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @mlx5_core_create_tir(i32 %61, i32* %20, i32 %63, i32* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %25
  %74 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %75 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @mlx5_core_warn(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %84

79:                                               ; preds = %25
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %21

83:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %106

84:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %101, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %91 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %94 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @mlx5_core_destroy_tir(i32 %92, i32 %99)
  br label %101

101:                                              ; preds = %89
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %85

104:                                              ; preds = %85
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %83
  %107 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx5e_tirc_get_default_config(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_build_indir_tir_ctx_hash(i32*, %struct.mlx5e_tirc_config*, i8*, i32) #1

declare dso_local i32 @mlx5_core_create_tir(i32, i32*, i32, i32*) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32) #1

declare dso_local i32 @mlx5_core_destroy_tir(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
