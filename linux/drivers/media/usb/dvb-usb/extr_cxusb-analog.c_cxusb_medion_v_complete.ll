; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { %struct.TYPE_2__*, %struct.cxusb_medion_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.cxusb_medion_dev = type { i32, i32, %struct.urb** }

@CXUSB_VIDEO_URBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"complete on unknown URB\0A\00", align 1
@URB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"URB %u complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @cxusb_medion_v_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxusb_medion_v_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.cxusb_medion_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 0
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  store %struct.dvb_usb_device* %8, %struct.dvb_usb_device** %3, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 1
  %11 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %10, align 8
  store %struct.cxusb_medion_dev* %11, %struct.cxusb_medion_dev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %28, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CXUSB_VIDEO_URBS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %18 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %17, i32 0, i32 2
  %19 = load %struct.urb**, %struct.urb*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.urb*, %struct.urb** %19, i64 %21
  %23 = load %struct.urb*, %struct.urb** %22, align 8
  %24 = load %struct.urb*, %struct.urb** %2, align 8
  %25 = icmp eq %struct.urb* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %31

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %12

31:                                               ; preds = %26, %12
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CXUSB_VIDEO_URBS, align 4
  %34 = icmp uge i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %53

41:                                               ; preds = %31
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %43 = load i32, i32* @URB, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %42, i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %48 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %47, i32 0, i32 1
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %51 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %50, i32 0, i32 0
  %52 = call i32 @schedule_work(i32* %51)
  br label %53

53:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
