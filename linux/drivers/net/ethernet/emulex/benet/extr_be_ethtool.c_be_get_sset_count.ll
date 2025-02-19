; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32, i32 }

@ETHTOOL_TESTS_NUM = common dso_local global i32 0, align 4
@ETHTOOL_STATS_NUM = common dso_local global i32 0, align 4
@ETHTOOL_RXSTATS_NUM = common dso_local global i32 0, align 4
@ETHTOOL_TXSTATS_NUM = common dso_local global i32 0, align 4
@be_priv_flags = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @be_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.be_adapter* %8, %struct.be_adapter** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %29 [
    i32 128, label %10
    i32 129, label %12
    i32 130, label %26
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @ETHTOOL_TESTS_NUM, align 4
  store i32 %11, i32* %3, align 4
  br label %32

12:                                               ; preds = %2
  %13 = load i32, i32* @ETHTOOL_STATS_NUM, align 4
  %14 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ETHTOOL_RXSTATS_NUM, align 4
  %18 = mul nsw i32 %16, %17
  %19 = add nsw i32 %13, %18
  %20 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETHTOOL_TXSTATS_NUM, align 4
  %24 = mul nsw i32 %22, %23
  %25 = add nsw i32 %19, %24
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @be_priv_flags, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %26, %12, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
