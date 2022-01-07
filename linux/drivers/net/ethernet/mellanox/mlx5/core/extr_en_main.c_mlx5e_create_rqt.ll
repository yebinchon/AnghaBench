; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_rqt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_rqt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_rqt = type { i32, i32 }

@create_rqt_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rqt_context = common dso_local global i32 0, align 4
@rqt_actual_size = common dso_local global i32 0, align 4
@rqt_max_size = common dso_local global i32 0, align 4
@rq_num = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32, %struct.mlx5e_rqt*)* @mlx5e_create_rqt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_rqt(%struct.mlx5e_priv* %0, i32 %1, %struct.mlx5e_rqt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_rqt*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx5e_rqt* %2, %struct.mlx5e_rqt** %7, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 1
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  store %struct.mlx5_core_dev* %16, %struct.mlx5_core_dev** %8, align 8
  %17 = load i32, i32* @create_rqt_in, align 4
  %18 = call i32 @MLX5_ST_SZ_BYTES(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = add i64 %19, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kvzalloc(i32 %25, i32 %26)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %84

33:                                               ; preds = %3
  %34 = load i32, i32* @create_rqt_in, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* @rqt_context, align 4
  %37 = call i8* @MLX5_ADDR_OF(i32 %34, i32* %35, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* @rqt_actual_size, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @MLX5_SET(i8* %38, i8* %39, i32 %40, i32 %41)
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* @rqt_max_size, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @MLX5_SET(i8* %43, i8* %44, i32 %45, i32 %46)
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %65, %33
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32*, i32** @rq_num, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @MLX5_SET(i8* %53, i8* %54, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %48

68:                                               ; preds = %48
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.mlx5e_rqt*, %struct.mlx5e_rqt** %7, align 8
  %73 = getelementptr inbounds %struct.mlx5e_rqt, %struct.mlx5e_rqt* %72, i32 0, i32 1
  %74 = call i32 @mlx5_core_create_rqt(%struct.mlx5_core_dev* %69, i32* %70, i32 %71, i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load %struct.mlx5e_rqt*, %struct.mlx5e_rqt** %7, align 8
  %79 = getelementptr inbounds %struct.mlx5e_rqt, %struct.mlx5e_rqt* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %68
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @kvfree(i32* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %30
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_create_rqt(%struct.mlx5_core_dev*, i32*, i32, i32*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
