; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_cf_refc_line_smpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_cf_refc_line_smpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.cxusb_bt656_params = type { i32, i32, i32, i64, i32 }

@CXUSB_BT656_SEAV_MASK = common dso_local global i8 0, align 1
@CXUSB_BT656_SEAV_SAV = common dso_local global i8 0, align 1
@BT656 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SAV in line samples @ line %u, pos %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"field %c line %u %u samples still remaining (of %u)\0A\00", align 1
@START_SEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_usb_device*, %struct.cxusb_bt656_params*, i32, i32, i8*)* @cxusb_medion_cf_refc_line_smpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxusb_medion_cf_refc_line_smpl(%struct.dvb_usb_device* %0, %struct.cxusb_bt656_params* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca %struct.cxusb_bt656_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %6, align 8
  store %struct.cxusb_bt656_params* %1, %struct.cxusb_bt656_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @CXUSB_BT656_SEAV_MASK, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = load i8, i8* @CXUSB_BT656_SEAV_SAV, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %5
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %28 = load i32, i32* @BT656, align 4
  %29 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %7, align 8
  %30 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = trunc i32 %31 to i8
  %33 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %7, align 8
  %34 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.dvb_usb_device*, i32, i8*, i8, i32, ...) @cxusb_vprintk(%struct.dvb_usb_device* %27, i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8 signext %32, i32 %35)
  br label %37

37:                                               ; preds = %26, %5
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %7, align 8
  %40 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub i32 %38, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %7, align 8
  %44 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %37
  %48 = load i32, i32* %12, align 4
  %49 = icmp ugt i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %7, align 8
  %52 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @memset(i64 %53, i32 0, i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = zext i32 %56 to i64
  %58 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %7, align 8
  %59 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %63 = load i32, i32* @BT656, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 49, i32 50
  %68 = trunc i32 %67 to i8
  %69 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %7, align 8
  %70 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (%struct.dvb_usb_device*, i32, i8*, i8, i32, ...) @cxusb_vprintk(%struct.dvb_usb_device* %62, i32 %63, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8 signext %68, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %50, %47, %37
  %76 = load i32, i32* @START_SEARCH, align 4
  %77 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %7, align 8
  %78 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %7, align 8
  %80 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  ret void
}

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*, i8 signext, i32, ...) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
