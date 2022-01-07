; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.cxusb_medion_dev*, %struct.TYPE_4__ }
%struct.cxusb_medion_dev = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32** }

@cxusb_table = common dso_local global i32* null, align 8
@MEDION_MD95700 = common dso_local global i64 0, align 8
@CXUSB_OPEN_ANALOG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"preventing DVB core from setting power OFF while we are in analog mode\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32)* @cxusb_power_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_power_ctrl(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxusb_medion_dev*, align 8
  %8 = alloca %struct.cxusb_medion_dev*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** @cxusb_table, align 8
  %19 = load i64, i64* @MEDION_MD95700, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = icmp eq i32* %17, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %25
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %29, i32 0, i32 0
  %31 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %30, align 8
  store %struct.cxusb_medion_dev* %31, %struct.cxusb_medion_dev** %7, align 8
  %32 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %33 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  %36 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CXUSB_OPEN_ANALOG, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = call i32 @deb_info(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %49

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %25, %2
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @_cxusb_power_ctrl(%struct.dvb_usb_device* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %56, i32 0, i32 0
  %58 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %57, align 8
  store %struct.cxusb_medion_dev* %58, %struct.cxusb_medion_dev** %8, align 8
  %59 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %8, align 8
  %60 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  br label %62

62:                                               ; preds = %55, %52, %49
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @deb_info(i8*) #1

declare dso_local i32 @_cxusb_power_ctrl(%struct.dvb_usb_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
