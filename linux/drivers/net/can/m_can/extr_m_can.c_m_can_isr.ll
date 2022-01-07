; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.m_can_classdev = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.m_can_classdev*)* }

@M_CAN_IR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IR_ALL_INT = common dso_local global i32 0, align 4
@IR_RF0N = common dso_local global i32 0, align 4
@IR_ERR_ALL_30X = common dso_local global i32 0, align 4
@IR_TC = common dso_local global i32 0, align 4
@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@IR_TEFN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @m_can_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.m_can_classdev*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %12)
  store %struct.m_can_classdev* %13, %struct.m_can_classdev** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %8, align 8
  %16 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %17 = load i32, i32* @M_CAN_IR, align 4
  %18 = call i32 @m_can_read(%struct.m_can_classdev* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %130

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @IR_ALL_INT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %30 = load i32, i32* @M_CAN_IR, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @m_can_write(%struct.m_can_classdev* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %35 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.m_can_classdev*)*, i32 (%struct.m_can_classdev*)** %37, align 8
  %39 = icmp ne i32 (%struct.m_can_classdev*)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %42 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.m_can_classdev*)*, i32 (%struct.m_can_classdev*)** %44, align 8
  %46 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %47 = call i32 %45(%struct.m_can_classdev* %46)
  br label %48

48:                                               ; preds = %40, %33
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @IR_RF0N, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @IR_ERR_ALL_30X, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %61 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %63 = call i32 @m_can_disable_all_interrupts(%struct.m_can_classdev* %62)
  %64 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %65 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %58
  %69 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %70 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %69, i32 0, i32 2
  %71 = call i32 @napi_schedule(i32* %70)
  br label %75

72:                                               ; preds = %58
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = call i32 @m_can_rx_peripheral(%struct.net_device* %73)
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %75, %53
  %77 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %78 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 30
  br i1 %80, label %81, label %105

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @IR_TC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = call i64 @can_get_echo_skb(%struct.net_device* %87, i32 0)
  %89 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %90 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %96 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.net_device*, %struct.net_device** %6, align 8
  %100 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %101 = call i32 @can_led_event(%struct.net_device* %99, i32 %100)
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = call i32 @netif_wake_queue(%struct.net_device* %102)
  br label %104

104:                                              ; preds = %86, %81
  br label %128

105:                                              ; preds = %76
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @IR_TEFN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = load %struct.net_device*, %struct.net_device** %6, align 8
  %112 = call i32 @m_can_echo_tx_event(%struct.net_device* %111)
  %113 = load %struct.net_device*, %struct.net_device** %6, align 8
  %114 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %115 = call i32 @can_led_event(%struct.net_device* %113, i32 %114)
  %116 = load %struct.net_device*, %struct.net_device** %6, align 8
  %117 = call i64 @netif_queue_stopped(%struct.net_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %110
  %120 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %121 = call i32 @m_can_tx_fifo_full(%struct.m_can_classdev* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load %struct.net_device*, %struct.net_device** %6, align 8
  %125 = call i32 @netif_wake_queue(%struct.net_device* %124)
  br label %126

126:                                              ; preds = %123, %119, %110
  br label %127

127:                                              ; preds = %126, %105
  br label %128

128:                                              ; preds = %127, %104
  %129 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %21
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @m_can_read(%struct.m_can_classdev*, i32) #1

declare dso_local i32 @m_can_write(%struct.m_can_classdev*, i32, i32) #1

declare dso_local i32 @m_can_disable_all_interrupts(%struct.m_can_classdev*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @m_can_rx_peripheral(%struct.net_device*) #1

declare dso_local i64 @can_get_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @m_can_echo_tx_event(%struct.net_device*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @m_can_tx_fifo_full(%struct.m_can_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
