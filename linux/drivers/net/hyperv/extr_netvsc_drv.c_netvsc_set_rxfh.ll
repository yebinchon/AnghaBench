; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { i32 }
%struct.netvsc_device = type { i64, %struct.rndis_device* }
%struct.rndis_device = type { i64*, i64* }

@ENODEV = common dso_local global i32 0, align 4
@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ITAB_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*, i64*, i64)* @netvsc_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_set_rxfh(%struct.net_device* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device_context*, align 8
  %11 = alloca %struct.netvsc_device*, align 8
  %12 = alloca %struct.rndis_device*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %14)
  store %struct.net_device_context* %15, %struct.net_device_context** %10, align 8
  %16 = load %struct.net_device_context*, %struct.net_device_context** %10, align 8
  %17 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.netvsc_device* @rtnl_dereference(i32 %18)
  store %struct.netvsc_device* %19, %struct.netvsc_device** %11, align 8
  %20 = load %struct.netvsc_device*, %struct.netvsc_device** %11, align 8
  %21 = icmp ne %struct.netvsc_device* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %100

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %100

36:                                               ; preds = %29, %25
  %37 = load %struct.netvsc_device*, %struct.netvsc_device** %11, align 8
  %38 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %37, i32 0, i32 1
  %39 = load %struct.rndis_device*, %struct.rndis_device** %38, align 8
  store %struct.rndis_device* %39, %struct.rndis_device** %12, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %85

42:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @ITAB_NUM, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i64*, i64** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.netvsc_device*, %struct.netvsc_device** %11, align 8
  %54 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %100

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %43

64:                                               ; preds = %43
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @ITAB_NUM, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load i64*, i64** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.rndis_device*, %struct.rndis_device** %12, align 8
  %76 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 %74, i64* %80, align 8
  br label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %65

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84, %36
  %86 = load i64*, i64** %8, align 8
  %87 = icmp ne i64* %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load i64*, i64** %7, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %100

92:                                               ; preds = %88
  %93 = load %struct.rndis_device*, %struct.rndis_device** %12, align 8
  %94 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  store i64* %95, i64** %8, align 8
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.rndis_device*, %struct.rndis_device** %12, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = call i32 @rndis_filter_set_rss_param(%struct.rndis_device* %97, i64* %98)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %91, %57, %33, %22
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rtnl_dereference(i32) #1

declare dso_local i32 @rndis_filter_set_rss_param(%struct.rndis_device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
