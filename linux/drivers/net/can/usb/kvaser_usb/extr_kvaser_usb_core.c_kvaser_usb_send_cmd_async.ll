; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_send_cmd_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_send_cmd_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { i32, %struct.net_device*, %struct.kvaser_usb* }
%struct.net_device = type { i32 }
%struct.kvaser_usb = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kvaser_usb_send_cmd_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error transmitting URB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvaser_usb_send_cmd_async(%struct.kvaser_usb_net_priv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvaser_usb_net_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvaser_usb*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.urb*, align 8
  %11 = alloca i32, align 4
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %13 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %12, i32 0, i32 2
  %14 = load %struct.kvaser_usb*, %struct.kvaser_usb** %13, align 8
  store %struct.kvaser_usb* %14, %struct.kvaser_usb** %8, align 8
  %15 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %16 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %18)
  store %struct.urb* %19, %struct.urb** %10, align 8
  %20 = load %struct.urb*, %struct.urb** %10, align 8
  %21 = icmp ne %struct.urb* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %61

25:                                               ; preds = %3
  %26 = load %struct.urb*, %struct.urb** %10, align 8
  %27 = load %struct.kvaser_usb*, %struct.kvaser_usb** %8, align 8
  %28 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.kvaser_usb*, %struct.kvaser_usb** %8, align 8
  %31 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.kvaser_usb*, %struct.kvaser_usb** %8, align 8
  %34 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_sndbulkpipe(i32 %32, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @kvaser_usb_send_cmd_callback, align 4
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = call i32 @usb_fill_bulk_urb(%struct.urb* %26, i32 %29, i32 %38, i8* %39, i32 %40, i32 %41, %struct.net_device* %42)
  %44 = load %struct.urb*, %struct.urb** %10, align 8
  %45 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %46 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %45, i32 0, i32 0
  %47 = call i32 @usb_anchor_urb(%struct.urb* %44, i32* %46)
  %48 = load %struct.urb*, %struct.urb** %10, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call i32 @usb_submit_urb(%struct.urb* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %25
  %54 = load %struct.net_device*, %struct.net_device** %9, align 8
  %55 = call i32 @netdev_err(%struct.net_device* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.urb*, %struct.urb** %10, align 8
  %57 = call i32 @usb_unanchor_urb(%struct.urb* %56)
  br label %58

58:                                               ; preds = %53, %25
  %59 = load %struct.urb*, %struct.urb** %10, align 8
  %60 = call i32 @usb_free_urb(%struct.urb* %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %22
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
