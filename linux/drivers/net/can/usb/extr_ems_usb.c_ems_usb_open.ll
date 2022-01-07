; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ems_usb = type { i32 }

@SJA1000_MOD_RM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"couldn't start device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ems_usb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_usb_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ems_usb*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ems_usb* @netdev_priv(%struct.net_device* %6)
  store %struct.ems_usb* %7, %struct.ems_usb** %4, align 8
  %8 = load %struct.ems_usb*, %struct.ems_usb** %4, align 8
  %9 = load i32, i32* @SJA1000_MOD_RM, align 4
  %10 = call i32 @ems_usb_write_mode(%struct.ems_usb* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @open_candev(%struct.net_device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %47

22:                                               ; preds = %15
  %23 = load %struct.ems_usb*, %struct.ems_usb** %4, align 8
  %24 = call i32 @ems_usb_start(%struct.ems_usb* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.ems_usb*, %struct.ems_usb** %4, align 8
  %34 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netif_device_detach(i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @netdev_warn(%struct.net_device* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @close_candev(%struct.net_device* %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %22
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @netif_start_queue(%struct.net_device* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %37, %20, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ems_usb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ems_usb_write_mode(%struct.ems_usb*, i32) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @ems_usb_start(%struct.ems_usb*) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
