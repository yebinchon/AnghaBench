; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_write_bulk_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_write_bulk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, i32, %struct.mcba_usb_ctx* }
%struct.mcba_usb_ctx = type { i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Tx URB aborted (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @mcba_usb_write_bulk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcba_usb_write_bulk_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.mcba_usb_ctx*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 5
  %7 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %6, align 8
  store %struct.mcba_usb_ctx* %7, %struct.mcba_usb_ctx** %3, align 8
  %8 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %3, align 8
  %9 = icmp ne %struct.mcba_usb_ctx* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %4, align 8
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.urb*, %struct.urb** %2, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.urb*, %struct.urb** %2, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_free_coherent(i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %1
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @netif_device_present(%struct.net_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %78

40:                                               ; preds = %35
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %48
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %58 = call i32 @can_led_event(%struct.net_device* %56, i32 %57)
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @can_get_echo_skb(%struct.net_device* %59, i32 %62)
  br label %64

64:                                               ; preds = %40, %1
  %65 = load %struct.urb*, %struct.urb** %2, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = load %struct.urb*, %struct.urb** %2, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @netdev_info(%struct.net_device* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %3, align 8
  %77 = call i32 @mcba_usb_free_ctx(%struct.mcba_usb_ctx* %76)
  br label %78

78:                                               ; preds = %75, %39
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @mcba_usb_free_ctx(%struct.mcba_usb_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
