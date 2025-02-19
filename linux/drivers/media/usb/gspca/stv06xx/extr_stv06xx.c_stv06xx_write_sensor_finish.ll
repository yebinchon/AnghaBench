; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_write_sensor_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_write_sensor_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@BRIDGE_STV610 = common dso_local global i64 0, align 8
@STV06XX_URB_MSG_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @stv06xx_write_sensor_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv06xx_write_sensor_finish(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i64*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.sd*, %struct.sd** %2, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BRIDGE_STV610, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.sd*, %struct.sd** %2, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %4, align 8
  %16 = load %struct.sd*, %struct.sd** %2, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %5, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = call i32 @usb_sndctrlpipe(%struct.usb_device* %23, i32 0)
  %25 = load i64*, i64** %5, align 8
  %26 = load i32, i32* @STV06XX_URB_MSG_TIMEOUT, align 4
  %27 = call i32 @usb_control_msg(%struct.usb_device* %22, i32 %24, i32 4, i32 64, i32 5892, i32 0, i64* %25, i32 1, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %11, %1
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  br label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  ret i32 %35
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
