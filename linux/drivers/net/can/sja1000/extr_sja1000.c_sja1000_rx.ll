; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.sja1000_priv = type { i32 (%struct.sja1000_priv*, i32)* }
%struct.can_frame = type { i32, i32*, i32 }
%struct.sk_buff = type { i32 }

@SJA1000_FI = common dso_local global i32 0, align 4
@SJA1000_FI_FF = common dso_local global i32 0, align 4
@SJA1000_EFF_BUF = common dso_local global i32 0, align 4
@SJA1000_ID1 = common dso_local global i32 0, align 4
@SJA1000_ID2 = common dso_local global i32 0, align 4
@SJA1000_ID3 = common dso_local global i32 0, align 4
@SJA1000_ID4 = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@SJA1000_SFF_BUF = common dso_local global i32 0, align 4
@SJA1000_FI_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@CMD_RRB = common dso_local global i32 0, align 4
@CAN_LED_EVENT_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sja1000_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1000_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sja1000_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.sja1000_priv* %12, %struct.sja1000_priv** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call %struct.sk_buff* @alloc_can_skb(%struct.net_device* %15, %struct.can_frame** %5)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp eq %struct.sk_buff* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %146

20:                                               ; preds = %1
  %21 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %22 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %21, i32 0, i32 0
  %23 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %22, align 8
  %24 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %25 = load i32, i32* @SJA1000_FI, align 4
  %26 = call i32 %23(%struct.sja1000_priv* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SJA1000_FI_FF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %20
  %32 = load i32, i32* @SJA1000_EFF_BUF, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %34 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %33, i32 0, i32 0
  %35 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %34, align 8
  %36 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %37 = load i32, i32* @SJA1000_ID1, align 4
  %38 = call i32 %35(%struct.sja1000_priv* %36, i32 %37)
  %39 = shl i32 %38, 21
  %40 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %41 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %40, i32 0, i32 0
  %42 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %41, align 8
  %43 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %44 = load i32, i32* @SJA1000_ID2, align 4
  %45 = call i32 %42(%struct.sja1000_priv* %43, i32 %44)
  %46 = shl i32 %45, 13
  %47 = or i32 %39, %46
  %48 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %49 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %48, i32 0, i32 0
  %50 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %49, align 8
  %51 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %52 = load i32, i32* @SJA1000_ID3, align 4
  %53 = call i32 %50(%struct.sja1000_priv* %51, i32 %52)
  %54 = shl i32 %53, 5
  %55 = or i32 %47, %54
  %56 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %57 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %56, i32 0, i32 0
  %58 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %57, align 8
  %59 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %60 = load i32, i32* @SJA1000_ID4, align 4
  %61 = call i32 %58(%struct.sja1000_priv* %59, i32 %60)
  %62 = ashr i32 %61, 3
  %63 = or i32 %55, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @CAN_EFF_FLAG, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %84

67:                                               ; preds = %20
  %68 = load i32, i32* @SJA1000_SFF_BUF, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %70 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %69, i32 0, i32 0
  %71 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %70, align 8
  %72 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %73 = load i32, i32* @SJA1000_ID1, align 4
  %74 = call i32 %71(%struct.sja1000_priv* %72, i32 %73)
  %75 = shl i32 %74, 3
  %76 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %77 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %76, i32 0, i32 0
  %78 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %77, align 8
  %79 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %80 = load i32, i32* @SJA1000_ID2, align 4
  %81 = call i32 %78(%struct.sja1000_priv* %79, i32 %80)
  %82 = ashr i32 %81, 5
  %83 = or i32 %75, %82
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %67, %31
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 15
  %87 = call i32 @get_can_dlc(i32 %86)
  %88 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %89 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @SJA1000_FI_RTR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %84
  %95 = load i32, i32* @CAN_RTR_FLAG, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %123

98:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %119, %98
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %102 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %107 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %106, i32 0, i32 0
  %108 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %107, align 8
  %109 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = call i32 %108(%struct.sja1000_priv* %109, i32 %110)
  %113 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %114 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %119

119:                                              ; preds = %105
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %99

122:                                              ; preds = %99
  br label %123

123:                                              ; preds = %122, %94
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %126 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %128 = load i32, i32* @CMD_RRB, align 4
  %129 = call i32 @sja1000_write_cmdreg(%struct.sja1000_priv* %127, i32 %128)
  %130 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %131 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %135 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %138 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = call i32 @netif_rx(%struct.sk_buff* %141)
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = load i32, i32* @CAN_LED_EVENT_RX, align 4
  %145 = call i32 @can_led_event(%struct.net_device* %143, i32 %144)
  br label %146

146:                                              ; preds = %123, %19
  ret void
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @sja1000_write_cmdreg(%struct.sja1000_priv*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
