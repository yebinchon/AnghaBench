; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_submit_ctrl_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_submit_ctrl_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_usb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to submit usb control message: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32, i32, i8*, i32)* @ath10k_usb_submit_ctrl_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_usb_submit_ctrl_out(%struct.ath10k* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ath10k_usb*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %18 = call %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k* %17)
  store %struct.ath10k_usb* %18, %struct.ath10k_usb** %14, align 8
  store i32* null, i32** %15, align 8
  %19 = load i32, i32* %13, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %6
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kmemdup(i8* %22, i32 %23, i32 %24)
  store i32* %25, i32** %15, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %63

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %6
  %33 = load %struct.ath10k_usb*, %struct.ath10k_usb** %14, align 8
  %34 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ath10k_usb*, %struct.ath10k_usb** %14, align 8
  %37 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_sndctrlpipe(i32 %38, i32 0)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @USB_DIR_OUT, align 4
  %42 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @usb_control_msg(i32 %35, i32 %39, i32 %40, i32 %45, i32 %46, i32 %47, i32* %48, i32 %49, i32 1000)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %32
  %54 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @ath10k_warn(%struct.ath10k* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %7, align 4
  br label %63

60:                                               ; preds = %32
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @kfree(i32* %61)
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %53, %28
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k*) #1

declare dso_local i32* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
