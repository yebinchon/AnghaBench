; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_map_service_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_map_service_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }

@ATH6KL_USB_PIPE_TX_CTRL = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_RX_DATA = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_TX_DATA_LP = common dso_local global i32 0, align 4
@ATH6KL_FW_CAPABILITY_MAP_LP_ENDPOINT = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_TX_DATA_MP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, i32, i32*, i32*)* @ath6kl_usb_map_service_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_usb_map_service_pipe(%struct.ath6kl* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ath6kl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %53 [
    i32 133, label %11
    i32 132, label %11
    i32 131, label %16
    i32 130, label %16
    i32 129, label %21
    i32 128, label %37
  ]

11:                                               ; preds = %4, %4
  %12 = load i32, i32* @ATH6KL_USB_PIPE_TX_CTRL, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @ATH6KL_USB_PIPE_RX_DATA, align 4
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  br label %56

16:                                               ; preds = %4, %4
  %17 = load i32, i32* @ATH6KL_USB_PIPE_TX_DATA_LP, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @ATH6KL_USB_PIPE_RX_DATA, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  br label %56

21:                                               ; preds = %4
  %22 = load i32, i32* @ATH6KL_FW_CAPABILITY_MAP_LP_ENDPOINT, align 4
  %23 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %24 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @test_bit(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ATH6KL_USB_PIPE_TX_DATA_LP, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* @ATH6KL_USB_PIPE_TX_DATA_MP, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @ATH6KL_USB_PIPE_RX_DATA, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %56

37:                                               ; preds = %4
  %38 = load i32, i32* @ATH6KL_FW_CAPABILITY_MAP_LP_ENDPOINT, align 4
  %39 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %40 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @test_bit(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @ATH6KL_USB_PIPE_TX_DATA_LP, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @ATH6KL_USB_PIPE_TX_DATA_MP, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @ATH6KL_USB_PIPE_RX_DATA, align 4
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %56

53:                                               ; preds = %4
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %50, %34, %16, %11
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
