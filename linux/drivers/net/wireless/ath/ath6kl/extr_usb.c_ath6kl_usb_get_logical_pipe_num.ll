; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_get_logical_pipe_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_get_logical_pipe_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_usb = type { i32 }

@ATH6KL_USB_PIPE_INVALID = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_RX_CTRL = common dso_local global i32 0, align 4
@RX_URB_COUNT = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_RX_DATA = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_RX_INT = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_RX_DATA2 = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_TX_CTRL = common dso_local global i32 0, align 4
@TX_URB_COUNT = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_TX_DATA_LP = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_TX_DATA_MP = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_TX_DATA_HP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_usb*, i32, i32*)* @ath6kl_usb_get_logical_pipe_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_usb_get_logical_pipe_num(%struct.ath6kl_usb* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ath6kl_usb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ath6kl_usb* %0, %struct.ath6kl_usb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @ATH6KL_USB_PIPE_INVALID, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %42 [
    i32 135, label %10
    i32 131, label %14
    i32 128, label %18
    i32 133, label %22
    i32 134, label %26
    i32 130, label %30
    i32 129, label %34
    i32 132, label %38
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @ATH6KL_USB_PIPE_RX_CTRL, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @RX_URB_COUNT, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  br label %43

14:                                               ; preds = %3
  %15 = load i32, i32* @ATH6KL_USB_PIPE_RX_DATA, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @RX_URB_COUNT, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load i32, i32* @ATH6KL_USB_PIPE_RX_INT, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @RX_URB_COUNT, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  br label %43

22:                                               ; preds = %3
  %23 = load i32, i32* @ATH6KL_USB_PIPE_RX_DATA2, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @RX_URB_COUNT, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  br label %43

26:                                               ; preds = %3
  %27 = load i32, i32* @ATH6KL_USB_PIPE_TX_CTRL, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @TX_URB_COUNT, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  br label %43

30:                                               ; preds = %3
  %31 = load i32, i32* @ATH6KL_USB_PIPE_TX_DATA_LP, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @TX_URB_COUNT, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %43

34:                                               ; preds = %3
  %35 = load i32, i32* @ATH6KL_USB_PIPE_TX_DATA_MP, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @TX_URB_COUNT, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %43

38:                                               ; preds = %3
  %39 = load i32, i32* @ATH6KL_USB_PIPE_TX_DATA_HP, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @TX_URB_COUNT, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %43

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42, %38, %34, %30, %26, %22, %18, %14, %10
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
