; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_query_cong_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_query_cong_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_lag = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5_core_dev* }

@query_cong_statistics_out = common dso_local global i32 0, align 4
@MLX5_MAX_PORTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lag_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_lag_query_cong_counters(%struct.mlx5_core_dev* %0, i32* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mlx5_lag*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %20 = load i32, i32* @query_cong_statistics_out, align 4
  %21 = call i32 @MLX5_ST_SZ_BYTES(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @MLX5_MAX_PORTS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca %struct.mlx5_core_dev*, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kvzalloc(i32 %26, i32 %27)
  store i8* %28, i8** %18, align 8
  %29 = load i8*, i8** %18, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %121

34:                                               ; preds = %4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(i32* %35, i32 0, i32 %39)
  %41 = call i32 @mutex_lock(i32* @lag_mutex)
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %43 = call %struct.mlx5_lag* @mlx5_lag_dev_get(%struct.mlx5_core_dev* %42)
  store %struct.mlx5_lag* %43, %struct.mlx5_lag** %13, align 8
  %44 = load %struct.mlx5_lag*, %struct.mlx5_lag** %13, align 8
  %45 = icmp ne %struct.mlx5_lag* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %34
  %47 = load %struct.mlx5_lag*, %struct.mlx5_lag** %13, align 8
  %48 = call i64 @__mlx5_lag_is_roce(%struct.mlx5_lag* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load i32, i32* @MLX5_MAX_PORTS, align 4
  store i32 %51, i32* %14, align 4
  %52 = load %struct.mlx5_lag*, %struct.mlx5_lag** %13, align 8
  %53 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %56, align 8
  %58 = getelementptr inbounds %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %25, i64 0
  store %struct.mlx5_core_dev* %57, %struct.mlx5_core_dev** %58, align 16
  %59 = load %struct.mlx5_lag*, %struct.mlx5_lag** %13, align 8
  %60 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %63, align 8
  %65 = getelementptr inbounds %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %25, i64 1
  store %struct.mlx5_core_dev* %64, %struct.mlx5_core_dev** %65, align 8
  br label %69

66:                                               ; preds = %46, %34
  store i32 1, i32* %14, align 4
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %68 = getelementptr inbounds %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %25, i64 0
  store %struct.mlx5_core_dev* %67, %struct.mlx5_core_dev** %68, align 16
  br label %69

69:                                               ; preds = %66, %50
  store i32 0, i32* %16, align 4
  br label %70

70:                                               ; preds = %112, %69
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %115

74:                                               ; preds = %70
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %25, i64 %76
  %78 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %77, align 8
  %79 = load i8*, i8** %18, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @mlx5_cmd_query_cong_counter(%struct.mlx5_core_dev* %78, i32 0, i8* %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %116

85:                                               ; preds = %74
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %108, %85
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %86
  %91 = load i8*, i8** %18, align 8
  %92 = load i64*, i64** %9, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr i8, i8* %91, i64 %96
  %98 = bitcast i8* %97 to i32*
  %99 = call i64 @be64_to_cpup(i32* %98)
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %99
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  br label %108

108:                                              ; preds = %90
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  br label %86

111:                                              ; preds = %86
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  br label %70

115:                                              ; preds = %70
  br label %116

116:                                              ; preds = %115, %84
  %117 = call i32 @mutex_unlock(i32* @lag_mutex)
  %118 = load i8*, i8** %18, align 8
  %119 = call i32 @kvfree(i8* %118)
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %121

121:                                              ; preds = %116, %31
  %122 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5_lag* @mlx5_lag_dev_get(%struct.mlx5_core_dev*) #1

declare dso_local i64 @__mlx5_lag_is_roce(%struct.mlx5_lag*) #1

declare dso_local i32 @mlx5_cmd_query_cong_counter(%struct.mlx5_core_dev*, i32, i8*, i32) #1

declare dso_local i64 @be64_to_cpup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
