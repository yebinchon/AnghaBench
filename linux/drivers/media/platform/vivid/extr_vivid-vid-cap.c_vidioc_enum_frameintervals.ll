; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i32, i64, i64, i32, i8*, i32 }
%struct.vivid_dev = type { i32 }
%struct.vivid_fmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MIN_WIDTH = common dso_local global i64 0, align 8
@MAX_WIDTH = common dso_local global i32 0, align 4
@MAX_ZOOM = common dso_local global i32 0, align 4
@MIN_HEIGHT = common dso_local global i64 0, align 8
@MAX_HEIGHT = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i8* null, align 8
@webcam_sizes = common dso_local global %struct.TYPE_3__* null, align 8
@VIVID_WEBCAM_SIZES = common dso_local global i32 0, align 4
@webcam_intervals = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca %struct.vivid_fmt*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vivid_dev* @video_drvdata(%struct.file* %11)
  store %struct.vivid_dev* %12, %struct.vivid_dev** %8, align 8
  %13 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %14 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.vivid_fmt* @vivid_get_format(%struct.vivid_dev* %13, i32 %16)
  store %struct.vivid_fmt* %17, %struct.vivid_fmt** %9, align 8
  %18 = load %struct.vivid_fmt*, %struct.vivid_fmt** %9, align 8
  %19 = icmp ne %struct.vivid_fmt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %146

23:                                               ; preds = %3
  %24 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %25 = call i32 @vivid_is_webcam(%struct.vivid_dev* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %80, label %27

27:                                               ; preds = %23
  %28 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %146

35:                                               ; preds = %27
  %36 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MIN_WIDTH, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @MAX_WIDTH, align 4
  %46 = load i32, i32* @MAX_ZOOM, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = icmp sgt i64 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %41, %35
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %146

53:                                               ; preds = %41
  %54 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MIN_HEIGHT, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @MAX_HEIGHT, align 4
  %64 = load i32, i32* @MAX_ZOOM, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = icmp sgt i64 %62, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59, %53
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %146

71:                                               ; preds = %59
  %72 = load i8*, i8** @V4L2_FRMIVAL_TYPE_DISCRETE, align 8
  %73 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %76 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %4, align 4
  br label %146

80:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %110, %80
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @webcam_sizes, align 8
  %84 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %83)
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %81
  %87 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @webcam_sizes, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %89, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %86
  %98 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @webcam_sizes, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %100, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %113

109:                                              ; preds = %97, %86
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %81

113:                                              ; preds = %108, %81
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @webcam_sizes, align 8
  %116 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %115)
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %146

121:                                              ; preds = %113
  %122 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %123 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @VIVID_WEBCAM_SIZES, align 4
  %126 = load i32, i32* %10, align 4
  %127 = sub nsw i32 %125, %126
  %128 = mul nsw i32 2, %127
  %129 = icmp sge i32 %124, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %146

133:                                              ; preds = %121
  %134 = load i8*, i8** @V4L2_FRMIVAL_TYPE_DISCRETE, align 8
  %135 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %136 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load i32*, i32** @webcam_intervals, align 8
  %138 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %139 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %145 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %133, %130, %118, %71, %68, %50, %32, %20
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.vivid_fmt* @vivid_get_format(%struct.vivid_dev*, i32) #1

declare dso_local i32 @vivid_is_webcam(%struct.vivid_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
