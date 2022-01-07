; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc-phonet.c_rx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc-phonet.c_rx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbpn_dev = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.urb = type { i64 }
%struct.page = type { i32 }

@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@rx_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"RX submit error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbpn_dev*, %struct.urb*, i32)* @rx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_submit(%struct.usbpn_dev* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbpn_dev*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.usbpn_dev* %0, %struct.usbpn_dev** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usbpn_dev*, %struct.usbpn_dev** %5, align 8
  %12 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.page* @__dev_alloc_page(i32 %16)
  store %struct.page* %17, %struct.page** %9, align 8
  %18 = load %struct.page*, %struct.page** %9, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %54

23:                                               ; preds = %3
  %24 = load %struct.urb*, %struct.urb** %6, align 8
  %25 = load %struct.usbpn_dev*, %struct.usbpn_dev** %5, align 8
  %26 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.usbpn_dev*, %struct.usbpn_dev** %5, align 8
  %29 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.page*, %struct.page** %9, align 8
  %32 = call i32 @page_address(%struct.page* %31)
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* @rx_complete, align 4
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = call i32 @usb_fill_bulk_urb(%struct.urb* %24, i32 %27, i32 %30, i32 %32, i32 %33, i32 %34, %struct.net_device* %35)
  %37 = load %struct.urb*, %struct.urb** %6, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.urb*, %struct.urb** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @usb_submit_urb(%struct.urb* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %23
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.page*, %struct.page** %9, align 8
  %51 = call i32 @put_page(%struct.page* %50)
  br label %52

52:                                               ; preds = %45, %23
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %20
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.page* @__dev_alloc_page(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
