; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_vidioc_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_vidioc_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.g2d_ctx = type { %struct.TYPE_4__, %struct.g2d_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.g2d_dev = type { i32 }
%struct.vb2_queue = type { i32 }
%struct.g2d_frame = type { i32, %struct.g2d_fmt*, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.g2d_fmt = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"queue (%d) bust\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.g2d_ctx*, align 8
  %9 = alloca %struct.g2d_dev*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca %struct.g2d_frame*, align 8
  %12 = alloca %struct.g2d_fmt*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.g2d_ctx*
  store %struct.g2d_ctx* %15, %struct.g2d_ctx** %8, align 8
  %16 = load %struct.g2d_ctx*, %struct.g2d_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %16, i32 0, i32 1
  %18 = load %struct.g2d_dev*, %struct.g2d_dev** %17, align 8
  store %struct.g2d_dev* %18, %struct.g2d_dev** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = call i32 @vidioc_try_fmt(%struct.file* %19, i8* %20, %struct.v4l2_format* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %4, align 4
  br label %124

27:                                               ; preds = %3
  %28 = load %struct.g2d_ctx*, %struct.g2d_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %31, i32 %34)
  store %struct.vb2_queue* %35, %struct.vb2_queue** %10, align 8
  %36 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %37 = call i64 @vb2_is_busy(%struct.vb2_queue* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %27
  %40 = load %struct.g2d_dev*, %struct.g2d_dev** %9, align 8
  %41 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %40, i32 0, i32 0
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @v4l2_err(i32* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %124

48:                                               ; preds = %27
  %49 = load %struct.g2d_ctx*, %struct.g2d_ctx** %8, align 8
  %50 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.g2d_frame* @get_frame(%struct.g2d_ctx* %49, i32 %52)
  store %struct.g2d_frame* %53, %struct.g2d_frame** %11, align 8
  %54 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %55 = call i64 @IS_ERR(%struct.g2d_frame* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %59 = call i32 @PTR_ERR(%struct.g2d_frame* %58)
  store i32 %59, i32* %4, align 4
  br label %124

60:                                               ; preds = %48
  %61 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %62 = call %struct.g2d_fmt* @find_fmt(%struct.v4l2_format* %61)
  store %struct.g2d_fmt* %62, %struct.g2d_fmt** %12, align 8
  %63 = load %struct.g2d_fmt*, %struct.g2d_fmt** %12, align 8
  %64 = icmp ne %struct.g2d_fmt* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %124

68:                                               ; preds = %60
  %69 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %75 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %82 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %89 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %88, i32 0, i32 10
  store i32 %87, i32* %89, align 8
  %90 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %91 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %90, i32 0, i32 9
  store i64 0, i64* %91, align 8
  %92 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %93 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %92, i32 0, i32 8
  store i64 0, i64* %93, align 8
  %94 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %95 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %98 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %100 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %103 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %105 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %108 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %110 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %113 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.g2d_fmt*, %struct.g2d_fmt** %12, align 8
  %115 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %116 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %115, i32 0, i32 1
  store %struct.g2d_fmt* %114, %struct.g2d_fmt** %116, align 8
  %117 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.g2d_frame*, %struct.g2d_frame** %11, align 8
  %123 = getelementptr inbounds %struct.g2d_frame, %struct.g2d_frame* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %68, %65, %57, %39, %25
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @vidioc_try_fmt(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local %struct.g2d_frame* @get_frame(%struct.g2d_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.g2d_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.g2d_frame*) #1

declare dso_local %struct.g2d_fmt* @find_fmt(%struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
