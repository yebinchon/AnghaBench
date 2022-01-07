; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_cf_refc_start_sch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_cf_refc_start_sch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.cxusb_bt656_params = type { i32, i32, i64 }

@CXUSB_BT656_FIELD_MASK = common dso_local global i8 0, align 1
@CXUSB_BT656_FIELD_1 = common dso_local global i8 0, align 1
@CXUSB_BT656_SEAV_MASK = common dso_local global i8 0, align 1
@CXUSB_BT656_SEAV_SAV = common dso_local global i8 0, align 1
@CXUSB_BT656_VBI_MASK = common dso_local global i8 0, align 1
@CXUSB_BT656_VBI_ON = common dso_local global i8 0, align 1
@BT656 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"line start @ pos %u\0A\00", align 1
@LINE_SAMPLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"VBI start @ pos %u\0A\00", align 1
@VBI_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_usb_device*, %struct.cxusb_bt656_params*, i32, i8*)* @cxusb_medion_cf_refc_start_sch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxusb_medion_cf_refc_start_sch(%struct.dvb_usb_device* %0, %struct.cxusb_bt656_params* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.cxusb_bt656_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store %struct.cxusb_bt656_params* %1, %struct.cxusb_bt656_params** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 3
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @CXUSB_BT656_FIELD_MASK, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = load i8, i8* @CXUSB_BT656_FIELD_1, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @CXUSB_BT656_SEAV_MASK, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = load i8, i8* @CXUSB_BT656_SEAV_SAV, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @CXUSB_BT656_VBI_MASK, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = load i8, i8* @CXUSB_BT656_VBI_ON, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %4
  br label %77

52:                                               ; preds = %47
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %57 = load i32, i32* @BT656, align 4
  %58 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %6, align 8
  %59 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %56, i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %6, align 8
  %63 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @LINE_SAMPLES, align 4
  %65 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %6, align 8
  %66 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %77

67:                                               ; preds = %52
  %68 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %69 = load i32, i32* @BT656, align 4
  %70 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %6, align 8
  %71 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %68, i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @VBI_SAMPLES, align 4
  %75 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %6, align 8
  %76 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %51, %67, %55
  ret void
}

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
