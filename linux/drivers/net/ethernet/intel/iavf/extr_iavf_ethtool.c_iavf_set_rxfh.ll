; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_ethtool.c_iavf_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_ethtool.c_iavf_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iavf_adapter = type { i64, i64*, i32, i32 }

@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*, i64*, i64)* @iavf_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_set_rxfh(%struct.net_device* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iavf_adapter*, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.iavf_adapter* %13, %struct.iavf_adapter** %10, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %66

27:                                               ; preds = %20, %16
  %28 = load i64*, i64** %7, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %66

31:                                               ; preds = %27
  %32 = load i64*, i64** %8, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.iavf_adapter*, %struct.iavf_adapter** %10, align 8
  %36 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i64*, i64** %8, align 8
  %39 = load %struct.iavf_adapter*, %struct.iavf_adapter** %10, align 8
  %40 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @memcpy(i32 %37, i64* %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %31
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.iavf_adapter*, %struct.iavf_adapter** %10, align 8
  %47 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.iavf_adapter*, %struct.iavf_adapter** %10, align 8
  %56 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %54, i64* %59, align 8
  br label %60

60:                                               ; preds = %50
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %44

63:                                               ; preds = %44
  %64 = load %struct.iavf_adapter*, %struct.iavf_adapter** %10, align 8
  %65 = call i32 @iavf_config_rss(%struct.iavf_adapter* %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %30, %24
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @iavf_config_rss(%struct.iavf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
