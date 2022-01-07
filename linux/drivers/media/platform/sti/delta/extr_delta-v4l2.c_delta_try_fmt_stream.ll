; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_try_fmt_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_try_fmt_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i64, i64, i64, i64, i64 }
%struct.delta_ctx = type { i32, %struct.TYPE_4__, %struct.delta_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.delta_dev = type { i32 }
%struct.delta_dec = type { i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"%s V4L2 TRY_FMT (OUTPUT): unsupported format %4.4s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DELTA_MIN_WIDTH = common dso_local global i32 0, align 4
@DELTA_MAX_WIDTH = common dso_local global i64 0, align 8
@DELTA_MIN_HEIGHT = common dso_local global i32 0, align 4
@DELTA_MAX_HEIGHT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [86 x i8] c"%s V4L2 TRY_FMT (OUTPUT): resolution updated %dx%d -> %dx%d to fit min/max/alignment\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"%s V4L2 TRY_FMT (OUTPUT): size updated %d -> %d to fit estimated size\0A\00", align 1
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @delta_try_fmt_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_try_fmt_stream(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.delta_ctx*, align 8
  %9 = alloca %struct.delta_dev*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.delta_dec*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.delta_ctx* @to_ctx(i32 %18)
  store %struct.delta_ctx* %19, %struct.delta_ctx** %8, align 8
  %20 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %20, i32 0, i32 2
  %22 = load %struct.delta_dev*, %struct.delta_dev** %21, align 8
  store %struct.delta_dev* %22, %struct.delta_dev** %9, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.v4l2_pix_format* %25, %struct.v4l2_pix_format** %10, align 8
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.delta_dec* @delta_find_decoder(%struct.delta_ctx* %29, i64 %30, i32 %34)
  store %struct.delta_dec* %35, %struct.delta_dec** %12, align 8
  %36 = load %struct.delta_dec*, %struct.delta_dec** %12, align 8
  %37 = icmp ne %struct.delta_dec* %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %3
  %39 = load %struct.delta_dev*, %struct.delta_dev** %9, align 8
  %40 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 0
  %47 = bitcast i64* %46 to i8*
  %48 = ptrtoint i8* %47 to i64
  %49 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %158

52:                                               ; preds = %3
  %53 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %13, align 8
  %56 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %14, align 8
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 1
  %61 = load i32, i32* @DELTA_MIN_WIDTH, align 4
  %62 = load %struct.delta_dec*, %struct.delta_dec** %12, align 8
  %63 = getelementptr inbounds %struct.delta_dec, %struct.delta_dec* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = load %struct.delta_dec*, %struct.delta_dec** %12, align 8
  %68 = getelementptr inbounds %struct.delta_dec, %struct.delta_dec* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  br label %72

70:                                               ; preds = %52
  %71 = load i64, i64* @DELTA_MAX_WIDTH, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i64 [ %69, %66 ], [ %71, %70 ]
  %74 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %75 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %74, i32 0, i32 2
  %76 = load i32, i32* @DELTA_MIN_HEIGHT, align 4
  %77 = load %struct.delta_dec*, %struct.delta_dec** %12, align 8
  %78 = getelementptr inbounds %struct.delta_dec, %struct.delta_dec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.delta_dec*, %struct.delta_dec** %12, align 8
  %83 = getelementptr inbounds %struct.delta_dec, %struct.delta_dec* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  br label %87

85:                                               ; preds = %72
  %86 = load i64, i64* @DELTA_MAX_HEIGHT, align 8
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i64 [ %84, %81 ], [ %86, %85 ]
  %89 = call i32 @v4l_bound_align_image(i64* %60, i32 %61, i64 %73, i32 0, i64* %75, i32 %76, i64 %88, i32 0, i32 0)
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %87
  %96 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %14, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %95, %87
  %102 = load %struct.delta_dev*, %struct.delta_dev** %9, align 8
  %103 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %106 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %114 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %104, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %107, i64 %108, i64 %109, i64 %112, i64 %115)
  br label %117

117:                                              ; preds = %101, %95
  %118 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %119 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %122 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @estimated_au_size(i64 %120, i64 %123)
  store i64 %124, i64* %15, align 8
  %125 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %126 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %15, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %117
  %131 = load %struct.delta_dev*, %struct.delta_dev** %9, align 8
  %132 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %135 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %138 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %15, align 8
  %141 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %133, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %136, i64 %139, i64 %140)
  %142 = load i64, i64* %15, align 8
  %143 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %144 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %143, i32 0, i32 3
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %130, %117
  %146 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %147 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %146, i32 0, i32 5
  store i64 0, i64* %147, align 8
  %148 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %149 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %155 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %156 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %155, i32 0, i32 4
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %145
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %38
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.delta_ctx* @to_ctx(i32) #1

declare dso_local %struct.delta_dec* @delta_find_decoder(%struct.delta_ctx*, i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @v4l_bound_align_image(i64*, i32, i64, i32, i64*, i32, i64, i32, i32) #1

declare dso_local i64 @estimated_au_size(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
