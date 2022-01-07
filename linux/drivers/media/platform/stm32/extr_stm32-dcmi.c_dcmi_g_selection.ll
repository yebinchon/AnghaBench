; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.stm32_dcmi = type { %struct.TYPE_8__, %struct.TYPE_5__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @dcmi_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.stm32_dcmi*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.stm32_dcmi* @video_drvdata(%struct.file* %9)
  store %struct.stm32_dcmi* %10, %struct.stm32_dcmi** %8, align 8
  %11 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %72

19:                                               ; preds = %3
  %20 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %68 [
    i32 128, label %23
    i32 129, label %23
    i32 130, label %30
  ]

23:                                               ; preds = %19, %19
  %24 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %24, i32 0, i32 2
  %26 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %8, align 8
  %27 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %26, i32 0, i32 3
  %28 = bitcast %struct.TYPE_5__* %25 to i8*
  %29 = bitcast %struct.TYPE_5__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %72

30:                                               ; preds = %19
  %31 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %8, align 8
  %32 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %36, i32 0, i32 2
  %38 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %8, align 8
  %39 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %38, i32 0, i32 1
  %40 = bitcast %struct.TYPE_5__* %37 to i8*
  %41 = bitcast %struct.TYPE_5__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 16, i1 false)
  br label %67

42:                                               ; preds = %30
  %43 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i32 0, i32* %45, align 4
  %46 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %8, align 8
  %50 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %8, align 8
  %59 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %42, %35
  br label %71

68:                                               ; preds = %19
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %72

71:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %68, %23, %16
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.stm32_dcmi* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
