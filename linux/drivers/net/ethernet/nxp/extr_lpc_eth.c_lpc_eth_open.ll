; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_eth_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_eth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.netdata_local = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"enabling %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lpc_eth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_eth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdata_local*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.netdata_local* @netdev_priv(%struct.net_device* %6)
  store %struct.netdata_local* %7, %struct.netdata_local** %4, align 8
  %8 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %9 = call i64 @netif_msg_ifup(%struct.netdata_local* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %13 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %22 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %47

29:                                               ; preds = %20
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @phy_resume(i32 %32)
  %34 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %35 = call i32 @__lpc_eth_reset(%struct.netdata_local* %34)
  %36 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %37 = call i32 @__lpc_eth_init(%struct.netdata_local* %36)
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @phy_start(i32 %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @netif_start_queue(%struct.net_device* %42)
  %44 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %45 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %44, i32 0, i32 0
  %46 = call i32 @napi_enable(i32* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %29, %27
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.netdata_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_ifup(%struct.netdata_local*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @phy_resume(i32) #1

declare dso_local i32 @__lpc_eth_reset(%struct.netdata_local*) #1

declare dso_local i32 @__lpc_eth_init(%struct.netdata_local*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
