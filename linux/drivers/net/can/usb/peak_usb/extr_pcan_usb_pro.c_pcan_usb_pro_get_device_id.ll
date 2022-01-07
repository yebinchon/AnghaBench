; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_get_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_get_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32, i32 }
%struct.pcan_usb_pro_devid = type { i32 }
%struct.pcan_usb_pro_msg = type { i32 }

@PCAN_USB_MAX_CMD_LEN = common dso_local global i32 0, align 4
@PCAN_USBPRO_GETDEVID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, i32*)* @pcan_usb_pro_get_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_pro_get_device_id(%struct.peak_usb_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.peak_usb_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pcan_usb_pro_devid*, align 8
  %7 = alloca %struct.pcan_usb_pro_msg, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCAN_USB_MAX_CMD_LEN, align 4
  %14 = call i32* @pcan_msg_init_empty(%struct.pcan_usb_pro_msg* %7, i32 %12, i32 %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* @PCAN_USBPRO_GETDEVID, align 4
  %16 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pcan_msg_add_rec(%struct.pcan_usb_pro_msg* %7, i32 %15, i32 %18)
  %20 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %21 = call i32 @pcan_usb_pro_send_cmd(%struct.peak_usb_device* %20, %struct.pcan_usb_pro_msg* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %46

26:                                               ; preds = %2
  %27 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %28 = call i32 @pcan_usb_pro_wait_rsp(%struct.peak_usb_device* %27, %struct.pcan_usb_pro_msg* %7)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %26
  %34 = load i32*, i32** %9, align 8
  %35 = bitcast i32* %34 to %struct.pcan_usb_pro_devid*
  store %struct.pcan_usb_pro_devid* %35, %struct.pcan_usb_pro_devid** %6, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.pcan_usb_pro_devid*, %struct.pcan_usb_pro_devid** %6, align 8
  %40 = getelementptr inbounds %struct.pcan_usb_pro_devid, %struct.pcan_usb_pro_devid* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %31, %24
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32* @pcan_msg_init_empty(%struct.pcan_usb_pro_msg*, i32, i32) #1

declare dso_local i32 @pcan_msg_add_rec(%struct.pcan_usb_pro_msg*, i32, i32) #1

declare dso_local i32 @pcan_usb_pro_send_cmd(%struct.peak_usb_device*, %struct.pcan_usb_pro_msg*) #1

declare dso_local i32 @pcan_usb_pro_wait_rsp(%struct.peak_usb_device*, %struct.pcan_usb_pro_msg*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
