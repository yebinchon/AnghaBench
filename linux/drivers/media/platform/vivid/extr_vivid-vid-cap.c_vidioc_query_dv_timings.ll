; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_query_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_query_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_dv_timings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }
%struct.vivid_dev = type { i32, i32*, i64*, i64, i64*, i32, %struct.v4l2_dv_timings* }

@ENODATA = common dso_local global i32 0, align 4
@NO_SIGNAL = common dso_local global i64 0, align 8
@ENOLINK = common dso_local global i32 0, align 4
@NO_LOCK = common dso_local global i64 0, align 8
@ENOLCK = common dso_local global i32 0, align 4
@OUT_OF_RANGE = common dso_local global i64 0, align 8
@vivid_dv_timings_cap = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ERANGE = common dso_local global i32 0, align 4
@CURRENT_DV_TIMINGS = common dso_local global i64 0, align 8
@SELECTED_DV_TIMINGS = common dso_local global i64 0, align 8
@v4l2_dv_timings_presets = common dso_local global %struct.v4l2_dv_timings* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_query_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vivid_dev* @video_drvdata(%struct.file* %11)
  store %struct.vivid_dev* %12, %struct.vivid_dev** %8, align 8
  %13 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %14 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %17 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %24 = call i32 @vivid_is_hdmi_cap(%struct.vivid_dev* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %143

29:                                               ; preds = %3
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NO_SIGNAL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %29
  %40 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %41 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %29
  %45 = load i32, i32* @ENOLINK, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %143

47:                                               ; preds = %39
  %48 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %49 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NO_LOCK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOLCK, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %143

60:                                               ; preds = %47
  %61 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %62 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @OUT_OF_RANGE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vivid_dv_timings_cap, i32 0, i32 0, i32 0), align 4
  %72 = mul nsw i32 %71, 2
  %73 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @ERANGE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %143

78:                                               ; preds = %60
  %79 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %80 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CURRENT_DV_TIMINGS, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %90 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %91 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %90, i32 0, i32 6
  %92 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %92, i64 %94
  %96 = bitcast %struct.v4l2_dv_timings* %89 to i8*
  %97 = bitcast %struct.v4l2_dv_timings* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  br label %142

98:                                               ; preds = %78
  %99 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %100 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SELECTED_DV_TIMINGS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %98
  %109 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %110 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %111 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %112 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %111, i32 0, i32 4
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %110, i64 %117
  %119 = bitcast %struct.v4l2_dv_timings* %109 to i8*
  %120 = bitcast %struct.v4l2_dv_timings* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 4, i1 false)
  br label %141

121:                                              ; preds = %98
  %122 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %123 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %124 = load i32, i32* %10, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %123, i64 %125
  %127 = bitcast %struct.v4l2_dv_timings* %122 to i8*
  %128 = bitcast %struct.v4l2_dv_timings* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 4, i1 false)
  %129 = load i32, i32* %10, align 4
  %130 = add i32 %129, 1
  %131 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %132 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = urem i32 %130, %133
  %135 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %136 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  br label %141

141:                                              ; preds = %121, %108
  br label %142

142:                                              ; preds = %141, %88
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %70, %57, %44, %26
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vivid_is_hdmi_cap(%struct.vivid_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
