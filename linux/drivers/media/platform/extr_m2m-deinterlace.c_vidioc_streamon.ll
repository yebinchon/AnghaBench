; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_vidioc_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_vidioc_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.deinterlace_q_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.deinterlace_ctx = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"src and dst formats don't match.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED_BT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"src and dst field conversion [(%d)->(%d)] not supported.\0A\00", align 1
@V4L2_FIELD_INTERLACED_TB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.deinterlace_q_data*, align 8
  %9 = alloca %struct.deinterlace_q_data*, align 8
  %10 = alloca %struct.deinterlace_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.deinterlace_ctx*
  store %struct.deinterlace_ctx* %12, %struct.deinterlace_ctx** %10, align 8
  %13 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %14 = call %struct.deinterlace_q_data* @get_q_data(i32 %13)
  store %struct.deinterlace_q_data* %14, %struct.deinterlace_q_data** %8, align 8
  %15 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %16 = call %struct.deinterlace_q_data* @get_q_data(i32 %15)
  store %struct.deinterlace_q_data* %16, %struct.deinterlace_q_data** %9, align 8
  %17 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %8, align 8
  %18 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %9, align 8
  %23 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %21, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %10, align 8
  %30 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %105

36:                                               ; preds = %3
  %37 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %8, align 8
  %38 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %94 [
    i32 129, label %40
    i32 128, label %67
  ]

40:                                               ; preds = %36
  %41 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %9, align 8
  %42 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %9, align 8
  %48 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @V4L2_FIELD_INTERLACED_BT, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %10, align 8
  %54 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %8, align 8
  %58 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %9, align 8
  %61 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %56, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %105

66:                                               ; preds = %46, %40
  br label %97

67:                                               ; preds = %36
  %68 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %9, align 8
  %69 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %9, align 8
  %75 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @V4L2_FIELD_INTERLACED_TB, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %10, align 8
  %81 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %8, align 8
  %85 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %9, align 8
  %88 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %83, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %105

93:                                               ; preds = %73, %67
  br label %97

94:                                               ; preds = %36
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %105

97:                                               ; preds = %93, %66
  %98 = load %struct.file*, %struct.file** %5, align 8
  %99 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %10, align 8
  %100 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @v4l2_m2m_streamon(%struct.file* %98, i32 %102, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %97, %94, %79, %52, %28
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.deinterlace_q_data* @get_q_data(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

declare dso_local i32 @v4l2_m2m_streamon(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
