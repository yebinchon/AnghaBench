; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_core.c_peak_usb_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.peak_usb_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"couldn't start device (err %d)\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @peak_usb_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peak_usb_set_mode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.peak_usb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.peak_usb_device* @netdev_priv(%struct.net_device* %8)
  store %struct.peak_usb_device* %9, %struct.peak_usb_device** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %21 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %13 = call i32 @peak_usb_restart(%struct.peak_usb_device* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %11
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.peak_usb_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @peak_usb_restart(%struct.peak_usb_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
