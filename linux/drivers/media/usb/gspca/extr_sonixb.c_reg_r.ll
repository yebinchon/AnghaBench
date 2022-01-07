; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_reg_r.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_reg_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i64*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error reading register %02x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @reg_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_r(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %46

11:                                               ; preds = %2
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_rcvctrlpipe(i32 %17, i32 0)
  %19 = load i32, i32* @USB_DIR_IN, align 4
  %20 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = call i32 @usb_control_msg(i32 %14, i32 %18, i32 0, i32 %23, i32 %24, i32 0, i64* %27, i32 1, i32 500)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %11
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %10, %31, %11
  ret void
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
