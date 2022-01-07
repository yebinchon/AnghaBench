; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_redirect_rqts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_redirect_rqts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.mlx5e_redirect_rqt_param = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MLX5E_INDIR_RQT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, i64)* @mlx5e_redirect_rqts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_redirect_rqts(%struct.mlx5e_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.mlx5e_redirect_rqt_param, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_redirect_rqt_param, align 4
  %8 = bitcast %struct.mlx5e_redirect_rqt_param* %3 to i64*
  store i64 %1, i64* %8, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MLX5E_INDIR_RQT_SIZE, align 4
  %22 = bitcast %struct.mlx5e_redirect_rqt_param* %3 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = call i32 @mlx5e_redirect_rqt(%struct.mlx5e_priv* %19, i32 %20, i32 %21, i64 %23)
  br label %25

25:                                               ; preds = %14, %2
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %67, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mlx5e_redirect_rqt_param, %struct.mlx5e_redirect_rqt_param* %7, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.mlx5e_redirect_rqt_param, %struct.mlx5e_redirect_rqt_param* %7, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = bitcast %struct.mlx5e_redirect_rqt_param* %3 to i64*
  %39 = load i64, i64* %38, align 4
  %40 = call i32 @mlx5e_get_direct_rqn(%struct.mlx5e_priv* %36, i32 %37, i64 %39)
  store i32 %40, i32* %35, align 4
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %32
  br label %67

52:                                               ; preds = %32
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  %62 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = bitcast %struct.mlx5e_redirect_rqt_param* %7 to i64*
  %65 = load i64, i64* %64, align 4
  %66 = call i32 @mlx5e_redirect_rqt(%struct.mlx5e_priv* %62, i32 %63, i32 1, i64 %65)
  br label %67

67:                                               ; preds = %52, %51
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %26

70:                                               ; preds = %26
  ret void
}

declare dso_local i32 @mlx5e_redirect_rqt(%struct.mlx5e_priv*, i32, i32, i64) #1

declare dso_local i32 @mlx5e_get_direct_rqn(%struct.mlx5e_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
