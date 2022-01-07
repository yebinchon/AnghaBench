; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_create_indirect_rqt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_create_indirect_rqt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_hairpin = type { %struct.TYPE_2__, %struct.mlx5e_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@MLX5E_INDIR_RQT_SIZE = common dso_local global i32 0, align 4
@create_rqt_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rqt_context = common dso_local global i32 0, align 4
@rqt_actual_size = common dso_local global i32 0, align 4
@rqt_max_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_hairpin*)* @mlx5e_hairpin_create_indirect_rqt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_hairpin_create_indirect_rqt(%struct.mlx5e_hairpin* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_hairpin*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.mlx5e_hairpin* %0, %struct.mlx5e_hairpin** %3, align 8
  %11 = load i32, i32* @MLX5E_INDIR_RQT_SIZE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %12, i32 0, i32 1
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %13, align 8
  store %struct.mlx5e_priv* %14, %struct.mlx5e_priv** %7, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %16, align 8
  store %struct.mlx5_core_dev* %17, %struct.mlx5_core_dev** %8, align 8
  %18 = load i32, i32* @create_rqt_in, align 4
  %19 = call i32 @MLX5_ST_SZ_BYTES(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = add i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kvzalloc(i32 %26, i32 %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %69

34:                                               ; preds = %1
  %35 = load i32, i32* @create_rqt_in, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* @rqt_context, align 4
  %38 = call i8* @MLX5_ADDR_OF(i32 %35, i32* %36, i32 %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @rqt_actual_size, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @MLX5_SET(i8* %39, i8* %40, i32 %41, i32 %42)
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* @rqt_max_size, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @MLX5_SET(i8* %44, i8* %45, i32 %46, i32 %47)
  %49 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @mlx5e_hairpin_fill_rqt_rqns(%struct.mlx5e_hairpin* %49, i8* %50)
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = call i32 @mlx5_core_create_rqt(%struct.mlx5_core_dev* %52, i32* %53, i32 %54, i32* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %34
  %62 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %34
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @kvfree(i32* %66)
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %31
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_hairpin_fill_rqt_rqns(%struct.mlx5e_hairpin*, i8*) #1

declare dso_local i32 @mlx5_core_create_rqt(%struct.mlx5_core_dev*, i32*, i32, i32*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
