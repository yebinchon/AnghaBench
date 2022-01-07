; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_can_rx_over_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_can_rx_over_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.can_frame = type { i64, i32*, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"No memory left for err_skb\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvaser_usb_can_rx_over_error(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  store %struct.net_device_stats* %8, %struct.net_device_stats** %4, align 8
  %9 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %10 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %14 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %17, %struct.can_frame** %5)
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %1
  %22 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %23 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @netdev_warn(%struct.net_device* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %1
  %31 = load i32, i32* @CAN_ERR_CRTL, align 4
  %32 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %33 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %37 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %38 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %42 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %46 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %49 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i32 @netif_rx(%struct.sk_buff* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %30, %21
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
