; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_vid_out_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_vid_out_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_2__ }
%struct.vivid_dev = type { %struct.TYPE_2__, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, %struct.TYPE_2__ }

@ENOTTY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@vivid_max_rect = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_vid_out_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
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
  %12 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %11, i32 0, i32 3
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
  br label %118

23:                                               ; preds = %15, %3
  %24 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %118

32:                                               ; preds = %23
  %33 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %114 [
    i32 130, label %42
    i32 128, label %57
    i32 129, label %72
    i32 133, label %84
    i32 131, label %99
    i32 132, label %99
  ]

42:                                               ; preds = %32
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %118

50:                                               ; preds = %42
  %51 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %51, i32 0, i32 2
  %53 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %54 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %53, i32 0, i32 5
  %55 = bitcast %struct.TYPE_2__* %52 to i8*
  %56 = bitcast %struct.TYPE_2__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  br label %117

57:                                               ; preds = %32
  %58 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %59 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %118

65:                                               ; preds = %57
  %66 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %66, i32 0, i32 2
  %68 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %69 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %68, i32 0, i32 4
  %70 = bitcast %struct.TYPE_2__* %67 to i8*
  %71 = bitcast %struct.TYPE_2__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  br label %117

72:                                               ; preds = %32
  %73 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %74 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %118

80:                                               ; preds = %72
  %81 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %81, i32 0, i32 2
  %83 = bitcast %struct.TYPE_2__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 bitcast (%struct.TYPE_2__* @vivid_max_rect to i8*), i64 16, i1 false)
  br label %117

84:                                               ; preds = %32
  %85 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %86 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %118

92:                                               ; preds = %84
  %93 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %93, i32 0, i32 2
  %95 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %96 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %95, i32 0, i32 2
  %97 = bitcast %struct.TYPE_2__* %94 to i8*
  %98 = bitcast %struct.TYPE_2__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 16, i1 false)
  br label %117

99:                                               ; preds = %32, %32
  %100 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %101 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %118

107:                                              ; preds = %99
  %108 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %108, i32 0, i32 2
  %110 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %111 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %110, i32 0, i32 0
  %112 = bitcast %struct.TYPE_2__* %109 to i8*
  %113 = bitcast %struct.TYPE_2__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 16, i1 false)
  br label %117

114:                                              ; preds = %32
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %118

117:                                              ; preds = %107, %92, %80, %65, %50
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %114, %104, %89, %77, %62, %47, %29, %20
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
