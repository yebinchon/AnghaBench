; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-capture.c_vimc_cap_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-capture.c_vimc_cap_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vimc_cap_device = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"%s: format update: old:%dx%d (0x%x, %d, %d, %d, %d) new:%dx%d (0x%x, %d, %d, %d, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vimc_cap_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vimc_cap_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vimc_cap_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vimc_cap_device* @video_drvdata(%struct.file* %10)
  store %struct.vimc_cap_device* %11, %struct.vimc_cap_device** %8, align 8
  %12 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %8, align 8
  %13 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %12, i32 0, i32 3
  %14 = call i64 @vb2_is_busy(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %107

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = call i32 @vimc_cap_try_fmt_vid_cap(%struct.file* %20, i8* %21, %struct.v4l2_format* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %107

28:                                               ; preds = %19
  %29 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %8, align 8
  %30 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %8, align 8
  %33 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %8, align 8
  %37 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %8, align 8
  %41 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %8, align 8
  %45 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %8, align 8
  %49 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %8, align 8
  %53 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %8, align 8
  %57 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %8, align 8
  %61 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %43, i32 %47, i32 %51, i32 %55, i32 %59, i32 %63, i32 %68, i32 %73, i32 %78, i32 %83, i32 %88, i32 %93, i32 %98)
  %100 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %8, align 8
  %101 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %100, i32 0, i32 0
  %102 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = bitcast %struct.TYPE_5__* %101 to i8*
  %106 = bitcast %struct.TYPE_5__* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 28, i1 false)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %28, %26, %16
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.vimc_cap_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @vimc_cap_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
