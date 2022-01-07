; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_cf_ref_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_cf_ref_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.cxusb_bt656_params = type { i64 }

@START_SEARCH = common dso_local global i64 0, align 8
@LINE_SAMPLES = common dso_local global i64 0, align 8
@VBI_SAMPLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.cxusb_bt656_params*, i32, i32, i32, i8*)* @cxusb_medion_cf_ref_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_cf_ref_code(%struct.dvb_usb_device* %0, %struct.cxusb_bt656_params* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.cxusb_bt656_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store %struct.cxusb_bt656_params* %1, %struct.cxusb_bt656_params** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %14 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %15 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @START_SEARCH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %21 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @cxusb_medion_cf_refc_start_sch(%struct.dvb_usb_device* %20, %struct.cxusb_bt656_params* %21, i32 %22, i8* %23)
  br label %51

25:                                               ; preds = %6
  %26 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %27 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LINE_SAMPLES, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %33 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @cxusb_medion_cf_refc_line_smpl(%struct.dvb_usb_device* %32, %struct.cxusb_bt656_params* %33, i32 %34, i32 %35, i8* %36)
  store i32 0, i32* %7, align 4
  br label %52

38:                                               ; preds = %25
  %39 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %40 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VBI_SAMPLES, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %46 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @cxusb_medion_cf_refc_vbi_smpl(%struct.dvb_usb_device* %45, %struct.cxusb_bt656_params* %46, i8* %47)
  store i32 0, i32* %7, align 4
  br label %52

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %19
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %44, %31
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @cxusb_medion_cf_refc_start_sch(%struct.dvb_usb_device*, %struct.cxusb_bt656_params*, i32, i8*) #1

declare dso_local i32 @cxusb_medion_cf_refc_line_smpl(%struct.dvb_usb_device*, %struct.cxusb_bt656_params*, i32, i32, i8*) #1

declare dso_local i32 @cxusb_medion_cf_refc_vbi_smpl(%struct.dvb_usb_device*, %struct.cxusb_bt656_params*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
