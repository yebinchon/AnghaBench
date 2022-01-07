; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_send_rx_irq_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_send_rx_irq_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32 }
%struct.urb = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AR9170_USB_EP_CTRL_MAX = common dso_local global i32 0, align 4
@AR9170_USB_EP_IRQ = common dso_local global i32 0, align 4
@carl9170_usb_rx_irq_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*)* @carl9170_usb_send_rx_irq_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_usb_send_rx_irq_urb(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  store %struct.urb* null, %struct.urb** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %8)
  store %struct.urb* %9, %struct.urb** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %3, align 8
  %11 = icmp ne %struct.urb* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %53

13:                                               ; preds = %1
  %14 = load i32, i32* @AR9170_USB_EP_CTRL_MAX, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i32 %14, i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %53

20:                                               ; preds = %13
  %21 = load %struct.urb*, %struct.urb** %3, align 8
  %22 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %23 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %26 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AR9170_USB_EP_IRQ, align 4
  %29 = call i32 @usb_rcvintpipe(i32 %27, i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @AR9170_USB_EP_CTRL_MAX, align 4
  %32 = load i32, i32* @carl9170_usb_rx_irq_complete, align 4
  %33 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %34 = call i32 @usb_fill_int_urb(%struct.urb* %21, i32 %24, i32 %29, i8* %30, i32 %31, i32 %32, %struct.ar9170* %33, i32 1)
  %35 = load i32, i32* @URB_FREE_BUFFER, align 4
  %36 = load %struct.urb*, %struct.urb** %3, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.urb*, %struct.urb** %3, align 8
  %41 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %42 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %41, i32 0, i32 0
  %43 = call i32 @usb_anchor_urb(%struct.urb* %40, i32* %42)
  %44 = load %struct.urb*, %struct.urb** %3, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @usb_submit_urb(%struct.urb* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %20
  %50 = load %struct.urb*, %struct.urb** %3, align 8
  %51 = call i32 @usb_unanchor_urb(%struct.urb* %50)
  br label %52

52:                                               ; preds = %49, %20
  br label %53

53:                                               ; preds = %52, %19, %12
  %54 = load %struct.urb*, %struct.urb** %3, align 8
  %55 = call i32 @usb_free_urb(%struct.urb* %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.ar9170*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
