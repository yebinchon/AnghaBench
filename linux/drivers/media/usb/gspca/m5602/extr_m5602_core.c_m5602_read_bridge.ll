; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_core.c_m5602_read_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_core.c_m5602_read_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.gspca_dev = type { i32 }

@M5602_URB_MSG_TIMEOUT = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Reading bridge register 0x%x containing 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m5602_read_bridge(%struct.sd* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i64*, align 8
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.sd*, %struct.sd** %4, align 8
  %12 = bitcast %struct.sd* %11 to %struct.gspca_dev*
  store %struct.gspca_dev* %12, %struct.gspca_dev** %8, align 8
  %13 = load %struct.sd*, %struct.sd** %4, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %9, align 8
  %17 = load %struct.sd*, %struct.sd** %4, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %10, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %23 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %22, i32 0)
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 33024, %24
  %26 = load i64*, i64** %10, align 8
  %27 = load i32, i32* @M5602_URB_MSG_TIMEOUT, align 4
  %28 = call i32 @usb_control_msg(%struct.usb_device* %21, i32 %23, i32 4, i32 192, i32 20, i64 %25, i64* %26, i32 1, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i64*, i64** %10, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %34 = load i32, i32* @D_CONF, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @gspca_dbg(%struct.gspca_dev* %33, i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  br label %44

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  ret i32 %45
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i64, i64*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
