; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_eth_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_eth_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.netdata_local = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"shutting down %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lpc_eth_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_eth_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.netdata_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.netdata_local* @netdev_priv(%struct.net_device* %5)
  store %struct.netdata_local* %6, %struct.netdata_local** %4, align 8
  %7 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %8 = call i64 @netif_msg_ifdown(%struct.netdata_local* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %12 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %21 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %20, i32 0, i32 3
  %22 = call i32 @napi_disable(i32* %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @netif_stop_queue(%struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @phy_stop(i64 %32)
  br label %34

34:                                               ; preds = %29, %19
  %35 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %36 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %35, i32 0, i32 1
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %40 = call i32 @__lpc_eth_reset(%struct.netdata_local* %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @netif_carrier_off(%struct.net_device* %41)
  %43 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %44 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @LPC_ENET_MAC1(i32 %45)
  %47 = call i32 @writel(i32 0, i32 %46)
  %48 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %49 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @LPC_ENET_MAC2(i32 %50)
  %52 = call i32 @writel(i32 0, i32 %51)
  %53 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %54 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %53, i32 0, i32 1
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %58 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @clk_disable_unprepare(i32 %59)
  ret i32 0
}

declare dso_local %struct.netdata_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_ifdown(%struct.netdata_local*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__lpc_eth_reset(%struct.netdata_local*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC_ENET_MAC1(i32) #1

declare dso_local i32 @LPC_ENET_MAC2(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
