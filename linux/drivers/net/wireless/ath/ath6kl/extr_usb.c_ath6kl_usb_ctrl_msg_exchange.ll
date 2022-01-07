; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_ctrl_msg_exchange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_ctrl_msg_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_usb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_usb*, i32, i32*, i32, i32, i32*, i32*)* @ath6kl_usb_ctrl_msg_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_usb_ctrl_msg_exchange(%struct.ath6kl_usb* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath6kl_usb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.ath6kl_usb* %0, %struct.ath6kl_usb** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @ath6kl_usb_submit_ctrl_out(%struct.ath6kl_usb* %17, i32 %18, i32 0, i32 0, i32* %19, i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* %16, align 4
  store i32 %25, i32* %8, align 4
  br label %39

26:                                               ; preds = %7
  %27 = load i32*, i32** %14, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %8, align 4
  br label %39

31:                                               ; preds = %26
  %32 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %9, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ath6kl_usb_submit_ctrl_in(%struct.ath6kl_usb* %32, i32 %33, i32 0, i32 0, i32* %34, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %31, %29, %24
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32 @ath6kl_usb_submit_ctrl_out(%struct.ath6kl_usb*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ath6kl_usb_submit_ctrl_in(%struct.ath6kl_usb*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
