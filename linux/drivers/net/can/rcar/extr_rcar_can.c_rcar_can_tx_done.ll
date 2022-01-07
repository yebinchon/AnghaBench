; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.rcar_can_priv = type { i32, i64, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32, i32 }

@RCAR_CAN_TFCR_TFUST = common dso_local global i32 0, align 4
@RCAR_CAN_TFCR_TFUST_SHIFT = common dso_local global i32 0, align 4
@RCAR_CAN_FIFO_DEPTH = common dso_local global i64 0, align 8
@RCAR_CAN_ISR_TXFF = common dso_local global i32 0, align 4
@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rcar_can_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_can_tx_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rcar_can_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.rcar_can_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.rcar_can_priv* %8, %struct.rcar_can_priv** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  store %struct.net_device_stats* %10, %struct.net_device_stats** %4, align 8
  br label %11

11:                                               ; preds = %1, %34
  %12 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @readb(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @RCAR_CAN_TFCR_TFUST, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @RCAR_CAN_TFCR_TFUST_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %25, %28
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ule i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %11
  br label %77

34:                                               ; preds = %11
  %35 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %36 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %40 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %43 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RCAR_CAN_FIFO_DEPTH, align 8
  %46 = urem i64 %44, %45
  %47 = getelementptr inbounds i64, i64* %41, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %50 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %56 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RCAR_CAN_FIFO_DEPTH, align 8
  %62 = urem i64 %60, %61
  %63 = getelementptr inbounds i64, i64* %57, i64 %62
  store i64 0, i64* %63, align 8
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %66 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RCAR_CAN_FIFO_DEPTH, align 8
  %69 = urem i64 %67, %68
  %70 = call i32 @can_get_echo_skb(%struct.net_device* %64, i64 %69)
  %71 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %72 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = call i32 @netif_wake_queue(%struct.net_device* %75)
  br label %11

77:                                               ; preds = %33
  %78 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %79 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @readb(i32* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @RCAR_CAN_ISR_TXFF, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %88 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @writeb(i32 %86, i32* %90)
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %94 = call i32 @can_led_event(%struct.net_device* %92, i32 %93)
  ret void
}

declare dso_local %struct.rcar_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
