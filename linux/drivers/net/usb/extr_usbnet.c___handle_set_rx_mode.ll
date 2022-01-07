; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c___handle_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c___handle_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.usbnet*)* }

@EVENT_SET_RX_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @__handle_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__handle_set_rx_mode(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %3 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %4 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %6, align 8
  %8 = icmp ne i32 (%struct.usbnet*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %13, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %16 = call i32 %14(%struct.usbnet* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load i32, i32* @EVENT_SET_RX_MODE, align 4
  %19 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 0
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
