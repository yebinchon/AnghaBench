; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pch_can_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }

@PCH_RX_OBJ_END = common dso_local global i64 0, align 8
@PCH_CMASK_RX_TX_GET = common dso_local global i32 0, align 4
@PCH_CMASK_CLRINTPND = common dso_local global i32 0, align 4
@PCH_IF_MCONT_DLC = common dso_local global i32 0, align 4
@PCH_TX_OBJ_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @pch_can_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_can_tx_complete(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pch_can_priv*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.pch_can_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.pch_can_priv* %9, %struct.pch_can_priv** %5, align 8
  %10 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %11 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @PCH_RX_OBJ_END, align 8
  %17 = sub nsw i64 %15, %16
  %18 = sub nsw i64 %17, 1
  %19 = call i32 @can_get_echo_skb(%struct.net_device* %14, i64 %18)
  %20 = load i32, i32* @PCH_CMASK_RX_TX_GET, align 4
  %21 = load i32, i32* @PCH_CMASK_CLRINTPND, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %24 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = call i32 @iowrite32(i32 %22, i32* %29)
  %31 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %32 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @pch_can_rw_msg_obj(i32* %37, i64 %38)
  %40 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %41 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @ioread32(i32* %46)
  %48 = load i32, i32* @PCH_IF_MCONT_DLC, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @get_can_dlc(i32 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %53 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %59 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @PCH_TX_OBJ_END, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %2
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @netif_wake_queue(%struct.net_device* %66)
  br label %68

68:                                               ; preds = %65, %2
  ret void
}

declare dso_local %struct.pch_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i64) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_can_rw_msg_obj(i32*, i64) #1

declare dso_local i64 @get_can_dlc(i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
