; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_reset_camera_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_reset_camera_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, %struct.cam_params }
%struct.cam_params = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@BRIGHTNESS_DEF = common dso_local global i32 0, align 4
@CONTRAST_DEF = common dso_local global i32 0, align 4
@SATURATION_DEF = common dso_local global i32 0, align 4
@COMP_RED = common dso_local global i32 0, align 4
@COMP_GREEN1 = common dso_local global i32 0, align 4
@COMP_GREEN2 = common dso_local global i32 0, align 4
@COMP_BLUE = common dso_local global i32 0, align 4
@flicker_jumps = common dso_local global i32*** null, align 8
@SUBSAMPLE_420 = common dso_local global i32 0, align 4
@YUVORDER_YUYV = common dso_local global i32 0, align 4
@CPIA_COMPRESSION_AUTO = common dso_local global i32 0, align 4
@NO_DECIMATION = common dso_local global i32 0, align 4
@COMP_TARGET_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @reset_camera_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_camera_params(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.cam_params*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 1
  store %struct.cam_params* %8, %struct.cam_params** %4, align 8
  %9 = load i32, i32* @BRIGHTNESS_DEF, align 4
  %10 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %11 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @CONTRAST_DEF, align 4
  %14 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %15 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @SATURATION_DEF, align 4
  %18 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %19 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %22 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %21, i32 0, i32 12
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %25 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  store i32 2, i32* %26, align 4
  %27 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %28 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %27, i32 0, i32 12
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %31 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %30, i32 0, i32 12
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %34 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %33, i32 0, i32 12
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 11
  store i64 0, i64* %35, align 8
  %36 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %37 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %36, i32 0, i32 12
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 10
  store i64 0, i64* %38, align 8
  %39 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %40 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %39, i32 0, i32 12
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 4
  store i32 185, i32* %41, align 8
  %42 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %43 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %42, i32 0, i32 12
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 9
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @COMP_RED, align 4
  %46 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %47 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %46, i32 0, i32 12
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 8
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @COMP_GREEN1, align 4
  %50 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %51 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %50, i32 0, i32 12
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 7
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @COMP_GREEN2, align 4
  %54 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %55 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %54, i32 0, i32 12
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @COMP_BLUE, align 4
  %58 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %59 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %58, i32 0, i32 12
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 4
  %61 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %62 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %61, i32 0, i32 11
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  store i32 2, i32* %63, align 8
  %64 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %65 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %64, i32 0, i32 11
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  store i32 32, i32* %66, align 4
  %67 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %68 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %67, i32 0, i32 11
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  store i32 6, i32* %69, align 8
  %70 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %71 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 3
  store i32 92, i32* %72, align 4
  %73 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %74 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %73, i32 0, i32 10
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  store i32 24, i32* %75, align 8
  %76 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %77 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  store i32 22, i32* %78, align 4
  %79 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %80 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %79, i32 0, i32 10
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  store i32 36, i32* %81, align 8
  %82 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %83 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %82, i32 0, i32 10
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 3
  store i32 52, i32* %84, align 4
  %85 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %86 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  store i32 20, i32* %87, align 8
  %88 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %89 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %88, i32 0, i32 9
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  store i32 24, i32* %90, align 4
  %91 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %92 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  store i32 26, i32* %93, align 8
  %94 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %95 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 3
  store i32 26, i32* %96, align 4
  %97 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %98 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  store i32 3, i32* %99, align 8
  %100 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %101 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  store i32 11, i32* %102, align 4
  %103 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %104 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %103, i32 0, i32 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  %106 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %107 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 3
  store i32 3, i32* %108, align 4
  %109 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %110 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 4
  store i32 2, i32* %111, align 8
  %112 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %113 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %112, i32 0, i32 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 5
  store i32 5, i32* %114, align 4
  %115 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %116 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %115, i32 0, i32 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 6
  store i32 3, i32* %117, align 8
  %118 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %119 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 7
  store i32 2, i32* %120, align 4
  %121 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %122 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %125 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  %127 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %128 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %131 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load i32***, i32**** @flicker_jumps, align 8
  %134 = load %struct.sd*, %struct.sd** %3, align 8
  %135 = getelementptr inbounds %struct.sd, %struct.sd* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32**, i32*** %133, i64 %136
  %138 = load i32**, i32*** %137, align 8
  %139 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %140 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %138, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %147 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %146, i32 0, i32 7
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %145, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %154 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 8
  %156 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %157 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @find_over_exposure(i32 %159)
  %161 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %162 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %165 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  store i32 6, i32* %166, align 4
  %167 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %168 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 1
  store i32 6, i32* %169, align 4
  %170 = load i32, i32* @SUBSAMPLE_420, align 4
  %171 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %172 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  %174 = load i32, i32* @YUVORDER_YUYV, align 4
  %175 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %176 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 4
  %178 = load i32, i32* @CPIA_COMPRESSION_AUTO, align 4
  %179 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %180 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  %182 = load i32, i32* @NO_DECIMATION, align 4
  %183 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %184 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 4
  %186 = load i32, i32* @COMP_TARGET_DEF, align 4
  %187 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %188 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  store i32 %186, i32* %189, align 8
  %190 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %191 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  store i32 15, i32* %192, align 8
  %193 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %194 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  store i32 5, i32* %195, align 4
  %196 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %197 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 4
  store i64 0, i64* %198, align 8
  %199 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %200 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 3
  store i64 0, i64* %201, align 8
  %202 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %203 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 2
  store i64 0, i64* %204, align 8
  %205 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %206 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  store i64 0, i64* %207, align 8
  %208 = load %struct.cam_params*, %struct.cam_params** %4, align 8
  %209 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  store i64 0, i64* %210, align 8
  ret void
}

declare dso_local i32 @find_over_exposure(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
