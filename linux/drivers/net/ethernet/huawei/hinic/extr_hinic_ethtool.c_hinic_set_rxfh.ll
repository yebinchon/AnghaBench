; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hinic_dev = type { i32, i32, i32 }

@HINIC_RSS_ENABLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@ETH_RSS_HASH_XOR = common dso_local global i64 0, align 8
@HINIC_RSS_HASH_ENGINE_TYPE_XOR = common dso_local global i32 0, align 4
@HINIC_RSS_HASH_ENGINE_TYPE_TOEP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64)* @hinic_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinic_set_rxfh(%struct.net_device* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hinic_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %12)
  store %struct.hinic_dev* %13, %struct.hinic_dev** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %15 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HINIC_RSS_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %70

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @ETH_RSS_HASH_XOR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %70

38:                                               ; preds = %31, %27
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @ETH_RSS_HASH_XOR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @HINIC_RSS_HASH_ENGINE_TYPE_XOR, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @HINIC_RSS_HASH_ENGINE_TYPE_TOEP, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %49 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %51 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %52 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hinic_dev*, %struct.hinic_dev** %10, align 8
  %55 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @hinic_rss_set_hash_engine(%struct.hinic_dev* %50, i32 %53, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %70

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %23
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = call i32 @__set_rss_rxfh(%struct.net_device* %65, i32* %66, i64* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %60, %35, %20
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hinic_rss_set_hash_engine(%struct.hinic_dev*, i32, i32) #1

declare dso_local i32 @__set_rss_rxfh(%struct.net_device*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
