; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@PCAN_USB_CMD_ARGS_LEN = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"setting BTR0=0x%02x BTR1=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, %struct.can_bittiming*)* @pcan_usb_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_set_bittiming(%struct.peak_usb_device* %0, %struct.can_bittiming* %1) #0 {
  %3 = alloca %struct.peak_usb_device*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %3, align 8
  store %struct.can_bittiming* %1, %struct.can_bittiming** %4, align 8
  %9 = load i32, i32* @PCAN_USB_CMD_ARGS_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %14 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %16, 63
  %18 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %19 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %21, 3
  %23 = shl i32 %22, 6
  %24 = or i32 %17, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %26 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %29 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %32, 15
  %34 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %35 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %37, 7
  %39 = shl i32 %38, 4
  %40 = or i32 %33, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %42 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, 128
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %2
  %52 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %53 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @netdev_info(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %58, i32* %59, align 16
  %60 = load i32, i32* %7, align 4
  %61 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %63 = call i32 @pcan_usb_send_cmd(%struct.peak_usb_device* %62, i32 1, i32 2, i32* %12)
  %64 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i32) #2

declare dso_local i32 @pcan_usb_send_cmd(%struct.peak_usb_device*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
