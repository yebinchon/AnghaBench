; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_speed_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_speed_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_cdc_speed_change = type { i32, i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%u mbit/s downlink %u mbit/s uplink\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%u kbit/s downlink %u kbit/s uplink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.usb_cdc_speed_change*)* @cdc_ncm_speed_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdc_ncm_speed_change(%struct.usbnet* %0, %struct.usb_cdc_speed_change* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_cdc_speed_change*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_cdc_speed_change* %1, %struct.usb_cdc_speed_change** %4, align 8
  %7 = load %struct.usb_cdc_speed_change*, %struct.usb_cdc_speed_change** %4, align 8
  %8 = getelementptr inbounds %struct.usb_cdc_speed_change, %struct.usb_cdc_speed_change* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le32_to_cpu(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.usb_cdc_speed_change*, %struct.usb_cdc_speed_change** %4, align 8
  %12 = getelementptr inbounds %struct.usb_cdc_speed_change, %struct.usb_cdc_speed_change* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 1000000
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 1000000
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %22 = load i32, i32* @link, align 4
  %23 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = udiv i32 %26, 1000000
  %28 = load i32, i32* %6, align 4
  %29 = udiv i32 %28, 1000000
  %30 = call i32 @netif_info(%struct.usbnet* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  br label %42

31:                                               ; preds = %17, %2
  %32 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %33 = load i32, i32* @link, align 4
  %34 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = udiv i32 %37, 1000
  %39 = load i32, i32* %6, align 4
  %40 = udiv i32 %39, 1000
  %41 = call i32 @netif_info(%struct.usbnet* %32, i32 %33, i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %31, %20
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netif_info(%struct.usbnet*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
