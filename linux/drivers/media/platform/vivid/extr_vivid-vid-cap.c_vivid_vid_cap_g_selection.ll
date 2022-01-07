; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_vid_cap_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_vid_cap_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_2__ }
%struct.vivid_dev = type { %struct.TYPE_2__, i32, %struct.TYPE_2__, %struct.TYPE_2__, i32, %struct.TYPE_2__ }

@ENOTTY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@vivid_max_rect = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_vid_cap_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.vivid_dev* @video_drvdata(%struct.file* %9)
  store %struct.vivid_dev* %10, %struct.vivid_dev** %8, align 8
  %11 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %17 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOTTY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %125

23:                                               ; preds = %15, %3
  %24 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %125

32:                                               ; preds = %23
  %33 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %34 = call i64 @vivid_is_webcam(%struct.vivid_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @ENODATA, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %125

39:                                               ; preds = %32
  %40 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %121 [
    i32 130, label %49
    i32 128, label %64
    i32 129, label %64
    i32 132, label %79
    i32 133, label %91
    i32 131, label %106
  ]

49:                                               ; preds = %39
  %50 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %51 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %125

57:                                               ; preds = %49
  %58 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %58, i32 0, i32 2
  %60 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %61 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %60, i32 0, i32 5
  %62 = bitcast %struct.TYPE_2__* %59 to i8*
  %63 = bitcast %struct.TYPE_2__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  br label %124

64:                                               ; preds = %39, %39
  %65 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %66 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %125

72:                                               ; preds = %64
  %73 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %73, i32 0, i32 2
  %75 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %76 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %75, i32 0, i32 3
  %77 = bitcast %struct.TYPE_2__* %74 to i8*
  %78 = bitcast %struct.TYPE_2__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  br label %124

79:                                               ; preds = %39
  %80 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %81 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %125

87:                                               ; preds = %79
  %88 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %88, i32 0, i32 2
  %90 = bitcast %struct.TYPE_2__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 bitcast (%struct.TYPE_2__* @vivid_max_rect to i8*), i64 16, i1 false)
  br label %124

91:                                               ; preds = %39
  %92 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %93 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %125

99:                                               ; preds = %91
  %100 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %100, i32 0, i32 2
  %102 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %103 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %102, i32 0, i32 2
  %104 = bitcast %struct.TYPE_2__* %101 to i8*
  %105 = bitcast %struct.TYPE_2__* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 16, i1 false)
  br label %124

106:                                              ; preds = %39
  %107 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %108 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %125

114:                                              ; preds = %106
  %115 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %115, i32 0, i32 2
  %117 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %118 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %117, i32 0, i32 0
  %119 = bitcast %struct.TYPE_2__* %116 to i8*
  %120 = bitcast %struct.TYPE_2__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 16, i1 false)
  br label %124

121:                                              ; preds = %39
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %125

124:                                              ; preds = %114, %99, %87, %72, %57
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %121, %111, %96, %84, %69, %54, %36, %29, %20
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vivid_is_webcam(%struct.vivid_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
