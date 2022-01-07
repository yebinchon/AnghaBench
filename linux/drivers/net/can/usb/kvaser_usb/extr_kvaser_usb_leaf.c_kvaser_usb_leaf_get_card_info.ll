; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_get_card_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_get_card_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.kvaser_cmd = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@CMD_GET_CARD_INFO = common dso_local global i32 0, align 4
@CMD_GET_CARD_INFO_REPLY = common dso_local global i32 0, align 4
@KVASER_USB_MAX_NET_DEVICES = common dso_local global i32 0, align 4
@KVASER_USBCAN = common dso_local global i64 0, align 8
@MAX_USBCAN_NET_DEVICES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*)* @kvaser_usb_leaf_get_card_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_leaf_get_card_info(%struct.kvaser_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd, align 4
  %5 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  %6 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %7 = load i32, i32* @CMD_GET_CARD_INFO, align 4
  %8 = call i32 @kvaser_usb_leaf_send_simple_cmd(%struct.kvaser_usb* %6, i32 %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %15 = load i32, i32* @CMD_GET_CARD_INFO_REPLY, align 4
  %16 = call i32 @kvaser_usb_leaf_wait_cmd(%struct.kvaser_usb* %14, i32 %15, %struct.kvaser_cmd* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %27 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %29 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @KVASER_USB_MAX_NET_DEVICES, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %21
  %34 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %35 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @KVASER_USBCAN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %43 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MAX_USBCAN_NET_DEVICES, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %21
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %41, %33
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %47, %19, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @kvaser_usb_leaf_send_simple_cmd(%struct.kvaser_usb*, i32, i32) #1

declare dso_local i32 @kvaser_usb_leaf_wait_cmd(%struct.kvaser_usb*, i32, %struct.kvaser_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
