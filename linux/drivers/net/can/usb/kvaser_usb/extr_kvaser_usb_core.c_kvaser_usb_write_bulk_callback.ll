; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_write_bulk_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_write_bulk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.kvaser_usb_tx_urb_context* }
%struct.kvaser_usb_tx_urb_context = type { %struct.kvaser_usb_net_priv* }
%struct.kvaser_usb_net_priv = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Tx URB aborted (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @kvaser_usb_write_bulk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_write_bulk_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.kvaser_usb_tx_urb_context*, align 8
  %4 = alloca %struct.kvaser_usb_net_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 2
  %8 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %7, align 8
  store %struct.kvaser_usb_tx_urb_context* %8, %struct.kvaser_usb_tx_urb_context** %3, align 8
  %9 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %3, align 8
  %10 = icmp ne %struct.kvaser_usb_tx_urb_context* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %3, align 8
  %18 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %17, i32 0, i32 0
  %19 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %18, align 8
  store %struct.kvaser_usb_net_priv* %19, %struct.kvaser_usb_net_priv** %4, align 8
  %20 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %21 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %5, align 8
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kfree(i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @netif_device_present(%struct.net_device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  br label %42

31:                                               ; preds = %16
  %32 = load %struct.urb*, %struct.urb** %2, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load %struct.urb*, %struct.urb** %2, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @netdev_info(%struct.net_device* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %15, %30, %36, %31
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
