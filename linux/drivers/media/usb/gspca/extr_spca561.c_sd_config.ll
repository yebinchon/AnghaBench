; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, %struct.cam }
%struct.cam = type { i32, i8*, i8* }
%struct.usb_device_id = type { i32, i32, i64 }
%struct.sd = type { i64, i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Bad vendor / product from device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@Rev012A = common dso_local global i64 0, align 8
@sif_012a_mode = common dso_local global i8* null, align 8
@sif_072a_mode = common dso_local global i8* null, align 8
@EXPO12A_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %6, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %15 = call i32 @reg_r(%struct.gspca_dev* %14, i32 33028, i32 1)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = call i32 @reg_r(%struct.gspca_dev* %21, i32 33029, i32 1)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %33 = call i32 @reg_r(%struct.gspca_dev* %32, i32 33030, i32 1)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = call i32 @reg_r(%struct.gspca_dev* %39, i32 33031, i32 1)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %52 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %2
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %58 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55, %2
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %63 = load i32, i32* @D_PROBE, align 4
  %64 = call i32 @gspca_dbg(%struct.gspca_dev* %62, i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %102

67:                                               ; preds = %55
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %69 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %68, i32 0, i32 1
  store %struct.cam* %69, %struct.cam** %7, align 8
  %70 = load %struct.cam*, %struct.cam** %7, align 8
  %71 = getelementptr inbounds %struct.cam, %struct.cam* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %73 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.sd*, %struct.sd** %6, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.sd*, %struct.sd** %6, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @Rev012A, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %67
  %83 = load i8*, i8** @sif_012a_mode, align 8
  %84 = load %struct.cam*, %struct.cam** %7, align 8
  %85 = getelementptr inbounds %struct.cam, %struct.cam* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @sif_012a_mode, align 8
  %87 = call i8* @ARRAY_SIZE(i8* %86)
  %88 = load %struct.cam*, %struct.cam** %7, align 8
  %89 = getelementptr inbounds %struct.cam, %struct.cam* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %98

90:                                               ; preds = %67
  %91 = load i8*, i8** @sif_072a_mode, align 8
  %92 = load %struct.cam*, %struct.cam** %7, align 8
  %93 = getelementptr inbounds %struct.cam, %struct.cam* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @sif_072a_mode, align 8
  %95 = call i8* @ARRAY_SIZE(i8* %94)
  %96 = load %struct.cam*, %struct.cam** %7, align 8
  %97 = getelementptr inbounds %struct.cam, %struct.cam* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %90, %82
  %99 = load i32, i32* @EXPO12A_DEF, align 4
  %100 = load %struct.sd*, %struct.sd** %6, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %61
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
