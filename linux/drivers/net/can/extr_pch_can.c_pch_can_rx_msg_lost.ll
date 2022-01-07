; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_rx_msg_lost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_rx_msg_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pch_can_priv = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Msg Obj is overwritten.\0A\00", align 1
@PCH_IF_MCONT_MSGLOST = common dso_local global i32 0, align 4
@PCH_CMASK_RDWR = common dso_local global i32 0, align 4
@PCH_CMASK_CTRL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @pch_can_rx_msg_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_can_rx_msg_lost(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pch_can_priv*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.can_frame*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.pch_can_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.pch_can_priv* %10, %struct.pch_can_priv** %5, align 8
  %11 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %12 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %6, align 8
  %15 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %16 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i32 @netdev_dbg(%struct.TYPE_6__* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %20 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* @PCH_IF_MCONT_MSGLOST, align 4
  %27 = call i32 @pch_can_bit_clear(i32* %25, i32 %26)
  %28 = load i32, i32* @PCH_CMASK_RDWR, align 4
  %29 = load i32, i32* @PCH_CMASK_CTRL, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %32 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i32 @iowrite32(i32 %30, i32* %37)
  %39 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %40 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @pch_can_rw_msg_obj(i32* %45, i32 %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %48, %struct.can_frame** %8)
  store %struct.sk_buff* %49, %struct.sk_buff** %7, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %2
  br label %74

53:                                               ; preds = %2
  %54 = load i32, i32* @CAN_ERR_CRTL, align 4
  %55 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %56 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %60 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %61 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %59, i32* %63, align 4
  %64 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %65 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = call i32 @netif_receive_skb(%struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %53, %52
  ret void
}

declare dso_local %struct.pch_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @pch_can_bit_clear(i32*, i32) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_can_rw_msg_obj(i32*, i32) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
