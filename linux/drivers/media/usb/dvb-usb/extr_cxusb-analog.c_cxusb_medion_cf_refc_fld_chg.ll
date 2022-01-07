; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_cf_refc_fld_chg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_cf_refc_fld_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.cxusb_bt656_params = type { i32, i64, i32, i64 }

@CXUSB_BT656_FIELD_MASK = common dso_local global i8 0, align 1
@CXUSB_BT656_FIELD_1 = common dso_local global i8 0, align 1
@LINE_SAMPLES = common dso_local global i64 0, align 8
@BT656 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"field %c after line %u field change\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"field %c line %u %u samples still remaining (of %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"field %c %u lines still remaining (of %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.cxusb_bt656_params*, i32, i32, i32, i8*)* @cxusb_medion_cf_refc_fld_chg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_cf_refc_fld_chg(%struct.dvb_usb_device* %0, %struct.cxusb_bt656_params* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.cxusb_bt656_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store %struct.cxusb_bt656_params* %1, %struct.cxusb_bt656_params** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 3
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @CXUSB_BT656_FIELD_MASK, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = load i8, i8* @CXUSB_BT656_FIELD_1, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %29 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %6
  store i32 0, i32* %7, align 4
  br label %137

37:                                               ; preds = %32
  %38 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %39 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LINE_SAMPLES, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %97

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %46 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sub i32 %44, %47
  store i32 %48, i32* %16, align 4
  %49 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %50 = load i32, i32* @BT656, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 49, i32 50
  %55 = trunc i32 %54 to i8
  %56 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %57 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.dvb_usb_device*, i32, i8*, i8, i32, ...) @cxusb_vprintk(%struct.dvb_usb_device* %49, i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8 signext %55, i32 %58)
  %60 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %61 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %43
  %65 = load i32, i32* %16, align 4
  %66 = icmp ugt i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  %68 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %69 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @memset(i64 %70, i32 0, i32 %71)
  %73 = load i32, i32* %16, align 4
  %74 = zext i32 %73 to i64
  %75 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %76 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %80 = load i32, i32* @BT656, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 49, i32 50
  %85 = trunc i32 %84 to i8
  %86 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %87 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 (%struct.dvb_usb_device*, i32, i8*, i8, i32, ...) @cxusb_vprintk(%struct.dvb_usb_device* %79, i32 %80, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8 signext %85, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %67, %64, %43
  %93 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %94 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add i32 %95, 1
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %92, %37
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %100 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub i32 %98, %101
  store i32 %102, i32* %15, align 4
  %103 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %104 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %97
  %108 = load i32, i32* %15, align 4
  %109 = icmp ugt i32 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %107
  %111 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %112 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %12, align 4
  %116 = mul i32 %114, %115
  %117 = call i32 @memset(i64 %113, i32 0, i32 %116)
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %12, align 4
  %120 = mul i32 %118, %119
  %121 = zext i32 %120 to i64
  %122 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %9, align 8
  %123 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %127 = load i32, i32* @BT656, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 49, i32 50
  %132 = trunc i32 %131 to i8
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 (%struct.dvb_usb_device*, i32, i8*, i8, i32, ...) @cxusb_vprintk(%struct.dvb_usb_device* %126, i32 %127, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8 signext %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %110, %107, %97
  store i32 1, i32* %7, align 4
  br label %137

137:                                              ; preds = %136, %36
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*, i8 signext, i32, ...) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
