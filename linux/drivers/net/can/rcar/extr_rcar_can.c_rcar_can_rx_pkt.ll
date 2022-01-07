; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_rx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_rx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_can_priv = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32, i32 }
%struct.can_frame = type { i32, i64, i8** }
%struct.sk_buff = type { i32 }

@RCAR_CAN_RX_FIFO_MBX = common dso_local global i64 0, align 8
@RCAR_CAN_IDE = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@RCAR_CAN_SID_SHIFT = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@RCAR_CAN_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@CAN_LED_EVENT_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_can_priv*)* @rcar_can_rx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_can_rx_pkt(%struct.rcar_can_priv* %0) #0 {
  %2 = alloca %struct.rcar_can_priv*, align 8
  %3 = alloca %struct.net_device_stats*, align 8
  %4 = alloca %struct.can_frame*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rcar_can_priv* %0, %struct.rcar_can_priv** %2, align 8
  %8 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %2, align 8
  %9 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %3, align 8
  %12 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %2, align 8
  %13 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_7__* %14, %struct.can_frame** %4)
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %20 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %128

23:                                               ; preds = %1
  %24 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %2, align 8
  %25 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i64, i64* @RCAR_CAN_RX_FIFO_MBX, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = call i32 @readl(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @RCAR_CAN_IDE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CAN_EFF_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @CAN_EFF_FLAG, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %44 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %53

45:                                               ; preds = %23
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @RCAR_CAN_SID_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* @CAN_SFF_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %52 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %45, %37
  %54 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %2, align 8
  %55 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i64, i64* @RCAR_CAN_RX_FIFO_MBX, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = call i8* @readb(i32* %61)
  %63 = ptrtoint i8* %62 to i64
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @get_can_dlc(i64 %64)
  %66 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %67 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @RCAR_CAN_RTR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %53
  %73 = load i32, i32* @CAN_RTR_FLAG, align 4
  %74 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %75 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %107

78:                                               ; preds = %53
  store i64 0, i64* %7, align 8
  br label %79

79:                                               ; preds = %103, %78
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %82 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ult i64 %80, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %79
  %86 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %2, align 8
  %87 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i64, i64* @RCAR_CAN_RX_FIFO_MBX, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = call i8* @readb(i32* %96)
  %98 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %99 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %98, i32 0, i32 2
  %100 = load i8**, i8*** %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds i8*, i8** %100, i64 %101
  store i8* %97, i8** %102, align 8
  br label %103

103:                                              ; preds = %85
  %104 = load i64, i64* %7, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %7, align 8
  br label %79

106:                                              ; preds = %79
  br label %107

107:                                              ; preds = %106, %72
  %108 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %2, align 8
  %109 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load i32, i32* @CAN_LED_EVENT_RX, align 4
  %112 = call i32 @can_led_event(%struct.TYPE_7__* %110, i32 %111)
  %113 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %114 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %117 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add i64 %119, %115
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  %122 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %123 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = call i32 @netif_receive_skb(%struct.sk_buff* %126)
  br label %128

128:                                              ; preds = %107, %18
  ret void
}

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_7__*, %struct.can_frame**) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i8* @readb(i32*) #1

declare dso_local i64 @get_can_dlc(i64) #1

declare dso_local i32 @can_led_event(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
