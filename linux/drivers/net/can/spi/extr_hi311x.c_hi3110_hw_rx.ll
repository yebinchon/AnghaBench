; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_hw_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_hw_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.hi3110_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32, i64, i32 }

@HI3110_RX_BUF_LEN = common dso_local global i32 0, align 4
@HI3110_FIFO_WOTIME_TAG_OFF = common dso_local global i64 0, align 8
@HI3110_FIFO_WOTIME_TAG_IDE = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@HI3110_FIFO_WOTIME_ID_OFF = common dso_local global i64 0, align 8
@HI3110_FIFO_WOTIME_DLC_OFF = common dso_local global i64 0, align 8
@HI3110_FIFO_WOTIME_ID_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@HI3110_FIFO_WOTIME_DAT_OFF = common dso_local global i32 0, align 4
@CAN_LED_EVENT_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @hi3110_hw_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hi3110_hw_rx(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.hi3110_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %10 = call %struct.hi3110_priv* @spi_get_drvdata(%struct.spi_device* %9)
  store %struct.hi3110_priv* %10, %struct.hi3110_priv** %3, align 8
  %11 = load i32, i32* @HI3110_RX_BUF_LEN, align 4
  %12 = sub nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %17 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_5__* %18, %struct.can_frame** %5)
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %24 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  store i32 1, i32* %8, align 4
  br label %151

30:                                               ; preds = %1
  %31 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %32 = call i32 @hi3110_hw_rx_frame(%struct.spi_device* %31, i32* %15)
  %33 = load i64, i64* @HI3110_FIFO_WOTIME_TAG_OFF, align 8
  %34 = getelementptr inbounds i32, i32* %15, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HI3110_FIFO_WOTIME_TAG_IDE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %30
  %40 = load i32, i32* @CAN_EFF_FLAG, align 4
  %41 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %42 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* @HI3110_FIFO_WOTIME_ID_OFF, align 8
  %44 = getelementptr inbounds i32, i32* %15, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 21
  %47 = load i64, i64* @HI3110_FIFO_WOTIME_ID_OFF, align 8
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds i32, i32* %15, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 224
  %52 = ashr i32 %51, 5
  %53 = shl i32 %52, 18
  %54 = or i32 %46, %53
  %55 = load i64, i64* @HI3110_FIFO_WOTIME_ID_OFF, align 8
  %56 = add i64 %55, 1
  %57 = getelementptr inbounds i32, i32* %15, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 7
  %60 = shl i32 %59, 15
  %61 = or i32 %54, %60
  %62 = load i64, i64* @HI3110_FIFO_WOTIME_ID_OFF, align 8
  %63 = add i64 %62, 2
  %64 = getelementptr inbounds i32, i32* %15, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 7
  %67 = or i32 %61, %66
  %68 = load i64, i64* @HI3110_FIFO_WOTIME_ID_OFF, align 8
  %69 = add i64 %68, 3
  %70 = getelementptr inbounds i32, i32* %15, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 1
  %73 = or i32 %67, %72
  %74 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %75 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %92

78:                                               ; preds = %30
  %79 = load i64, i64* @HI3110_FIFO_WOTIME_ID_OFF, align 8
  %80 = getelementptr inbounds i32, i32* %15, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 3
  %83 = load i64, i64* @HI3110_FIFO_WOTIME_ID_OFF, align 8
  %84 = add i64 %83, 1
  %85 = getelementptr inbounds i32, i32* %15, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 224
  %88 = ashr i32 %87, 5
  %89 = or i32 %82, %88
  %90 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %91 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %78, %39
  %93 = load i64, i64* @HI3110_FIFO_WOTIME_DLC_OFF, align 8
  %94 = getelementptr inbounds i32, i32* %15, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 15
  %97 = call i64 @get_can_dlc(i32 %96)
  %98 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %99 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* @HI3110_FIFO_WOTIME_ID_OFF, align 8
  %101 = add i64 %100, 3
  %102 = getelementptr inbounds i32, i32* %15, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @HI3110_FIFO_WOTIME_ID_RTR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %92
  %108 = load i32, i32* @CAN_RTR_FLAG, align 4
  %109 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %110 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %124

113:                                              ; preds = %92
  %114 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %115 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @HI3110_FIFO_WOTIME_DAT_OFF, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %15, i64 %118
  %120 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %121 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @memcpy(i32 %116, i32* %119, i64 %122)
  br label %124

124:                                              ; preds = %113, %107
  %125 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %126 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %133 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %136 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %135, i32 0, i32 0
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %134
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 4
  %144 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %145 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load i32, i32* @CAN_LED_EVENT_RX, align 4
  %148 = call i32 @can_led_event(%struct.TYPE_5__* %146, i32 %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = call i32 @netif_rx_ni(%struct.sk_buff* %149)
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %124, %22
  %152 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %8, align 4
  switch i32 %153, label %155 [
    i32 0, label %154
    i32 1, label %154
  ]

154:                                              ; preds = %151, %151
  ret void

155:                                              ; preds = %151
  unreachable
}

declare dso_local %struct.hi3110_priv* @spi_get_drvdata(%struct.spi_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_5__*, %struct.can_frame**) #1

declare dso_local i32 @hi3110_hw_rx_frame(%struct.spi_device*, i32*) #1

declare dso_local i64 @get_can_dlc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @can_led_event(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
