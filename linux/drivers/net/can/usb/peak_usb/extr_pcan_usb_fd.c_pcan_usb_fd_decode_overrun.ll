; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_decode_overrun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_decode_overrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_usb_fd_if = type { i32, %struct.peak_usb_device** }
%struct.peak_usb_device = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pucan_msg = type { i32 }
%struct.pcan_ufd_ovr_msg = type { i32 }
%struct.can_frame = type { i32*, i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcan_usb_fd_if*, %struct.pucan_msg*)* @pcan_usb_fd_decode_overrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_decode_overrun(%struct.pcan_usb_fd_if* %0, %struct.pucan_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcan_usb_fd_if*, align 8
  %5 = alloca %struct.pucan_msg*, align 8
  %6 = alloca %struct.pcan_ufd_ovr_msg*, align 8
  %7 = alloca %struct.peak_usb_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.can_frame*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.pcan_usb_fd_if* %0, %struct.pcan_usb_fd_if** %4, align 8
  store %struct.pucan_msg* %1, %struct.pucan_msg** %5, align 8
  %11 = load %struct.pucan_msg*, %struct.pucan_msg** %5, align 8
  %12 = bitcast %struct.pucan_msg* %11 to %struct.pcan_ufd_ovr_msg*
  store %struct.pcan_ufd_ovr_msg* %12, %struct.pcan_ufd_ovr_msg** %6, align 8
  %13 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %4, align 8
  %14 = getelementptr inbounds %struct.pcan_usb_fd_if, %struct.pcan_usb_fd_if* %13, i32 0, i32 1
  %15 = load %struct.peak_usb_device**, %struct.peak_usb_device*** %14, align 8
  %16 = load %struct.pcan_ufd_ovr_msg*, %struct.pcan_ufd_ovr_msg** %6, align 8
  %17 = call i64 @pufd_omsg_get_channel(%struct.pcan_ufd_ovr_msg* %16)
  %18 = getelementptr inbounds %struct.peak_usb_device*, %struct.peak_usb_device** %15, i64 %17
  %19 = load %struct.peak_usb_device*, %struct.peak_usb_device** %18, align 8
  store %struct.peak_usb_device* %19, %struct.peak_usb_device** %7, align 8
  %20 = load %struct.peak_usb_device*, %struct.peak_usb_device** %7, align 8
  %21 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %23, %struct.can_frame** %9)
  store %struct.sk_buff* %24, %struct.sk_buff** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %2
  %31 = load i32, i32* @CAN_ERR_CRTL, align 4
  %32 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %33 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %37 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %38 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %4, align 8
  %45 = getelementptr inbounds %struct.pcan_usb_fd_if, %struct.pcan_usb_fd_if* %44, i32 0, i32 0
  %46 = load %struct.pcan_ufd_ovr_msg*, %struct.pcan_ufd_ovr_msg** %6, align 8
  %47 = getelementptr inbounds %struct.pcan_ufd_ovr_msg, %struct.pcan_ufd_ovr_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = call i32 @peak_usb_netif_rx(%struct.sk_buff* %43, i32* %45, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %30, %27
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @pufd_omsg_get_channel(%struct.pcan_ufd_ovr_msg*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @peak_usb_netif_rx(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
