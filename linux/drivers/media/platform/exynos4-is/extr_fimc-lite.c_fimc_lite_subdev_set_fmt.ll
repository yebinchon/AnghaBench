; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.fimc_lite = type { i32, i32, i32, %struct.flite_frame, %struct.flite_frame }
%struct.flite_frame = type { i32, i32, %struct.TYPE_4__, %struct.fimc_fmt* }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.fimc_fmt = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pad%d: code: 0x%x, %dx%d\0A\00", align 1
@FIMC_IO_ISP = common dso_local global i64 0, align 8
@FIMC_IO_DMA = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@FLITE_SD_PAD_SINK = common dso_local global i64 0, align 8
@FLITE_SD_PAD_SOURCE_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @fimc_lite_subdev_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_subdev_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.fimc_lite*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.flite_frame*, align 8
  %11 = alloca %struct.flite_frame*, align 8
  %12 = alloca %struct.fimc_fmt*, align 8
  %13 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call %struct.fimc_lite* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.fimc_lite* %16, %struct.fimc_lite** %8, align 8
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %18, %struct.v4l2_mbus_framefmt** %9, align 8
  %19 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %20 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %19, i32 0, i32 4
  store %struct.flite_frame* %20, %struct.flite_frame** %10, align 8
  %21 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %22 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %21, i32 0, i32 3
  store %struct.flite_frame* %22, %struct.flite_frame** %11, align 8
  %23 = load i32, i32* @debug, align 4
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @v4l2_dbg(i32 1, i32 %23, %struct.v4l2_subdev* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %39 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %42 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %41, i32 0, i32 2
  %43 = call i64 @atomic_read(i32* %42)
  %44 = load i64, i64* @FIMC_IO_ISP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %3
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %46, %3
  %53 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %54 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %53, i32 0, i32 2
  %55 = call i64 @atomic_read(i32* %54)
  %56 = load i64, i64* @FIMC_IO_DMA, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %60 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %59, i32 0, i32 1
  %61 = call i64 @vb2_is_busy(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58, %46
  %64 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %65 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %170

69:                                               ; preds = %58, %52
  %70 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %71 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %72 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %73 = call %struct.fimc_fmt* @fimc_lite_subdev_try_fmt(%struct.fimc_lite* %70, %struct.v4l2_subdev_pad_config* %71, %struct.v4l2_subdev_format* %72)
  store %struct.fimc_fmt* %73, %struct.fimc_fmt** %12, align 8
  %74 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %69
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %81 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %82 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.v4l2_mbus_framefmt* @__fimc_lite_subdev_get_try_fmt(%struct.v4l2_subdev* %80, %struct.v4l2_subdev_pad_config* %81, i32 %84)
  store %struct.v4l2_mbus_framefmt* %85, %struct.v4l2_mbus_framefmt** %9, align 8
  %86 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %87 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %87, i32 0, i32 2
  %89 = bitcast %struct.v4l2_mbus_framefmt* %86 to i8*
  %90 = bitcast %struct.v4l2_mbus_framefmt* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 8 %90, i64 12, i1 false)
  %91 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* @FLITE_SD_PAD_SINK, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %79
  %98 = load i32, i32* @FLITE_SD_PAD_SOURCE_DMA, align 4
  store i32 %98, i32* %14, align 4
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %100 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call %struct.v4l2_mbus_framefmt* @__fimc_lite_subdev_get_try_fmt(%struct.v4l2_subdev* %99, %struct.v4l2_subdev_pad_config* %100, i32 %101)
  store %struct.v4l2_mbus_framefmt* %102, %struct.v4l2_mbus_framefmt** %13, align 8
  %103 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %104 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %105 = bitcast %struct.v4l2_mbus_framefmt* %103 to i8*
  %106 = bitcast %struct.v4l2_mbus_framefmt* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 12, i1 false)
  br label %107

107:                                              ; preds = %97, %79
  %108 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %109 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  store i32 0, i32* %4, align 4
  br label %170

111:                                              ; preds = %69
  %112 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = zext i32 %114 to i64
  %116 = load i64, i64* @FLITE_SD_PAD_SINK, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %166

118:                                              ; preds = %111
  %119 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %120 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %123 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %125 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %128 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.fimc_fmt*, %struct.fimc_fmt** %12, align 8
  %130 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %131 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %130, i32 0, i32 3
  store %struct.fimc_fmt* %129, %struct.fimc_fmt** %131, align 8
  %132 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %133 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %136 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  store i32 %134, i32* %137, align 4
  %138 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %139 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %142 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  %144 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %145 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %148 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  %150 = load %struct.flite_frame*, %struct.flite_frame** %11, align 8
  %151 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %150, i32 0, i32 2
  %152 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %153 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %152, i32 0, i32 2
  %154 = bitcast %struct.TYPE_4__* %151 to i8*
  %155 = bitcast %struct.TYPE_4__* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 %155, i64 24, i1 false)
  %156 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %157 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.flite_frame*, %struct.flite_frame** %11, align 8
  %160 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %162 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.flite_frame*, %struct.flite_frame** %11, align 8
  %165 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %118, %111
  %167 = load %struct.fimc_lite*, %struct.fimc_lite** %8, align 8
  %168 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %166, %107, %63
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.fimc_lite* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.fimc_fmt* @fimc_lite_subdev_try_fmt(%struct.fimc_lite*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__fimc_lite_subdev_get_try_fmt(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
