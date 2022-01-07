; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ipheth.c_ipheth_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ipheth.c_ipheth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipheth_device = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@IPHETH_INTFNUM = common dso_local global i32 0, align 4
@IPHETH_ALT_INTFNUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IPHETH_CARRIER_CHECK_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipheth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipheth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipheth_device*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ipheth_device* @netdev_priv(%struct.net_device* %7)
  store %struct.ipheth_device* %8, %struct.ipheth_device** %4, align 8
  %9 = load %struct.ipheth_device*, %struct.ipheth_device** %4, align 8
  %10 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %9, i32 0, i32 1
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %13 = load i32, i32* @IPHETH_INTFNUM, align 4
  %14 = load i32, i32* @IPHETH_ALT_INTFNUM, align 4
  %15 = call i32 @usb_set_interface(%struct.usb_device* %12, i32 %13, i32 %14)
  %16 = load %struct.ipheth_device*, %struct.ipheth_device** %4, align 8
  %17 = call i32 @ipheth_carrier_set(%struct.ipheth_device* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.ipheth_device*, %struct.ipheth_device** %4, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @ipheth_rx_submit(%struct.ipheth_device* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %22
  %31 = load %struct.ipheth_device*, %struct.ipheth_device** %4, align 8
  %32 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %31, i32 0, i32 0
  %33 = load i32, i32* @IPHETH_CARRIER_CHECK_TIMEOUT, align 4
  %34 = call i32 @schedule_delayed_work(i32* %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %28, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ipheth_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @ipheth_carrier_set(%struct.ipheth_device*) #1

declare dso_local i32 @ipheth_rx_submit(%struct.ipheth_device*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
