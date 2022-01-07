; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_alloc_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_alloc_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hif_device_usb = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hif_device_usb*)* @ath9k_hif_usb_alloc_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hif_usb_alloc_urbs(%struct.hif_device_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hif_device_usb*, align 8
  store %struct.hif_device_usb* %0, %struct.hif_device_usb** %3, align 8
  %4 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %5 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %4, i32 0, i32 0
  %6 = call i32 @init_usb_anchor(i32* %5)
  %7 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %8 = call i64 @ath9k_hif_usb_alloc_tx_urbs(%struct.hif_device_usb* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %13 = call i64 @ath9k_hif_usb_alloc_rx_urbs(%struct.hif_device_usb* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %25

16:                                               ; preds = %11
  %17 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %18 = call i64 @ath9k_hif_usb_alloc_reg_in_urbs(%struct.hif_device_usb* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %31

22:                                               ; preds = %20
  %23 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %24 = call i32 @ath9k_hif_usb_dealloc_rx_urbs(%struct.hif_device_usb* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %27 = call i32 @ath9k_hif_usb_dealloc_tx_urbs(%struct.hif_device_usb* %26)
  br label %28

28:                                               ; preds = %25, %10
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i64 @ath9k_hif_usb_alloc_tx_urbs(%struct.hif_device_usb*) #1

declare dso_local i64 @ath9k_hif_usb_alloc_rx_urbs(%struct.hif_device_usb*) #1

declare dso_local i64 @ath9k_hif_usb_alloc_reg_in_urbs(%struct.hif_device_usb*) #1

declare dso_local i32 @ath9k_hif_usb_dealloc_rx_urbs(%struct.hif_device_usb*) #1

declare dso_local i32 @ath9k_hif_usb_dealloc_tx_urbs(%struct.hif_device_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
