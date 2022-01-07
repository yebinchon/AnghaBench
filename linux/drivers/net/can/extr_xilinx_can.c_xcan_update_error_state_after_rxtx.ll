; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_update_error_state_after_rxtx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_update_error_state_after_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.xcan_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i64 }

@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xcan_update_error_state_after_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xcan_update_error_state_after_rxtx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xcan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.xcan_priv* %10, %struct.xcan_priv** %3, align 8
  %11 = load %struct.xcan_priv*, %struct.xcan_priv** %3, align 8
  %12 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %63

23:                                               ; preds = %18, %1
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @xcan_current_error_state(%struct.net_device* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %30, %struct.can_frame** %7)
  store %struct.sk_buff* %31, %struct.sk_buff** %6, align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi %struct.can_frame* [ %37, %36 ], [ null, %38 ]
  %41 = call i32 @xcan_set_error_state(%struct.net_device* %32, i32 %33, %struct.can_frame* %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  store %struct.net_device_stats* %46, %struct.net_device_stats** %8, align 8
  %47 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %48 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %52 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %55 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @netif_rx(%struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %44, %39
  br label %63

63:                                               ; preds = %22, %62, %23
  ret void
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xcan_current_error_state(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @xcan_set_error_state(%struct.net_device*, i32, %struct.can_frame*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
