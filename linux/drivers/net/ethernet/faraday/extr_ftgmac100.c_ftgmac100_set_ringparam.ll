; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64 }
%struct.ftgmac100 = type { i64, i64, i32 }

@MAX_RX_QUEUE_ENTRIES = common dso_local global i64 0, align 8
@MAX_TX_QUEUE_ENTRIES = common dso_local global i64 0, align 8
@MIN_RX_QUEUE_ENTRIES = common dso_local global i64 0, align 8
@MIN_TX_QUEUE_ENTRIES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @ftgmac100_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.ftgmac100*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %7)
  store %struct.ftgmac100* %8, %struct.ftgmac100** %6, align 8
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MAX_RX_QUEUE_ENTRIES, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %44, label %14

14:                                               ; preds = %2
  %15 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAX_TX_QUEUE_ENTRIES, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %44, label %20

20:                                               ; preds = %14
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MIN_RX_QUEUE_ENTRIES, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %44, label %26

26:                                               ; preds = %20
  %27 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MIN_TX_QUEUE_ENTRIES, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @is_power_of_2(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @is_power_of_2(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38, %32, %26, %20, %14, %2
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %66

47:                                               ; preds = %38
  %48 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %52 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %57 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i64 @netif_running(%struct.net_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %47
  %62 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %63 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %62, i32 0, i32 2
  %64 = call i32 @schedule_work(i32* %63)
  br label %65

65:                                               ; preds = %61, %47
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %44
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
