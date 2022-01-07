; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.gemini_ethernet_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PHY init failed: %d\0A\00", align 1
@gmac_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"no IRQ\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"could not resize freeq\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"could not setup RXQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"could not setup TXQs\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@gmac_coalesce_delay_expired = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"opened\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @gmac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmac_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.gemini_ethernet_port*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %6)
  store %struct.gemini_ethernet_port* %7, %struct.gemini_ethernet_port** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @gmac_setup_phy(%struct.net_device* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %4, align 8
  %19 = load i32, i32* @ifup, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @netif_err(%struct.gemini_ethernet_port* %18, i32 %19, %struct.net_device* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %112

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @gmac_irq, align 4
  %30 = load i32, i32* @IRQF_SHARED, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @request_irq(i32 %28, i32 %29, i32 %30, i32 %33, %struct.net_device* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @netdev_err(%struct.net_device* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %112

42:                                               ; preds = %25
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @netif_carrier_off(%struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @phy_start(i32 %47)
  %49 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %4, align 8
  %50 = call i32 @geth_resize_freeq(%struct.gemini_ethernet_port* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @netdev_err(%struct.net_device* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %101

61:                                               ; preds = %53, %42
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @gmac_setup_rxq(%struct.net_device* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = call i32 @netdev_err(%struct.net_device* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %101

69:                                               ; preds = %61
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @gmac_setup_txqs(%struct.net_device* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = call i32 @netdev_err(%struct.net_device* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = call i32 @gmac_cleanup_rxq(%struct.net_device* %77)
  br label %101

79:                                               ; preds = %69
  %80 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %4, align 8
  %81 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %80, i32 0, i32 1
  %82 = call i32 @napi_enable(i32* %81)
  %83 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %4, align 8
  %84 = call i32 @gmac_start_dma(%struct.gemini_ethernet_port* %83)
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = call i32 @gmac_enable_irq(%struct.net_device* %85, i32 1)
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = call i32 @gmac_enable_tx_rx(%struct.net_device* %87)
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = call i32 @netif_tx_start_all_queues(%struct.net_device* %89)
  %91 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %4, align 8
  %92 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %91, i32 0, i32 0
  %93 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %94 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %95 = call i32 @hrtimer_init(%struct.TYPE_2__* %92, i32 %93, i32 %94)
  %96 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %4, align 8
  %97 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32* @gmac_coalesce_delay_expired, i32** %98, align 8
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = call i32 @netdev_dbg(%struct.net_device* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %112

101:                                              ; preds = %74, %66, %58
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @phy_stop(i32 %104)
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call i32 @free_irq(i32 %108, %struct.net_device* %109)
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %101, %79, %38, %17
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gmac_setup_phy(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.gemini_ethernet_port*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @geth_resize_freeq(%struct.gemini_ethernet_port*) #1

declare dso_local i32 @gmac_setup_rxq(%struct.net_device*) #1

declare dso_local i32 @gmac_setup_txqs(%struct.net_device*) #1

declare dso_local i32 @gmac_cleanup_rxq(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @gmac_start_dma(%struct.gemini_ethernet_port*) #1

declare dso_local i32 @gmac_enable_irq(%struct.net_device*, i32) #1

declare dso_local i32 @gmac_enable_tx_rx(%struct.net_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
