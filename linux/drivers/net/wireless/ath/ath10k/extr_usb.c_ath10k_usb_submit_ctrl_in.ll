; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_submit_ctrl_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_submit_ctrl_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_usb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to read usb control message: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32, i32, i8*, i32)* @ath10k_usb_submit_ctrl_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_usb_submit_ctrl_in(%struct.ath10k* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
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
  br i1 %20, label %21, label %31

21:                                               ; preds = %6
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kmalloc(i32 %22, i32 %23)
  store i32* %24, i32** %15, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %69

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %6
  %32 = load %struct.ath10k_usb*, %struct.ath10k_usb** %14, align 8
  %33 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ath10k_usb*, %struct.ath10k_usb** %14, align 8
  %36 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_rcvctrlpipe(i32 %37, i32 0)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @USB_DIR_IN, align 4
  %41 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @HZ, align 4
  %50 = mul nsw i32 2, %49
  %51 = call i32 @usb_control_msg(i32 %34, i32 %38, i32 %39, i32 %44, i32 %45, i32 %46, i32* %47, i32 %48, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %31
  %55 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @ath10k_warn(%struct.ath10k* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %7, align 4
  br label %69

61:                                               ; preds = %31
  %62 = load i8*, i8** %12, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @memcpy(i32* %63, i32* %64, i32 %65)
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @kfree(i32* %67)
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %61, %54, %27
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
