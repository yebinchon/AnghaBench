; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_submit_ctrl_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_submit_ctrl_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_usb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to read usb control message: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_usb*, i32, i32, i32, i8*, i32)* @ath6kl_usb_submit_ctrl_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_usb_submit_ctrl_in(%struct.ath6kl_usb* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
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
  br i1 %17, label %18, label %28

18:                                               ; preds = %6
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kmalloc(i32 %19, i32 %20)
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %65

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %6
  %29 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %30 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %33 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_rcvctrlpipe(i32 %34, i32 0)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @USB_DIR_IN, align 4
  %38 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 2, %46
  %48 = call i32 @usb_control_msg(i32 %31, i32 %35, i32 %36, i32 %41, i32 %42, i32 %43, i32* %44, i32 %45, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %28
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %7, align 4
  br label %65

57:                                               ; preds = %28
  %58 = load i8*, i8** %12, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @memcpy(i32* %59, i32* %60, i32 %61)
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @kfree(i32* %63)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %57, %51, %24
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @ath6kl_warn(i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
