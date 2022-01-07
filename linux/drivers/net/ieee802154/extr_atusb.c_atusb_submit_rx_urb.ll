; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_submit_rx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_submit_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atusb = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.urb = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@MAX_RX_XFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"atusb_in: can't allocate skb\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@atusb_in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atusb*, %struct.urb*)* @atusb_submit_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atusb_submit_rx_urb(%struct.atusb* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atusb*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.atusb*, align 8
  store %struct.atusb* %0, %struct.atusb** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %10 = load %struct.atusb*, %struct.atusb** %4, align 8
  %11 = getelementptr inbounds %struct.atusb, %struct.atusb* %10, i32 0, i32 1
  %12 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load %struct.urb*, %struct.urb** %5, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @MAX_RX_XFER, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sk_buff* @alloc_skb(i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = call i32 @dev_warn_ratelimited(i32* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %18
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load i32, i32* @MAX_RX_XFER, align 4
  %33 = call i32 @skb_put(%struct.sk_buff* %31, i32 %32)
  %34 = load %struct.atusb*, %struct.atusb** %4, align 8
  store %struct.atusb* %34, %struct.atusb** %9, align 8
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.urb*, %struct.urb** %5, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %39 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %38, i32 1)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAX_RX_XFER, align 4
  %44 = load i32, i32* @atusb_in, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @usb_fill_bulk_urb(%struct.urb* %36, %struct.usb_device* %37, i32 %39, i32 %42, i32 %43, i32 %44, %struct.sk_buff* %45)
  %47 = load %struct.urb*, %struct.urb** %5, align 8
  %48 = load %struct.atusb*, %struct.atusb** %4, align 8
  %49 = getelementptr inbounds %struct.atusb, %struct.atusb* %48, i32 0, i32 0
  %50 = call i32 @usb_anchor_urb(%struct.urb* %47, i32* %49)
  %51 = load %struct.urb*, %struct.urb** %5, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @usb_submit_urb(%struct.urb* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %35
  %57 = load %struct.urb*, %struct.urb** %5, align 8
  %58 = call i32 @usb_unanchor_urb(%struct.urb* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  %61 = load %struct.urb*, %struct.urb** %5, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %62, align 8
  br label %63

63:                                               ; preds = %56, %35
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %24
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32*, i8*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
