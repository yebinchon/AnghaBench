; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dbcnl_validate_ets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dbcnl_validate_ets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_ets = type { i64*, i64*, i64* }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@MLX5E_MAX_PRIORITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Failed to validate ETS: priority value greater than max(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE_8021QAZ_TSA_ETS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to validate ETS: BW sum is illegal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_ets*, i32)* @mlx5e_dbcnl_validate_ets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dbcnl_validate_ets(%struct.net_device* %0, %struct.ieee_ets* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ieee_ets*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %32, %3
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %17 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MLX5E_MAX_PRIORITY, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = load i64, i64* @MLX5E_MAX_PRIORITY, align 8
  %28 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %88

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %11

35:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %63, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %42 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IEEE_8021QAZ_TSA_ETS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  %51 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %52 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %50, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %36

66:                                               ; preds = %36
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 100
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78, %75
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %88

87:                                               ; preds = %69, %66
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %84, %25
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
