; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@ICE_FLAG_RSS_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RSS is not configured on this VSI!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*, i64*, i64*)* @ice_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_get_rxfh(%struct.net_device* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ice_netdev_priv*, align 8
  %11 = alloca %struct.ice_vsi*, align 8
  %12 = alloca %struct.ice_pf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.ice_netdev_priv* %17, %struct.ice_netdev_priv** %10, align 8
  %18 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %10, align 8
  %19 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %18, i32 0, i32 0
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %19, align 8
  store %struct.ice_vsi* %20, %struct.ice_vsi** %11, align 8
  %21 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %22 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %21, i32 0, i32 1
  %23 = load %struct.ice_pf*, %struct.ice_pf** %22, align 8
  store %struct.ice_pf* %23, %struct.ice_pf** %12, align 8
  store i32 0, i32* %13, align 4
  %24 = load i64*, i64** %9, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %4
  %30 = load i64*, i64** %7, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %101

33:                                               ; preds = %29
  %34 = load i32, i32* @ICE_FLAG_RSS_ENA, align 4
  %35 = load %struct.ice_pf*, %struct.ice_pf** %12, align 8
  %36 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @test_bit(i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i32 @netdev_warn(%struct.net_device* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %101

45:                                               ; preds = %33
  %46 = load %struct.ice_pf*, %struct.ice_pf** %12, align 8
  %47 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %51 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i64* @devm_kzalloc(i32* %49, i32 %52, i32 %53)
  store i64* %54, i64** %15, align 8
  %55 = load i64*, i64** %15, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %101

60:                                               ; preds = %45
  %61 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64*, i64** %15, align 8
  %64 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %65 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ice_get_rss(%struct.ice_vsi* %61, i64* %62, i64* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %93

72:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %89, %72
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %76 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load i64*, i64** %15, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %7, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %84, i64* %88, align 8
  br label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %73

92:                                               ; preds = %73
  br label %93

93:                                               ; preds = %92, %69
  %94 = load %struct.ice_pf*, %struct.ice_pf** %12, align 8
  %95 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64*, i64** %15, align 8
  %99 = call i32 @devm_kfree(i32* %97, i64* %98)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %93, %57, %40, %32
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i64* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @ice_get_rss(%struct.ice_vsi*, i64*, i64*, i32) #1

declare dso_local i32 @devm_kfree(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
