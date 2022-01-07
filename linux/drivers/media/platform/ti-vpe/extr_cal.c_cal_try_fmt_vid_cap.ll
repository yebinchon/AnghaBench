; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }
%struct.cal_ctx = type { %struct.TYPE_10__, i32, %struct.cal_fmt** }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.cal_fmt = type { i32, i32 }
%struct.v4l2_subdev_frame_size_enum = type { i64, i64, i64, i64, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Fourcc format (0x%08x) not found.\0A\00", align 1
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_frame_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cal_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cal_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cal_ctx*, align 8
  %8 = alloca %struct.cal_fmt*, align 8
  %9 = alloca %struct.v4l2_subdev_frame_size_enum, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.cal_ctx* @video_drvdata(%struct.file* %12)
  store %struct.cal_ctx* %13, %struct.cal_ctx** %7, align 8
  %14 = load %struct.cal_ctx*, %struct.cal_ctx** %7, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.cal_fmt* @find_format_by_pix(%struct.cal_ctx* %14, i32 %19)
  store %struct.cal_fmt* %20, %struct.cal_fmt** %8, align 8
  %21 = load %struct.cal_fmt*, %struct.cal_fmt** %8, align 8
  %22 = icmp ne %struct.cal_fmt* %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %3
  %24 = load %struct.cal_ctx*, %struct.cal_ctx** %7, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ctx_dbg(i32 3, %struct.cal_ctx* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.cal_ctx*, %struct.cal_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %31, i32 0, i32 2
  %33 = load %struct.cal_fmt**, %struct.cal_fmt*** %32, align 8
  %34 = getelementptr inbounds %struct.cal_fmt*, %struct.cal_fmt** %33, i64 0
  %35 = load %struct.cal_fmt*, %struct.cal_fmt** %34, align 8
  store %struct.cal_fmt* %35, %struct.cal_fmt** %8, align 8
  %36 = load %struct.cal_fmt*, %struct.cal_fmt** %8, align 8
  %37 = getelementptr inbounds %struct.cal_fmt, %struct.cal_fmt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  store i32 %38, i32* %42, align 8
  br label %43

43:                                               ; preds = %23, %3
  %44 = load %struct.cal_ctx*, %struct.cal_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store i32 %49, i32* %53, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %54 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = load %struct.cal_fmt*, %struct.cal_fmt** %8, align 8
  %56 = getelementptr inbounds %struct.cal_fmt, %struct.cal_fmt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 6
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %60 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 5
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 4
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %130, %43
  %63 = load %struct.cal_ctx*, %struct.cal_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @pad, align 4
  %67 = load i32, i32* @enum_frame_size, align 4
  %68 = call i32 @v4l2_subdev_call(i32 %65, i32 %66, i32 %67, i32* null, %struct.v4l2_subdev_frame_size_enum* %9)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %134

72:                                               ; preds = %62
  %73 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %72
  %82 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %83 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 1, i32* %11, align 4
  br label %134

91:                                               ; preds = %81, %72
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %96, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %91
  %101 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %102 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sle i64 %105, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %100
  %110 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %111 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %114, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %109
  %119 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %120 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp sle i64 %123, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  store i32 1, i32* %11, align 4
  br label %134

128:                                              ; preds = %118, %109, %100, %91
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %9, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  br label %62

134:                                              ; preds = %127, %90, %71
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %158, label %137

137:                                              ; preds = %134
  %138 = load %struct.cal_ctx*, %struct.cal_ctx** %7, align 8
  %139 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %145 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i64 %143, i64* %147, align 8
  %148 = load %struct.cal_ctx*, %struct.cal_ctx** %7, align 8
  %149 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %155 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  store i64 %153, i64* %157, align 8
  br label %158

158:                                              ; preds = %137, %134
  %159 = load %struct.cal_ctx*, %struct.cal_ctx** %7, align 8
  %160 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %166 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  store i32 %164, i32* %168, align 8
  %169 = load %struct.cal_ctx*, %struct.cal_ctx** %7, align 8
  %170 = load %struct.cal_fmt*, %struct.cal_fmt** %8, align 8
  %171 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %172 = call i32 @cal_calc_format_size(%struct.cal_ctx* %169, %struct.cal_fmt* %170, %struct.v4l2_format* %171)
  ret i32 %172
}

declare dso_local %struct.cal_ctx* @video_drvdata(%struct.file*) #1

declare dso_local %struct.cal_fmt* @find_format_by_pix(%struct.cal_ctx*, i32) #1

declare dso_local i32 @ctx_dbg(i32, %struct.cal_ctx*, i8*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_frame_size_enum*) #1

declare dso_local i32 @cal_calc_format_size(%struct.cal_ctx*, %struct.cal_fmt*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
