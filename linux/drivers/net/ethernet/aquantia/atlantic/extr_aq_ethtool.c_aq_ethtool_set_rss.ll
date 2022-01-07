; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_set_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_set_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.aq_nic_s = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.aq_nic_cfg_s = type { %struct.TYPE_5__ }

@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64)* @aq_ethtool_set_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_ethtool_set_rss(%struct.net_device* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.aq_nic_s*, align 8
  %11 = alloca %struct.aq_nic_cfg_s*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %15)
  store %struct.aq_nic_s* %16, %struct.aq_nic_s** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.aq_nic_s*, %struct.aq_nic_s** %10, align 8
  %18 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %17)
  store %struct.aq_nic_cfg_s* %18, %struct.aq_nic_cfg_s** %11, align 8
  %19 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %11, align 8
  %20 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %97

33:                                               ; preds = %26, %4
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %11, align 8
  %48 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %37

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57, %33
  %59 = load i64*, i64** %8, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %11, align 8
  %63 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i64*, i64** %8, align 8
  %67 = call i32 @memcpy(i32 %65, i64* %66, i32 4)
  %68 = load %struct.aq_nic_s*, %struct.aq_nic_s** %10, align 8
  %69 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.TYPE_5__*)** %71, align 8
  %73 = load %struct.aq_nic_s*, %struct.aq_nic_s** %10, align 8
  %74 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %11, align 8
  %77 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %76, i32 0, i32 0
  %78 = call i32 %72(i32 %75, %struct.TYPE_5__* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %61
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %5, align 4
  br label %97

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83, %58
  %85 = load %struct.aq_nic_s*, %struct.aq_nic_s** %10, align 8
  %86 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.TYPE_5__*)** %88, align 8
  %90 = load %struct.aq_nic_s*, %struct.aq_nic_s** %10, align 8
  %91 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %11, align 8
  %94 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %93, i32 0, i32 0
  %95 = call i32 %89(i32 %92, %struct.TYPE_5__* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %84, %81, %30
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
