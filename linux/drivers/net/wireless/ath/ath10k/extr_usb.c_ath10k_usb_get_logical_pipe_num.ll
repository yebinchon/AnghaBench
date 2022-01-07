; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_get_logical_pipe_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_get_logical_pipe_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATH10K_USB_PIPE_INVALID = common dso_local global i32 0, align 4
@ATH10K_USB_PIPE_RX_CTRL = common dso_local global i32 0, align 4
@RX_URB_COUNT = common dso_local global i32 0, align 4
@ATH10K_USB_PIPE_RX_DATA = common dso_local global i32 0, align 4
@ATH10K_USB_PIPE_RX_INT = common dso_local global i32 0, align 4
@ATH10K_USB_PIPE_RX_DATA2 = common dso_local global i32 0, align 4
@ATH10K_USB_PIPE_TX_CTRL = common dso_local global i32 0, align 4
@TX_URB_COUNT = common dso_local global i32 0, align 4
@ATH10K_USB_PIPE_TX_DATA_LP = common dso_local global i32 0, align 4
@ATH10K_USB_PIPE_TX_DATA_MP = common dso_local global i32 0, align 4
@ATH10K_USB_PIPE_TX_DATA_HP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ath10k_usb_get_logical_pipe_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_usb_get_logical_pipe_num(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @ATH10K_USB_PIPE_INVALID, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %40 [
    i32 135, label %8
    i32 131, label %12
    i32 128, label %16
    i32 133, label %20
    i32 134, label %24
    i32 130, label %28
    i32 129, label %32
    i32 132, label %36
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @ATH10K_USB_PIPE_RX_CTRL, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @RX_URB_COUNT, align 4
  %11 = load i32*, i32** %4, align 8
  store i32 %10, i32* %11, align 4
  br label %41

12:                                               ; preds = %2
  %13 = load i32, i32* @ATH10K_USB_PIPE_RX_DATA, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @RX_URB_COUNT, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load i32, i32* @ATH10K_USB_PIPE_RX_INT, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @RX_URB_COUNT, align 4
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load i32, i32* @ATH10K_USB_PIPE_RX_DATA2, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @RX_URB_COUNT, align 4
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  br label %41

24:                                               ; preds = %2
  %25 = load i32, i32* @ATH10K_USB_PIPE_TX_CTRL, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @TX_URB_COUNT, align 4
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  br label %41

28:                                               ; preds = %2
  %29 = load i32, i32* @ATH10K_USB_PIPE_TX_DATA_LP, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @TX_URB_COUNT, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  br label %41

32:                                               ; preds = %2
  %33 = load i32, i32* @ATH10K_USB_PIPE_TX_DATA_MP, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @TX_URB_COUNT, align 4
  %35 = load i32*, i32** %4, align 8
  store i32 %34, i32* %35, align 4
  br label %41

36:                                               ; preds = %2
  %37 = load i32, i32* @ATH10K_USB_PIPE_TX_DATA_HP, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @TX_URB_COUNT, align 4
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  br label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %36, %32, %28, %24, %20, %16, %12, %8
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
