; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_submit_ctrl_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_submit_ctrl_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_usb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to submit usb control message: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_usb*, i32, i32, i32, i8*, i32)* @ath6kl_usb_submit_ctrl_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_usb_submit_ctrl_out(%struct.ath6kl_usb* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath6kl_usb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.ath6kl_usb* %0, %struct.ath6kl_usb** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %16 = load i32, i32* %13, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %6
  %19 = load i8*, i8** %12, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kmemdup(i8* %19, i32 %20, i32 %21)
  store i32* %22, i32** %14, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %59

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %6
  %30 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %31 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %34 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_sndctrlpipe(i32 %35, i32 0)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @USB_DIR_OUT, align 4
  %39 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @usb_control_msg(i32 %32, i32 %36, i32 %37, i32 %42, i32 %43, i32 %44, i32* %45, i32 %46, i32 1000)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %29
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @kfree(i32* %53)
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %7, align 4
  br label %59

56:                                               ; preds = %29
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @kfree(i32* %57)
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %50, %25
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @ath6kl_warn(i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
