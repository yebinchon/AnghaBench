; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7311.c_reg_w_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7311.c_reg_w_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"reg_w_buf() failed index 0x%02x, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32*, i32)* @reg_w_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w_buf(%struct.gspca_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %49

15:                                               ; preds = %4
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @memcpy(i32 %18, i32* %19, i32 %20)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %23 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_sndctrlpipe(i32 %27, i32 0)
  %29 = load i32, i32* @USB_DIR_OUT, align 4
  %30 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @usb_control_msg(i32 %24, i32 %28, i32 0, i32 %33, i32 0, i32 %34, i32 %37, i32 %38, i32 500)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %15
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %14, %42, %15
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
