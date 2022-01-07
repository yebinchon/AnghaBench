; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_hif_usb_send_regout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_hif_usb_send_regout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hif_device_usb = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.urb = type { i32 }
%struct.cmd_buf = type { %struct.hif_device_usb*, %struct.sk_buff* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REG_OUT_PIPE = common dso_local global i32 0, align 4
@hif_usb_regout_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hif_device_usb*, %struct.sk_buff*)* @hif_usb_send_regout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hif_usb_send_regout(%struct.hif_device_usb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hif_device_usb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.cmd_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.hif_device_usb* %0, %struct.hif_device_usb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %9)
  store %struct.urb* %10, %struct.urb** %6, align 8
  %11 = load %struct.urb*, %struct.urb** %6, align 8
  %12 = icmp eq %struct.urb* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.cmd_buf* @kzalloc(i32 16, i32 %17)
  store %struct.cmd_buf* %18, %struct.cmd_buf** %7, align 8
  %19 = load %struct.cmd_buf*, %struct.cmd_buf** %7, align 8
  %20 = icmp eq %struct.cmd_buf* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.urb*, %struct.urb** %6, align 8
  %23 = call i32 @usb_free_urb(%struct.urb* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %69

26:                                               ; preds = %16
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.cmd_buf*, %struct.cmd_buf** %7, align 8
  %29 = getelementptr inbounds %struct.cmd_buf, %struct.cmd_buf* %28, i32 0, i32 1
  store %struct.sk_buff* %27, %struct.sk_buff** %29, align 8
  %30 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %31 = load %struct.cmd_buf*, %struct.cmd_buf** %7, align 8
  %32 = getelementptr inbounds %struct.cmd_buf, %struct.cmd_buf* %31, i32 0, i32 0
  store %struct.hif_device_usb* %30, %struct.hif_device_usb** %32, align 8
  %33 = load %struct.urb*, %struct.urb** %6, align 8
  %34 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %35 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %38 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @USB_REG_OUT_PIPE, align 4
  %41 = call i32 @usb_sndintpipe(i32 %39, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @hif_usb_regout_cb, align 4
  %49 = load %struct.cmd_buf*, %struct.cmd_buf** %7, align 8
  %50 = call i32 @usb_fill_int_urb(%struct.urb* %33, i32 %36, i32 %41, i32 %44, i32 %47, i32 %48, %struct.cmd_buf* %49, i32 1)
  %51 = load %struct.urb*, %struct.urb** %6, align 8
  %52 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %53 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %52, i32 0, i32 0
  %54 = call i32 @usb_anchor_urb(%struct.urb* %51, i32* %53)
  %55 = load %struct.urb*, %struct.urb** %6, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @usb_submit_urb(%struct.urb* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %26
  %61 = load %struct.urb*, %struct.urb** %6, align 8
  %62 = call i32 @usb_unanchor_urb(%struct.urb* %61)
  %63 = load %struct.cmd_buf*, %struct.cmd_buf** %7, align 8
  %64 = call i32 @kfree(%struct.cmd_buf* %63)
  br label %65

65:                                               ; preds = %60, %26
  %66 = load %struct.urb*, %struct.urb** %6, align 8
  %67 = call i32 @usb_free_urb(%struct.urb* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %21, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.cmd_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.cmd_buf*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.cmd_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
