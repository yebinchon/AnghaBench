; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_vidioc_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_vidioc_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32 }
%struct.camif_vp = type { i32, i32*, %struct.camif_fmt*, i32, i32, %struct.camif_frame }
%struct.camif_fmt = type { i32, i32 }
%struct.camif_frame = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"[vp%d]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"%ux%u. payload: %u. fmt: 0x%08x. %d %d. sizeimage: %d. bpl: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @s3c_camif_vidioc_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_vidioc_s_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  %9 = alloca %struct.camif_vp*, align 8
  %10 = alloca %struct.camif_frame*, align 8
  %11 = alloca %struct.camif_fmt*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.v4l2_pix_format* %15, %struct.v4l2_pix_format** %8, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.camif_vp* @video_drvdata(%struct.file* %16)
  store %struct.camif_vp* %17, %struct.camif_vp** %9, align 8
  %18 = load %struct.camif_vp*, %struct.camif_vp** %9, align 8
  %19 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %18, i32 0, i32 5
  store %struct.camif_frame* %19, %struct.camif_frame** %10, align 8
  store %struct.camif_fmt* null, %struct.camif_fmt** %11, align 8
  %20 = load %struct.camif_vp*, %struct.camif_vp** %9, align 8
  %21 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.camif_vp*, %struct.camif_vp** %9, align 8
  %25 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %24, i32 0, i32 3
  %26 = call i64 @vb2_is_busy(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %121

31:                                               ; preds = %3
  %32 = load %struct.camif_vp*, %struct.camif_vp** %9, align 8
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @__camif_video_try_format(%struct.camif_vp* %32, %struct.v4l2_pix_format* %35, %struct.camif_fmt** %11)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %4, align 4
  br label %121

41:                                               ; preds = %31
  %42 = load %struct.camif_fmt*, %struct.camif_fmt** %11, align 8
  %43 = load %struct.camif_vp*, %struct.camif_vp** %9, align 8
  %44 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %43, i32 0, i32 2
  store %struct.camif_fmt* %42, %struct.camif_fmt** %44, align 8
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.camif_vp*, %struct.camif_vp** %9, align 8
  %49 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.camif_frame*, %struct.camif_frame** %10, align 8
  %54 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.camif_frame*, %struct.camif_frame** %10, align 8
  %59 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.camif_frame*, %struct.camif_frame** %10, align 8
  %64 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.camif_frame*, %struct.camif_frame** %10, align 8
  %70 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.camif_frame*, %struct.camif_frame** %10, align 8
  %73 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.camif_frame*, %struct.camif_frame** %10, align 8
  %76 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.camif_vp*, %struct.camif_vp** %9, align 8
  %79 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %41
  %83 = load i8*, i8** %6, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.camif_vp*, %struct.camif_vp** %9, align 8
  %86 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %85, i32 0, i32 1
  store i32* %84, i32** %86, align 8
  br label %87

87:                                               ; preds = %82, %41
  %88 = load %struct.camif_frame*, %struct.camif_frame** %10, align 8
  %89 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.camif_frame*, %struct.camif_frame** %10, align 8
  %92 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.camif_vp*, %struct.camif_vp** %9, align 8
  %95 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.camif_fmt*, %struct.camif_fmt** %11, align 8
  %98 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = load %struct.camif_fmt*, %struct.camif_fmt** %11, align 8
  %108 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = load %struct.camif_fmt*, %struct.camif_fmt** %11, align 8
  %112 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %118 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %93, i32 %96, i32 %99, i32 %110, i32 %113, i32 %116, i32 %119)
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %87, %39, %28
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.camif_vp* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @__camif_video_try_format(%struct.camif_vp*, %struct.v4l2_pix_format*, %struct.camif_fmt**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
