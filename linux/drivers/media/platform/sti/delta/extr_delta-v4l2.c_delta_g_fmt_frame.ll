; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_g_fmt_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_g_fmt_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delta_ctx = type { i32, i32, %struct.delta_streaminfo, %struct.delta_frameinfo, %struct.delta_dev* }
%struct.delta_streaminfo = type { i32, i32, i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delta_dev = type { i32 }

@DELTA_FLAG_FRAMEINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"%s V4L2 GET_FMT (CAPTURE): no frame information available, default to %s\0A\00", align 1
@DELTA_FLAG_STREAMINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @delta_g_fmt_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_g_fmt_frame(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.delta_ctx*, align 8
  %8 = alloca %struct.delta_dev*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.delta_frameinfo*, align 8
  %11 = alloca %struct.delta_streaminfo*, align 8
  %12 = alloca [100 x i8], align 16
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.delta_ctx* @to_ctx(i32 %15)
  store %struct.delta_ctx* %16, %struct.delta_ctx** %7, align 8
  %17 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %17, i32 0, i32 4
  %19 = load %struct.delta_dev*, %struct.delta_dev** %18, align 8
  store %struct.delta_dev* %19, %struct.delta_dev** %8, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.v4l2_pix_format* %22, %struct.v4l2_pix_format** %9, align 8
  %23 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %23, i32 0, i32 3
  store %struct.delta_frameinfo* %24, %struct.delta_frameinfo** %10, align 8
  %25 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %25, i32 0, i32 2
  store %struct.delta_streaminfo* %26, %struct.delta_streaminfo** %11, align 8
  %27 = bitcast [100 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 100, i1 false)
  %28 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DELTA_FLAG_FRAMEINFO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %3
  %35 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %36 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %43 = call i32 @delta_frameinfo_str(%struct.delta_frameinfo* %41, i8* %42, i32 100)
  %44 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %34, %3
  %46 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %47 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 4
  %51 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %52 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 4
  %56 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %57 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %62 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %67 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %70 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @frame_stride(i32 %68, i32 %71)
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %76 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DELTA_FLAG_STREAMINFO, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %45
  %87 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %11, align 8
  %88 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %91 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %11, align 8
  %93 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %96 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %11, align 8
  %98 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %101 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %11, align 8
  %103 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %106 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %86, %45
  %108 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %109 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %112 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %114 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %117 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %119 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %122 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %10, align 8
  %124 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %127 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  ret i32 0
}

declare dso_local %struct.delta_ctx* @to_ctx(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @delta_frameinfo_str(%struct.delta_frameinfo*, i8*, i32) #1

declare dso_local i32 @frame_stride(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
