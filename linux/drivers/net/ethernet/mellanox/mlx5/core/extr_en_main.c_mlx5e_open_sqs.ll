; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_sqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_sqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { i32, i64, i32*, %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i32, i32** }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_channel_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, %struct.mlx5e_params*, %struct.mlx5e_channel_param*)* @mlx5e_open_sqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_sqs(%struct.mlx5e_channel* %0, %struct.mlx5e_params* %1, %struct.mlx5e_channel_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_channel*, align 8
  %6 = alloca %struct.mlx5e_params*, align 8
  %7 = alloca %struct.mlx5e_channel_param*, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %5, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %6, align 8
  store %struct.mlx5e_channel_param* %2, %struct.mlx5e_channel_param** %7, align 8
  %12 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %12, i32 0, i32 3
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %13, align 8
  store %struct.mlx5e_priv* %14, %struct.mlx5e_priv** %8, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %62, %3
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = add nsw i32 %24, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %32 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %32, i32 0, i32 3
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %33, align 8
  %35 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32*, i32** %36, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %48 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %48, i32 0, i32 0
  %50 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @mlx5e_open_txqsq(%struct.mlx5e_channel* %31, i32 %45, i32 %46, %struct.mlx5e_params* %47, i32* %49, i32* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %21
  br label %66

61:                                               ; preds = %21
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %15

65:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %85

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %80, %66
  %70 = load i32, i32* %10, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %74 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @mlx5e_close_txqsq(i32* %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %10, align 4
  br label %69

83:                                               ; preds = %69
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %65
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @mlx5e_open_txqsq(%struct.mlx5e_channel*, i32, i32, %struct.mlx5e_params*, i32*, i32*, i32) #1

declare dso_local i32 @mlx5e_close_txqsq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
