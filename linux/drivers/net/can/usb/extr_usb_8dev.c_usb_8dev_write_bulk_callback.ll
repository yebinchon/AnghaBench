; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_write_bulk_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_write_bulk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, i32, %struct.usb_8dev_tx_urb_context* }
%struct.usb_8dev_tx_urb_context = type { i32, i64, %struct.usb_8dev_priv* }
%struct.usb_8dev_priv = type { i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Tx URB aborted (%d)\0A\00", align 1
@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@MAX_TX_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usb_8dev_write_bulk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_8dev_write_bulk_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_8dev_tx_urb_context*, align 8
  %4 = alloca %struct.usb_8dev_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 5
  %8 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %7, align 8
  store %struct.usb_8dev_tx_urb_context* %8, %struct.usb_8dev_tx_urb_context** %3, align 8
  %9 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %3, align 8
  %10 = icmp ne %struct.usb_8dev_tx_urb_context* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %3, align 8
  %15 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %14, i32 0, i32 2
  %16 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %15, align 8
  store %struct.usb_8dev_priv* %16, %struct.usb_8dev_priv** %4, align 8
  %17 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %18 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %17, i32 0, i32 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %5, align 8
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.urb*, %struct.urb** %2, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_free_coherent(i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %34 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %33, i32 0, i32 0
  %35 = call i32 @atomic_dec(i32* %34)
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @netif_device_present(%struct.net_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  br label %80

40:                                               ; preds = %1
  %41 = load %struct.urb*, %struct.urb** %2, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = load %struct.urb*, %struct.urb** %2, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @netdev_info(%struct.net_device* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %3, align 8
  %58 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %59
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %3, align 8
  %69 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @can_get_echo_skb(%struct.net_device* %67, i32 %70)
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %74 = call i32 @can_led_event(%struct.net_device* %72, i32 %73)
  %75 = load i32, i32* @MAX_TX_URBS, align 4
  %76 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %3, align 8
  %77 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = call i32 @netif_wake_queue(%struct.net_device* %78)
  br label %80

80:                                               ; preds = %51, %39
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
