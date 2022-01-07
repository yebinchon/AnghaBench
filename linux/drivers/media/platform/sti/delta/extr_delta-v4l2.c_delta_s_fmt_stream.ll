; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_s_fmt_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_s_fmt_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.delta_ctx = type { i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, %struct.delta_dev* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.delta_dev = type { i32 }
%struct.vb2_queue = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"%s V4L2 S_FMT (OUTPUT): unsupported format %4.4s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s V4L2 S_FMT (OUTPUT): queue busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DELTA_FLAG_STREAMINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @delta_s_fmt_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_s_fmt_stream(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.delta_ctx*, align 8
  %9 = alloca %struct.delta_dev*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca %struct.v4l2_pix_format*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.delta_ctx* @to_ctx(i32 %15)
  store %struct.delta_ctx* %16, %struct.delta_ctx** %8, align 8
  %17 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %17, i32 0, i32 5
  %19 = load %struct.delta_dev*, %struct.delta_dev** %18, align 8
  store %struct.delta_dev* %19, %struct.delta_dev** %9, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.v4l2_pix_format* %22, %struct.v4l2_pix_format** %11, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %26 = call i32 @delta_try_fmt_stream(%struct.file* %23, i8* %24, %struct.v4l2_format* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %3
  %30 = load %struct.delta_dev*, %struct.delta_dev** %9, align 8
  %31 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %36, i32 0, i32 4
  %38 = bitcast i64* %37 to i8*
  %39 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %4, align 4
  br label %116

41:                                               ; preds = %3
  %42 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %45, i32 %48)
  store %struct.vb2_queue* %49, %struct.vb2_queue** %10, align 8
  %50 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %51 = call i64 @vb2_is_streaming(%struct.vb2_queue* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load %struct.delta_dev*, %struct.delta_dev** %9, align 8
  %55 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %116

63:                                               ; preds = %41
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 6
  store i32 %71, i32* %74, align 4
  %75 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %79 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  store i32 %77, i32* %80, align 8
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  store i64 %83, i64* %86, align 8
  %87 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 4
  %93 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %103 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %106 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %109 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* @DELTA_FLAG_STREAMINFO, align 4
  %112 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %113 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %63, %53, %29
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.delta_ctx* @to_ctx(i32) #1

declare dso_local i32 @delta_try_fmt_stream(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_streaming(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
