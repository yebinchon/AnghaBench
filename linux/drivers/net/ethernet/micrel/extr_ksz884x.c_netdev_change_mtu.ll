; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { i32, %struct.net_device*, %struct.ksz_hw }
%struct.ksz_hw = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ETHERNET_HEADER_SIZE = common dso_local global i32 0, align 4
@REGULAR_RX_BUF_SIZE = common dso_local global i32 0, align 4
@RX_HUGE_FRAME = common dso_local global i32 0, align 4
@MAX_RX_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @netdev_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_priv*, align 8
  %7 = alloca %struct.dev_info*, align 8
  %8 = alloca %struct.ksz_hw*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.dev_priv* %11, %struct.dev_priv** %6, align 8
  %12 = load %struct.dev_priv*, %struct.dev_priv** %6, align 8
  %13 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %12, i32 0, i32 0
  %14 = load %struct.dev_info*, %struct.dev_info** %13, align 8
  store %struct.dev_info* %14, %struct.dev_info** %7, align 8
  %15 = load %struct.dev_info*, %struct.dev_info** %7, align 8
  %16 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %15, i32 0, i32 2
  store %struct.ksz_hw* %16, %struct.ksz_hw** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i64 @netif_running(%struct.net_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %69

23:                                               ; preds = %2
  %24 = load %struct.ksz_hw*, %struct.ksz_hw** %8, align 8
  %25 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load %struct.dev_info*, %struct.dev_info** %7, align 8
  %31 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %30, i32 0, i32 1
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  %33 = icmp ne %struct.net_device* %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %69

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ETHERNET_HEADER_SIZE, align 4
  %39 = add nsw i32 %37, %38
  %40 = add nsw i32 %39, 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @REGULAR_RX_BUF_SIZE, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load i32, i32* @RX_HUGE_FRAME, align 4
  %46 = load %struct.ksz_hw*, %struct.ksz_hw** %8, align 8
  %47 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @MAX_RX_BUF_SIZE, align 4
  store i32 %50, i32* %9, align 4
  br label %59

51:                                               ; preds = %36
  %52 = load i32, i32* @RX_HUGE_FRAME, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.ksz_hw*, %struct.ksz_hw** %8, align 8
  %55 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @REGULAR_RX_BUF_SIZE, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %51, %44
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 3
  %62 = and i32 %61, -4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.dev_info*, %struct.dev_info** %7, align 8
  %65 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %34, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
