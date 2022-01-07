; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_reset_camera_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_reset_camera_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_16__, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i8*, i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@NEVER_FLICKER = common dso_local global i32 0, align 4
@CPIA2_VC_VC_JPEG_OPT_DEFAULT = common dso_local global i32 0, align 4
@DEVICE_STV_672 = common dso_local global i64 0, align 8
@CPIA2_VP_SENSOR_FLAGS_500 = common dso_local global i64 0, align 8
@CPIA2_VP_FRAMERATE_15 = common dso_local global i8* null, align 8
@CPIA2_VP_FRAMERATE_30 = common dso_local global i8* null, align 8
@CPIA2_SENSOR_500 = common dso_local global i32 0, align 4
@VIDEOSIZE_VGA = common dso_local global i32 0, align 4
@STV_IMAGE_VGA_COLS = common dso_local global i32 0, align 4
@STV_IMAGE_VGA_ROWS = common dso_local global i32 0, align 4
@CPIA2_SENSOR_410 = common dso_local global i32 0, align 4
@VIDEOSIZE_CIF = common dso_local global i32 0, align 4
@STV_IMAGE_CIF_COLS = common dso_local global i32 0, align 4
@STV_IMAGE_CIF_ROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camera_data*)* @reset_camera_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_camera_struct(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  %3 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %4 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @NEVER_FLICKER, align 4
  %8 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %9 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* @CPIA2_VC_VC_JPEG_OPT_DEFAULT, align 4
  %13 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %14 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  store i32 %12, i32* %16, align 4
  %17 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %18 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 2, i32* %20, align 4
  %21 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %22 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i32 20, i32* %24, align 4
  %25 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %26 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %30 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %34 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %38 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  store i32 100, i32* %40, align 8
  %41 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %42 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DEVICE_STV_672, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %1
  %49 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %50 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CPIA2_VP_SENSOR_FLAGS_500, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i8*, i8** @CPIA2_VP_FRAMERATE_15, align 8
  %58 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %59 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i8* %57, i8** %61, align 8
  br label %68

62:                                               ; preds = %48
  %63 = load i8*, i8** @CPIA2_VP_FRAMERATE_30, align 8
  %64 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %65 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %62, %56
  br label %75

69:                                               ; preds = %1
  %70 = load i8*, i8** @CPIA2_VP_FRAMERATE_30, align 8
  %71 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %72 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i8* %70, i8** %74, align 8
  br label %75

75:                                               ; preds = %69, %68
  %76 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %77 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CPIA2_VP_SENSOR_FLAGS_500, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %75
  %84 = load i32, i32* @CPIA2_SENSOR_500, align 4
  %85 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %86 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @VIDEOSIZE_VGA, align 4
  %88 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %89 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @STV_IMAGE_VGA_COLS, align 4
  %91 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %92 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @STV_IMAGE_VGA_ROWS, align 4
  %96 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %97 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  br label %117

100:                                              ; preds = %75
  %101 = load i32, i32* @CPIA2_SENSOR_410, align 4
  %102 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %103 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @VIDEOSIZE_CIF, align 4
  %105 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %106 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @STV_IMAGE_CIF_COLS, align 4
  %108 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %109 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* @STV_IMAGE_CIF_ROWS, align 4
  %113 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %114 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 8
  br label %117

117:                                              ; preds = %100, %83
  %118 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %119 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %124 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %126 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %131 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
