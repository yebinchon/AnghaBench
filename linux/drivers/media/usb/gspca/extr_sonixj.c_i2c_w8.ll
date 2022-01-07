; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_i2c_w8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_i2c_w8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"i2c_w8 [%02x] = %02x ..\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"i2c_w8 err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*)* @i2c_w8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_w8(%struct.gspca_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %51

11:                                               ; preds = %2
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = load i32, i32* @D_USBO, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gspca_dbg(%struct.gspca_dev* %12, i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @memcpy(i32 %23, i32* %24, i32 8)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_sndctrlpipe(i32 %31, i32 0)
  %33 = load i32, i32* @USB_DIR_OUT, align 4
  %34 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_control_msg(i32 %28, i32 %32, i32 8, i32 %37, i32 8, i32 0, i32 %40, i32 8, i32 500)
  store i32 %41, i32* %5, align 4
  %42 = call i32 @msleep(i32 2)
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %11
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %10, %45, %11
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
