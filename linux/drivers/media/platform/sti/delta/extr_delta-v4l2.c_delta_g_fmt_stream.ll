; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_g_fmt_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_g_fmt_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.delta_ctx = type { i32, i32, i32, %struct.delta_streaminfo, %struct.delta_dev* }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delta_dev = type { i32 }

@DELTA_FLAG_STREAMINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"%s V4L2 GET_FMT (OUTPUT): no stream information available, default to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @delta_g_fmt_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_g_fmt_stream(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.delta_ctx*, align 8
  %8 = alloca %struct.delta_dev*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.delta_streaminfo*, align 8
  %11 = alloca [100 x i8], align 16
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.delta_ctx* @to_ctx(i32 %14)
  store %struct.delta_ctx* %15, %struct.delta_ctx** %7, align 8
  %16 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %16, i32 0, i32 4
  %18 = load %struct.delta_dev*, %struct.delta_dev** %17, align 8
  store %struct.delta_dev* %18, %struct.delta_dev** %8, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.v4l2_pix_format* %21, %struct.v4l2_pix_format** %9, align 8
  %22 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %22, i32 0, i32 3
  store %struct.delta_streaminfo* %23, %struct.delta_streaminfo** %10, align 8
  %24 = bitcast [100 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 100, i1 false)
  %25 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DELTA_FLAG_STREAMINFO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %3
  %32 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %33 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %10, align 8
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %40 = call i32 @delta_streaminfo_str(%struct.delta_streaminfo* %38, i8* %39, i32 100)
  %41 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %31, %3
  %43 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %10, align 8
  %44 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %10, align 8
  %49 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %10, align 8
  %54 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %10, align 8
  %59 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %10, align 8
  %71 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %10, align 8
  %76 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %10, align 8
  %81 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %84 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %10, align 8
  %86 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %89 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  ret i32 0
}

declare dso_local %struct.delta_ctx* @to_ctx(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @delta_streaminfo_str(%struct.delta_streaminfo*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
