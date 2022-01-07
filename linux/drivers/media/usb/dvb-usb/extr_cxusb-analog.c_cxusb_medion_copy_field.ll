; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_copy_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_copy_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.cxusb_medion_auxbuf = type { i32 }
%struct.cxusb_bt656_params = type { i32, i64 }

@CXUSB_BT656_PREAMBLE = common dso_local global i8* null, align 8
@BT656 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"end of buffer pos = %u, line = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.cxusb_medion_auxbuf*, %struct.cxusb_bt656_params*, i32, i32, i32)* @cxusb_medion_copy_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_copy_field(%struct.dvb_usb_device* %0, %struct.cxusb_medion_auxbuf* %1, %struct.cxusb_bt656_params* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.cxusb_medion_auxbuf*, align 8
  %10 = alloca %struct.cxusb_bt656_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca [4 x i8], align 1
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store %struct.cxusb_medion_auxbuf* %1, %struct.cxusb_medion_auxbuf** %9, align 8
  store %struct.cxusb_bt656_params* %2, %struct.cxusb_bt656_params** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  br label %16

16:                                               ; preds = %104, %93, %6
  %17 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %10, align 8
  %18 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %105

22:                                               ; preds = %16
  %23 = load %struct.cxusb_medion_auxbuf*, %struct.cxusb_medion_auxbuf** %9, align 8
  %24 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %10, align 8
  %25 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @cxusb_auxbuf_copy(%struct.cxusb_medion_auxbuf* %23, i64 %26, i8* %14, i32 1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %105

30:                                               ; preds = %22
  %31 = load i8, i8* %14, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8*, i8** @CXUSB_BT656_PREAMBLE, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %30
  %39 = load i8, i8* %14, align 1
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  store i8 %39, i8* %40, align 1
  %41 = load %struct.cxusb_medion_auxbuf*, %struct.cxusb_medion_auxbuf** %9, align 8
  %42 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %10, align 8
  %43 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call i32 @cxusb_auxbuf_copy(%struct.cxusb_medion_auxbuf* %41, i64 %45, i8* %47, i32 3)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  br label %105

51:                                               ; preds = %38
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8*, i8** @CXUSB_BT656_PREAMBLE, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %94

60:                                               ; preds = %51
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8*, i8** @CXUSB_BT656_PREAMBLE, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %60
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %71 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %76 = call i64 @cxusb_medion_cf_refc_fld_chg(%struct.dvb_usb_device* %70, %struct.cxusb_bt656_params* %71, i32 %72, i32 %73, i32 %74, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 1, i32* %7, align 4
  br label %122

79:                                               ; preds = %69
  %80 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %81 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %86 = call i64 @cxusb_medion_cf_ref_code(%struct.dvb_usb_device* %80, %struct.cxusb_bt656_params* %81, i32 %82, i32 %83, i32 %84, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %10, align 8
  %90 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 4
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %88, %79
  br label %16

94:                                               ; preds = %60, %51
  br label %95

95:                                               ; preds = %94, %30
  %96 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %97 = load %struct.cxusb_medion_auxbuf*, %struct.cxusb_medion_auxbuf** %9, align 8
  %98 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %10, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i8, i8* %14, align 1
  %101 = call i32 @cxusb_medion_copy_samples(%struct.dvb_usb_device* %96, %struct.cxusb_medion_auxbuf* %97, %struct.cxusb_bt656_params* %98, i32 %99, i8 zeroext %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  br label %105

104:                                              ; preds = %95
  br label %16

105:                                              ; preds = %103, %50, %29, %16
  %106 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %10, align 8
  %107 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %113 = load i32, i32* @BT656, align 4
  %114 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %10, align 8
  %115 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %10, align 8
  %118 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %112, i32 %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %116, i32 %119)
  store i32 0, i32* %7, align 4
  br label %122

121:                                              ; preds = %105
  store i32 1, i32* %7, align 4
  br label %122

122:                                              ; preds = %121, %111, %78
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @cxusb_auxbuf_copy(%struct.cxusb_medion_auxbuf*, i64, i8*, i32) #1

declare dso_local i64 @cxusb_medion_cf_refc_fld_chg(%struct.dvb_usb_device*, %struct.cxusb_bt656_params*, i32, i32, i32, i8*) #1

declare dso_local i64 @cxusb_medion_cf_ref_code(%struct.dvb_usb_device*, %struct.cxusb_bt656_params*, i32, i32, i32, i8*) #1

declare dso_local i32 @cxusb_medion_copy_samples(%struct.dvb_usb_device*, %struct.cxusb_medion_auxbuf*, %struct.cxusb_bt656_params*, i32, i8 zeroext) #1

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
