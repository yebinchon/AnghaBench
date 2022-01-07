; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_hif_map_service_to_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_hif_map_service_to_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@ATH10K_USB_PIPE_TX_CTRL = common dso_local global i32 0, align 4
@ATH10K_USB_PIPE_RX_DATA = common dso_local global i32 0, align 4
@ATH10K_USB_PIPE_TX_DATA_LP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32*, i32*)* @ath10k_usb_hif_map_service_to_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_usb_hif_map_service_to_pipe(%struct.ath10k* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %21 [
    i32 129, label %11
    i32 128, label %11
    i32 130, label %16
  ]

11:                                               ; preds = %4, %4
  %12 = load i32, i32* @ATH10K_USB_PIPE_TX_CTRL, align 4
  %13 = load i32*, i32** %8, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @ATH10K_USB_PIPE_RX_DATA, align 4
  %15 = load i32*, i32** %9, align 8
  store i32 %14, i32* %15, align 4
  br label %24

16:                                               ; preds = %4
  %17 = load i32, i32* @ATH10K_USB_PIPE_TX_DATA_LP, align 4
  %18 = load i32*, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @ATH10K_USB_PIPE_RX_DATA, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  br label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %25

24:                                               ; preds = %16, %11
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
