; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.spider_net_card = type { i32, i32, i32, i32, i32*, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@BCM54XX_COPPER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SPIDER_NET_ANEG_TIMER = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@spider_net_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spider_net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.spider_net_card*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.spider_net_card* @netdev_priv(%struct.net_device* %6)
  store %struct.spider_net_card* %7, %struct.spider_net_card** %4, align 8
  %8 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %9 = call i32 @spider_net_init_firmware(%struct.spider_net_card* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %105

13:                                               ; preds = %1
  %14 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %15 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @BCM54XX_COPPER, align 4
  %17 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %18 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %20 = call i32 @spider_net_setup_aneg(%struct.spider_net_card* %19)
  %21 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %22 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %13
  %29 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %30 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %29, i32 0, i32 0
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* @SPIDER_NET_ANEG_TIMER, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @mod_timer(i32* %30, i64 %33)
  br label %35

35:                                               ; preds = %28, %13
  %36 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %37 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %38 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %37, i32 0, i32 1
  %39 = call i32 @spider_net_init_chain(%struct.spider_net_card* %36, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %101

43:                                               ; preds = %35
  %44 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %45 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %44, i32 0, i32 4
  store i32* null, i32** %45, align 8
  %46 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %47 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %48 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %47, i32 0, i32 2
  %49 = call i32 @spider_net_init_chain(%struct.spider_net_card* %46, i32* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %96

53:                                               ; preds = %43
  %54 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %55 = call i32 @spider_net_alloc_rx_skbs(%struct.spider_net_card* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %91

59:                                               ; preds = %53
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 @spider_net_set_multi(%struct.net_device* %60)
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @spider_net_interrupt, align 4
  %68 = load i32, i32* @IRQF_SHARED, align 4
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = call i64 @request_irq(i32 %66, i32 %67, i32 %68, i32 %71, %struct.net_device* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  br label %88

76:                                               ; preds = %59
  %77 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %78 = call i32 @spider_net_enable_card(%struct.spider_net_card* %77)
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i32 @netif_start_queue(%struct.net_device* %79)
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = call i32 @netif_carrier_on(%struct.net_device* %81)
  %83 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %84 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %83, i32 0, i32 3
  %85 = call i32 @napi_enable(i32* %84)
  %86 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %87 = call i32 @spider_net_enable_interrupts(%struct.spider_net_card* %86)
  store i32 0, i32* %2, align 4
  br label %107

88:                                               ; preds = %75
  %89 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %90 = call i32 @spider_net_free_rx_chain_contents(%struct.spider_net_card* %89)
  br label %91

91:                                               ; preds = %88, %58
  %92 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %93 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %94 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %93, i32 0, i32 2
  %95 = call i32 @spider_net_free_chain(%struct.spider_net_card* %92, i32* %94)
  br label %96

96:                                               ; preds = %91, %52
  %97 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %98 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %99 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %98, i32 0, i32 1
  %100 = call i32 @spider_net_free_chain(%struct.spider_net_card* %97, i32* %99)
  br label %101

101:                                              ; preds = %96, %42
  %102 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %103 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %102, i32 0, i32 0
  %104 = call i32 @del_timer_sync(i32* %103)
  br label %105

105:                                              ; preds = %101, %12
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %76
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.spider_net_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spider_net_init_firmware(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_setup_aneg(%struct.spider_net_card*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spider_net_init_chain(%struct.spider_net_card*, i32*) #1

declare dso_local i32 @spider_net_alloc_rx_skbs(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_set_multi(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @spider_net_enable_card(%struct.spider_net_card*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @spider_net_enable_interrupts(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_free_rx_chain_contents(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_free_chain(%struct.spider_net_card*, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
