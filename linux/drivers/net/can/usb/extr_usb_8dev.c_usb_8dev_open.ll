; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usb_8dev_priv = type { i32 }

@CAN_LED_EVENT_OPEN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"couldn't start device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @usb_8dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_8dev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.usb_8dev_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.usb_8dev_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.usb_8dev_priv* %7, %struct.usb_8dev_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @open_candev(%struct.net_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load i32, i32* @CAN_LED_EVENT_OPEN, align 4
  %17 = call i32 @can_led_event(%struct.net_device* %15, i32 %16)
  %18 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %19 = call i32 @usb_8dev_start(%struct.usb_8dev_priv* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %29 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netif_device_detach(i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @netdev_warn(%struct.net_device* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @close_candev(%struct.net_device* %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %42

39:                                               ; preds = %14
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @netif_start_queue(%struct.net_device* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %32, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.usb_8dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @usb_8dev_start(%struct.usb_8dev_priv*) #1

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
