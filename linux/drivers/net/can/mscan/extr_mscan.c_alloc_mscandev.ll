; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/mscan/extr_mscan.c_alloc_mscandev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/mscan/extr_mscan.c_alloc_mscandev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32* }
%struct.mscan_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@MSCAN_ECHO_SKB_MAX = common dso_local global i32 0, align 4
@mscan_netdev_ops = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@mscan_rx_poll = common dso_local global i32 0, align 4
@mscan_bittiming_const = common dso_local global i32 0, align 4
@mscan_do_set_bittiming = common dso_local global i32 0, align 4
@mscan_do_set_mode = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@TX_QUEUE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_mscandev() #0 {
  %1 = alloca %struct.net_device*, align 8
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mscan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MSCAN_ECHO_SKB_MAX, align 4
  %6 = call %struct.net_device* @alloc_candev(i32 40, i32 %5)
  store %struct.net_device* %6, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store %struct.net_device* null, %struct.net_device** %1, align 8
  br label %69

10:                                               ; preds = %0
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.mscan_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.mscan_priv* %12, %struct.mscan_priv** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  store i32* @mscan_netdev_ops, i32** %14, align 8
  %15 = load i32, i32* @IFF_ECHO, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load %struct.mscan_priv*, %struct.mscan_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mscan_priv, %struct.mscan_priv* %21, i32 0, i32 2
  %23 = load i32, i32* @mscan_rx_poll, align 4
  %24 = call i32 @netif_napi_add(%struct.net_device* %20, i32* %22, i32 %23, i32 8)
  %25 = load %struct.mscan_priv*, %struct.mscan_priv** %3, align 8
  %26 = getelementptr inbounds %struct.mscan_priv, %struct.mscan_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  store i32* @mscan_bittiming_const, i32** %27, align 8
  %28 = load i32, i32* @mscan_do_set_bittiming, align 4
  %29 = load %struct.mscan_priv*, %struct.mscan_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mscan_priv, %struct.mscan_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @mscan_do_set_mode, align 4
  %33 = load %struct.mscan_priv*, %struct.mscan_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mscan_priv, %struct.mscan_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %37 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.mscan_priv*, %struct.mscan_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mscan_priv, %struct.mscan_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %64, %10
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @TX_QUEUE_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.mscan_priv*, %struct.mscan_priv** %3, align 8
  %49 = getelementptr inbounds %struct.mscan_priv, %struct.mscan_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 1, %55
  %57 = load %struct.mscan_priv*, %struct.mscan_priv** %3, align 8
  %58 = getelementptr inbounds %struct.mscan_priv, %struct.mscan_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %56, i32* %63, align 4
  br label %64

64:                                               ; preds = %46
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %42

67:                                               ; preds = %42
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  store %struct.net_device* %68, %struct.net_device** %1, align 8
  br label %69

69:                                               ; preds = %67, %9
  %70 = load %struct.net_device*, %struct.net_device** %1, align 8
  ret %struct.net_device* %70
}

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local %struct.mscan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
