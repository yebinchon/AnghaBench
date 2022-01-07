; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_copy_samples.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_copy_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.cxusb_medion_auxbuf = type { i32 }
%struct.cxusb_bt656_params = type { i64, i64, i32 }

@START_SEARCH = common dso_local global i64 0, align 8
@LINE_SAMPLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.cxusb_medion_auxbuf*, %struct.cxusb_bt656_params*, i32, i8)* @cxusb_medion_copy_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_copy_samples(%struct.dvb_usb_device* %0, %struct.cxusb_medion_auxbuf* %1, %struct.cxusb_bt656_params* %2, i32 %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca %struct.cxusb_medion_auxbuf*, align 8
  %9 = alloca %struct.cxusb_bt656_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store %struct.cxusb_medion_auxbuf* %1, %struct.cxusb_medion_auxbuf** %8, align 8
  store %struct.cxusb_bt656_params* %2, %struct.cxusb_bt656_params** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  %12 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %13 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @START_SEARCH, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %5
  %18 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %19 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %24 = load %struct.cxusb_medion_auxbuf*, %struct.cxusb_medion_auxbuf** %8, align 8
  %25 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @cxusb_medion_cs_start_sch(%struct.dvb_usb_device* %23, %struct.cxusb_medion_auxbuf* %24, %struct.cxusb_bt656_params* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %46

28:                                               ; preds = %17, %5
  %29 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %30 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LINE_SAMPLES, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i8, i8* %11, align 1
  %38 = call i32 @cxusb_medion_cs_line_smpl(%struct.cxusb_bt656_params* %35, i32 %36, i8 zeroext %37)
  br label %44

39:                                               ; preds = %28
  %40 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %41 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @cxusb_medion_cs_start_sch(%struct.dvb_usb_device*, %struct.cxusb_medion_auxbuf*, %struct.cxusb_bt656_params*, i32) #1

declare dso_local i32 @cxusb_medion_cs_line_smpl(%struct.cxusb_bt656_params*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
