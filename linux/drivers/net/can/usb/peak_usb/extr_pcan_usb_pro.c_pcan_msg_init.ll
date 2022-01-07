; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_msg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_msg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_usb_pro_msg = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@PCAN_USBPRO_MSG_HEADER_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pcan_usb_pro_msg*, i8*, i32)* @pcan_msg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pcan_msg_init(%struct.pcan_usb_pro_msg* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pcan_usb_pro_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.pcan_usb_pro_msg* %0, %struct.pcan_usb_pro_msg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCAN_USBPRO_MSG_HEADER_LEN, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %35

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %16 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* %14, i32** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %20 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %22 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 8
  %23 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %24 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @PCAN_USBPRO_MSG_HEADER_LEN, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %31 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.pcan_usb_pro_msg*, %struct.pcan_usb_pro_msg** %5, align 8
  %33 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %4, align 8
  br label %35

35:                                               ; preds = %12, %11
  %36 = load i32*, i32** %4, align 8
  ret i32* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
