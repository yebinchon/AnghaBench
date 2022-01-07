; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.camera_data = type { i64, i64, i32, %struct.TYPE_12__*, %struct.TYPE_9__, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"Requested width = %d, height = %d\0A\00", align 1
@FRAME_READING = common dso_local global i64 0, align 8
@FRAME_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cpia2_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.camera_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.camera_data* @video_drvdata(%struct.file* %11)
  store %struct.camera_data* %12, %struct.camera_data** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %16 = call i32 @cpia2_try_fmt_vid_cap(%struct.file* %13, i8* %14, %struct.v4l2_format* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %137

21:                                               ; preds = %3
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %28 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %30 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %42)
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %50 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %21
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %60 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %98

63:                                               ; preds = %53, %21
  %64 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %70 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %77 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %84 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i64 %82, i64* %86, align 8
  %87 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %93 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i64 %91, i64* %95, align 8
  %96 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %97 = call i32 @cpia2_set_format(%struct.camera_data* %96)
  br label %98

98:                                               ; preds = %63, %53
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %133, %98
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %102 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %99
  %106 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %107 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %106, i32 0, i32 3
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @FRAME_READING, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %105
  %117 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @sync(%struct.camera_data* %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %4, align 4
  br label %137

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %105
  %125 = load i64, i64* @FRAME_EMPTY, align 8
  %126 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %127 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %126, i32 0, i32 3
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i64 %125, i64* %132, align 8
  br label %133

133:                                              ; preds = %124
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %99

136:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %121, %19
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.camera_data* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cpia2_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @DBG(i8*, i64, i64) #1

declare dso_local i32 @cpia2_set_format(%struct.camera_data*) #1

declare dso_local i32 @sync(%struct.camera_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
