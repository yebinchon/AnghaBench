; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_getmaxrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_getmaxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_maxrate = type { i32* }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@MLX5E_100MB = common dso_local global i32 0, align 4
@MLX5E_1GB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"non-supported BW unit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_maxrate*)* @mlx5e_dcbnl_ieee_getmaxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_ieee_getmaxrate(%struct.net_device* %0, %struct.ieee_maxrate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_maxrate*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_maxrate* %1, %struct.ieee_maxrate** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mlx5e_priv* %15, %struct.mlx5e_priv** %6, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %17, align 8
  store %struct.mlx5_core_dev* %18, %struct.mlx5_core_dev** %7, align 8
  %19 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %27 = call i32 @mlx5_query_port_ets_rate_limit(%struct.mlx5_core_dev* %26, i32* %22, i32* %25)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %81

32:                                               ; preds = %2
  %33 = load %struct.ieee_maxrate*, %struct.ieee_maxrate** %5, align 8
  %34 = getelementptr inbounds %struct.ieee_maxrate, %struct.ieee_maxrate* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @memset(i32* %35, i32 0, i32 8)
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %77, %32
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %40 = call i32 @mlx5_max_tc(%struct.mlx5_core_dev* %39)
  %41 = icmp sle i32 %38, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %25, i64 %44
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %74 [
    i32 130, label %47
    i32 128, label %60
    i32 129, label %73
  ]

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %22, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MLX5E_100MB, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load %struct.ieee_maxrate*, %struct.ieee_maxrate** %5, align 8
  %55 = getelementptr inbounds %struct.ieee_maxrate, %struct.ieee_maxrate* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %76

60:                                               ; preds = %42
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %22, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MLX5E_1GB, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load %struct.ieee_maxrate*, %struct.ieee_maxrate** %5, align 8
  %68 = getelementptr inbounds %struct.ieee_maxrate, %struct.ieee_maxrate* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  br label %76

73:                                               ; preds = %42
  br label %76

74:                                               ; preds = %42
  %75 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %73, %60, %47
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %37

80:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %81

81:                                               ; preds = %80, %30
  %82 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx5_query_port_ets_rate_limit(%struct.mlx5_core_dev*, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mlx5_max_tc(%struct.mlx5_core_dev*) #1

declare dso_local i32 @WARN(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
