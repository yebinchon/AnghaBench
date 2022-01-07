; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.coda_ctx = type { i64, i32, i32, i32, i32, %struct.coda_codec*, %struct.TYPE_6__* }
%struct.coda_codec = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.coda_q_data = type { i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@CODA_INST_ENCODER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed to determine codec\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @coda_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.coda_ctx*, align 8
  %9 = alloca %struct.coda_q_data*, align 8
  %10 = alloca %struct.coda_codec*, align 8
  %11 = alloca %struct.v4l2_rect, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.coda_ctx* @fh_to_ctx(i8* %13)
  store %struct.coda_ctx* %14, %struct.coda_ctx** %8, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = call i32 @coda_try_fmt_vid_cap(%struct.file* %15, i8* %16, %struct.v4l2_format* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %106

23:                                               ; preds = %3
  %24 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %25 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %26 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %24, i32 %25)
  store %struct.coda_q_data* %26, %struct.coda_q_data** %9, align 8
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %30 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %34 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = call i32 @coda_s_fmt(%struct.coda_ctx* %37, %struct.v4l2_format* %38, %struct.v4l2_rect* %11)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %23
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %106

44:                                               ; preds = %23
  %45 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CODA_INST_ENCODER, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %106

51:                                               ; preds = %44
  %52 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %52, i32 0, i32 6
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %56 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.coda_codec* @coda_find_codec(%struct.TYPE_6__* %54, i32 %57, i32 %62)
  store %struct.coda_codec* %63, %struct.coda_codec** %10, align 8
  %64 = load %struct.coda_codec*, %struct.coda_codec** %10, align 8
  %65 = icmp ne %struct.coda_codec* %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %51
  %67 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %67, i32 0, i32 6
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @v4l2_err(i32* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %106

74:                                               ; preds = %51
  %75 = load %struct.coda_codec*, %struct.coda_codec** %10, align 8
  %76 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %77 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %76, i32 0, i32 5
  store %struct.coda_codec* %75, %struct.coda_codec** %77, align 8
  %78 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %98 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %105 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %74, %66, %50, %42, %21
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @coda_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

declare dso_local i32 @coda_s_fmt(%struct.coda_ctx*, %struct.v4l2_format*, %struct.v4l2_rect*) #1

declare dso_local %struct.coda_codec* @coda_find_codec(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
