; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_submit_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_submit_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.urb = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@MT_EP_IN_PKT_RX = common dso_local global i32 0, align 4
@mt76u_complete_rx = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, %struct.urb*)* @mt76u_submit_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76u_submit_rx_buf(%struct.mt76_dev* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.urb*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %5 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %6 = load i32, i32* @USB_DIR_IN, align 4
  %7 = load i32, i32* @MT_EP_IN_PKT_RX, align 4
  %8 = load %struct.urb*, %struct.urb** %4, align 8
  %9 = load i32, i32* @mt76u_complete_rx, align 4
  %10 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %11 = call i32 @mt76u_fill_bulk_urb(%struct.mt76_dev* %5, i32 %6, i32 %7, %struct.urb* %8, i32 %9, %struct.mt76_dev* %10)
  %12 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = call i32 @trace_submit_urb(%struct.mt76_dev* %12, %struct.urb* %13)
  %15 = load %struct.urb*, %struct.urb** %4, align 8
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i32 @usb_submit_urb(%struct.urb* %15, i32 %16)
  ret i32 %17
}

declare dso_local i32 @mt76u_fill_bulk_urb(%struct.mt76_dev*, i32, i32, %struct.urb*, i32, %struct.mt76_dev*) #1

declare dso_local i32 @trace_submit_urb(%struct.mt76_dev*, %struct.urb*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
