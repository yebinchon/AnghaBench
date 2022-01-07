; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.rcar_canfd_channel = type { i32, i64, i64, i32, i32, i64* }

@RCANFD_FIFO_DEPTH = common dso_local global i64 0, align 8
@RCANFD_CFFIFO_IDX = common dso_local global i32 0, align 4
@RCANFD_CFSTS_CFTXIF = common dso_local global i32 0, align 4
@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rcar_canfd_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_canfd_tx_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rcar_canfd_channel*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device* %10)
  store %struct.rcar_canfd_channel* %11, %struct.rcar_canfd_channel** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %4, align 8
  %14 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %15 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %90, %1
  %18 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %19 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RCANFD_FIFO_DEPTH, align 8
  %22 = urem i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %24 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %28 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %27, i32 0, i32 5
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %34 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %40 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %39, i32 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 0, i64* %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @can_get_echo_skb(%struct.net_device* %44, i64 %45)
  %47 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %48 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %47, i32 0, i32 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %52 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %56 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %60 = call i32 @RCANFD_CFSTS(i32 %58, i32 %59)
  %61 = call i32 @rcar_canfd_read(i32 %57, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @RCANFD_CFSTS_CFMC(i32 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @RCANFD_FIFO_DEPTH, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %17
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = call i32 @netif_wake_queue(%struct.net_device* %68)
  br label %70

70:                                               ; preds = %67, %17
  %71 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %72 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %75 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %73, %76
  %78 = load i64, i64* %8, align 8
  %79 = icmp ule i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %82 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %81, i32 0, i32 4
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  br label %91

85:                                               ; preds = %70
  %86 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %87 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %86, i32 0, i32 4
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %85
  br i1 true, label %17, label %91

91:                                               ; preds = %90, %80
  %92 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %93 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %97 = call i32 @RCANFD_CFSTS(i32 %95, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @RCANFD_CFSTS_CFTXIF, align 4
  %100 = xor i32 %99, -1
  %101 = and i32 %98, %100
  %102 = call i32 @rcar_canfd_write(i32 %94, i32 %97, i32 %101)
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %105 = call i32 @can_led_event(%struct.net_device* %103, i32 %104)
  ret void
}

declare dso_local %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rcar_canfd_read(i32, i32) #1

declare dso_local i32 @RCANFD_CFSTS(i32, i32) #1

declare dso_local i64 @RCANFD_CFSTS_CFMC(i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rcar_canfd_write(i32, i32, i32) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
