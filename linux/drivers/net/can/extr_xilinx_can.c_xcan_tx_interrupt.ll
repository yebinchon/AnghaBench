; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_tx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_tx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.xcan_priv = type { i32, i32, i32, i32 (%struct.xcan_priv*, i32)*, i32, i32 (%struct.xcan_priv*, i32, i32)* }

@XCAN_ICR_OFFSET = common dso_local global i32 0, align 4
@XCAN_IXR_TXOK_MASK = common dso_local global i32 0, align 4
@XCAN_ISR_OFFSET = common dso_local global i32 0, align 4
@XCAN_IXR_TXFEMP_MASK = common dso_local global i32 0, align 4
@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @xcan_tx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xcan_tx_interrupt(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xcan_priv*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.xcan_priv* %12, %struct.xcan_priv** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %6, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %16 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %15, i32 0, i32 4
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %20 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %23 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %33 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %32, i32 0, i32 5
  %34 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %33, align 8
  %35 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %36 = load i32, i32* @XCAN_ICR_OFFSET, align 4
  %37 = load i32, i32* @XCAN_IXR_TXOK_MASK, align 4
  %38 = call i32 %34(%struct.xcan_priv* %35, i32 %36, i32 %37)
  %39 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %40 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %39, i32 0, i32 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %140

43:                                               ; preds = %2
  %44 = load i32, i32* %7, align 4
  %45 = icmp ugt i32 %44, 1
  br i1 %45, label %46, label %91

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %49 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ugt i32 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  br label %54

54:                                               ; preds = %69, %46
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @XCAN_IXR_TXOK_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  %62 = icmp eq i32 %61, 100
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %59, %54
  %68 = phi i1 [ false, %54 ], [ %66, %59 ]
  br i1 %68, label %69, label %83

69:                                               ; preds = %67
  %70 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %71 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %70, i32 0, i32 5
  %72 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %71, align 8
  %73 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %74 = load i32, i32* @XCAN_ICR_OFFSET, align 4
  %75 = load i32, i32* @XCAN_IXR_TXOK_MASK, align 4
  %76 = call i32 %72(%struct.xcan_priv* %73, i32 %74, i32 %75)
  %77 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %78 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %77, i32 0, i32 3
  %79 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %78, align 8
  %80 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %81 = load i32, i32* @XCAN_ISR_OFFSET, align 4
  %82 = call i32 %79(%struct.xcan_priv* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %54

83:                                               ; preds = %67
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @XCAN_IXR_TXFEMP_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %88, %83
  br label %99

91:                                               ; preds = %43
  %92 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %93 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %92, i32 0, i32 5
  %94 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %93, align 8
  %95 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %96 = load i32, i32* @XCAN_ICR_OFFSET, align 4
  %97 = load i32, i32* @XCAN_IXR_TXOK_MASK, align 4
  %98 = call i32 %94(%struct.xcan_priv* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %90
  br label %100

100:                                              ; preds = %104, %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %8, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %100
  %105 = load %struct.net_device*, %struct.net_device** %3, align 8
  %106 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %107 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %110 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = urem i32 %108, %111
  %113 = call i64 @can_get_echo_skb(%struct.net_device* %105, i32 %112)
  %114 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %115 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %113
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 4
  %120 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %121 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %125 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %100

128:                                              ; preds = %100
  %129 = load %struct.net_device*, %struct.net_device** %3, align 8
  %130 = call i32 @netif_wake_queue(%struct.net_device* %129)
  %131 = load %struct.xcan_priv*, %struct.xcan_priv** %5, align 8
  %132 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %131, i32 0, i32 4
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %137 = call i32 @can_led_event(%struct.net_device* %135, i32 %136)
  %138 = load %struct.net_device*, %struct.net_device** %3, align 8
  %139 = call i32 @xcan_update_error_state_after_rxtx(%struct.net_device* %138)
  br label %140

140:                                              ; preds = %128, %31
  ret void
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @can_get_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @xcan_update_error_state_after_rxtx(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
