; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.kvaser_usb_net_priv = type { %struct.TYPE_3__, %struct.kvaser_usb* }
%struct.TYPE_3__ = type { i32 }
%struct.kvaser_usb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.kvaser_usb_net_priv*)*, i32 (%struct.kvaser_usb_net_priv*)* }

@.str = private unnamed_addr constant [31 x i8] c"Cannot start device, error %d\0A\00", align 1
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @kvaser_usb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.kvaser_usb_net_priv*, align 8
  %5 = alloca %struct.kvaser_usb*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.kvaser_usb_net_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.kvaser_usb_net_priv* %8, %struct.kvaser_usb_net_priv** %4, align 8
  %9 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %10 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %9, i32 0, i32 1
  %11 = load %struct.kvaser_usb*, %struct.kvaser_usb** %10, align 8
  store %struct.kvaser_usb* %11, %struct.kvaser_usb** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @open_candev(%struct.net_device* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %58

18:                                               ; preds = %1
  %19 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %20 = call i32 @kvaser_usb_setup_rx_urbs(%struct.kvaser_usb* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %54

24:                                               ; preds = %18
  %25 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %26 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.kvaser_usb_net_priv*)*, i32 (%struct.kvaser_usb_net_priv*)** %28, align 8
  %30 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %31 = call i32 %29(%struct.kvaser_usb_net_priv* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %54

35:                                               ; preds = %24
  %36 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %37 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32 (%struct.kvaser_usb_net_priv*)*, i32 (%struct.kvaser_usb_net_priv*)** %39, align 8
  %41 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %42 = call i32 %40(%struct.kvaser_usb_net_priv* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @netdev_warn(%struct.net_device* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %54

49:                                               ; preds = %35
  %50 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %51 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %52 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  store i32 0, i32* %2, align 4
  br label %58

54:                                               ; preds = %45, %34, %23
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @close_candev(%struct.net_device* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %49, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.kvaser_usb_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @kvaser_usb_setup_rx_urbs(%struct.kvaser_usb*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
