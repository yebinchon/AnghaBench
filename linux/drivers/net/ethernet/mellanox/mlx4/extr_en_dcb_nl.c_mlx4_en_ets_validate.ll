; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_ets_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_ets_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.ieee_ets = type { i64*, i32*, i32* }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@MLX4_EN_NUM_UP_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Bad priority in UP <=> TC mapping. TC: %d, UP: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"TC[%d]: Not supported TSA: %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX4_EN_BW_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Bad ETS BW sum: %d. Should be exactly 100%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.ieee_ets*)* @mlx4_en_ets_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_ets_validate(%struct.mlx4_en_priv* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %69, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %72

13:                                               ; preds = %9
  %14 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %15 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MLX4_EN_NUM_UP_HIGH, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %27 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (%struct.mlx4_en_priv*, i8*, i32, ...) @en_err(%struct.mlx4_en_priv* %24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %86

36:                                               ; preds = %13
  %37 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %38 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %55 [
    i32 128, label %44
    i32 129, label %44
    i32 130, label %45
  ]

44:                                               ; preds = %36, %36
  br label %68

45:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  %46 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %47 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %68

55:                                               ; preds = %36
  %56 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %59 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.mlx4_en_priv*, i8*, i32, ...) @en_err(%struct.mlx4_en_priv* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %64)
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %86

68:                                               ; preds = %45, %44
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %9

72:                                               ; preds = %9
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @MLX4_EN_BW_MAX, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (%struct.mlx4_en_priv*, i8*, i32, ...) @en_err(%struct.mlx4_en_priv* %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %75, %72
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %79, %55, %23
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
