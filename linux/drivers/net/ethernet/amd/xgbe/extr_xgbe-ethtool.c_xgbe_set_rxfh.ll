; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgbe_prv_data = type { %struct.xgbe_hw_if }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.0*, i32*)*, i32 (%struct.xgbe_prv_data.1*, i64*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque

@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"unsupported hash function\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64)* @xgbe_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_rxfh(%struct.net_device* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xgbe_prv_data*, align 8
  %11 = alloca %struct.xgbe_hw_if*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %13)
  store %struct.xgbe_prv_data* %14, %struct.xgbe_prv_data** %10, align 8
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %10, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 0
  store %struct.xgbe_hw_if* %16, %struct.xgbe_hw_if** %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %62

29:                                               ; preds = %20, %4
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %11, align 8
  %34 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %33, i32 0, i32 0
  %35 = load i32 (%struct.xgbe_prv_data.0*, i32*)*, i32 (%struct.xgbe_prv_data.0*, i32*)** %34, align 8
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %10, align 8
  %37 = bitcast %struct.xgbe_prv_data* %36 to %struct.xgbe_prv_data.0*
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 %35(%struct.xgbe_prv_data.0* %37, i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %62

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i64*, i64** %8, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %11, align 8
  %50 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %49, i32 0, i32 1
  %51 = load i32 (%struct.xgbe_prv_data.1*, i64*)*, i32 (%struct.xgbe_prv_data.1*, i64*)** %50, align 8
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %10, align 8
  %53 = bitcast %struct.xgbe_prv_data* %52 to %struct.xgbe_prv_data.1*
  %54 = load i64*, i64** %8, align 8
  %55 = call i32 %51(%struct.xgbe_prv_data.1* %53, i64* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %62

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %45
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %58, %42, %24
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
