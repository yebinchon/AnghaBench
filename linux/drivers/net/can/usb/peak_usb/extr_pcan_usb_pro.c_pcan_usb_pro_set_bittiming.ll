; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"setting ccbt=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, %struct.can_bittiming*)* @pcan_usb_pro_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_pro_set_bittiming(%struct.peak_usb_device* %0, %struct.can_bittiming* %1) #0 {
  %3 = alloca %struct.peak_usb_device*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca i32, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %3, align 8
  store %struct.can_bittiming* %1, %struct.can_bittiming** %4, align 8
  %6 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 8388608, i32 0
  store i32 %14, i32* %5, align 4
  %15 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %16 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 1
  %19 = shl i32 %18, 24
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %23 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = shl i32 %25, 20
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %30 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %33 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = sub nsw i32 %35, 1
  %37 = shl i32 %36, 16
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %41 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %47 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @netdev_info(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @pcan_usb_pro_set_bitrate(%struct.peak_usb_device* %51, i32 %52)
  ret i32 %53
}

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @pcan_usb_pro_set_bitrate(%struct.peak_usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
