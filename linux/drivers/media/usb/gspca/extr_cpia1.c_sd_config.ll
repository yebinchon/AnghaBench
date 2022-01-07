; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i32 }
%struct.usb_device_id = type { i32, i32 }
%struct.sd = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@FREQ_DEF = common dso_local global i64 0, align 8
@V4L2_CID_POWER_LINE_FREQUENCY_60HZ = common dso_local global i64 0, align 8
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"cpia CPiA camera detected (vid/pid 0x%04X:0x%04X)\0A\00", align 1
@mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot go to low power mode: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"only firmware version 1 is supported (got: %d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %6, align 8
  %11 = load i64, i64* @FREQ_DEF, align 8
  %12 = load i64, i64* @V4L2_CID_POWER_LINE_FREQUENCY_60HZ, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load %struct.sd*, %struct.sd** %6, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %18 = call i32 @reset_camera_params(%struct.gspca_dev* %17)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %20 = load i32, i32* @D_PROBE, align 4
  %21 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gspca_dbg(%struct.gspca_dev* %19, i32 %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 0
  store %struct.cam* %29, %struct.cam** %7, align 8
  %30 = load i32, i32* @mode, align 4
  %31 = load %struct.cam*, %struct.cam** %7, align 8
  %32 = getelementptr inbounds %struct.cam, %struct.cam* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @mode, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load %struct.cam*, %struct.cam** %7, align 8
  %36 = getelementptr inbounds %struct.cam, %struct.cam* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %38 = call i32 @goto_low_power(%struct.gspca_dev* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @gspca_err(%struct.gspca_dev* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %2
  %46 = load %struct.sd*, %struct.sd** %6, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %51 = call i32 @get_version_information(%struct.gspca_dev* %50)
  %52 = load %struct.sd*, %struct.sd** %6, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %68

58:                                               ; preds = %45
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %60 = load %struct.sd*, %struct.sd** %6, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @gspca_err(%struct.gspca_dev* %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %108

68:                                               ; preds = %45
  %69 = load %struct.sd*, %struct.sd** %6, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sle i32 %73, 2
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = load %struct.sd*, %struct.sd** %6, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 2
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.sd*, %struct.sd** %6, align 8
  %84 = getelementptr inbounds %struct.sd, %struct.sd* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 2, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %75, %68
  %88 = load %struct.sd*, %struct.sd** %6, align 8
  %89 = getelementptr inbounds %struct.sd, %struct.sd* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 2067
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.sd*, %struct.sd** %6, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br label %101

101:                                              ; preds = %94, %87
  %102 = phi i1 [ false, %87 ], [ %100, %94 ]
  %103 = zext i1 %102 to i32
  %104 = load %struct.sd*, %struct.sd** %6, align 8
  %105 = getelementptr inbounds %struct.sd, %struct.sd* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %101, %58
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @reset_camera_params(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @goto_low_power(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32) #1

declare dso_local i32 @get_version_information(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
