; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.jpu_ctx = type { %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.jpu_q_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"src and dst formats do not match.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @jpu_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpu_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jpu_ctx*, align 8
  %9 = alloca %struct.jpu_q_data*, align 8
  %10 = alloca %struct.jpu_q_data*, align 8
  %11 = alloca %struct.jpu_q_data*, align 8
  %12 = alloca %struct.jpu_q_data, align 8
  %13 = alloca %struct.jpu_q_data*, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.jpu_ctx* @fh_to_ctx(i8* %15)
  store %struct.jpu_ctx* %16, %struct.jpu_ctx** %8, align 8
  %17 = load %struct.jpu_ctx*, %struct.jpu_ctx** %8, align 8
  %18 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %19 = call %struct.jpu_q_data* @jpu_get_q_data(%struct.jpu_ctx* %17, i32 %18)
  store %struct.jpu_q_data* %19, %struct.jpu_q_data** %9, align 8
  %20 = load %struct.jpu_ctx*, %struct.jpu_ctx** %8, align 8
  %21 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %22 = call %struct.jpu_q_data* @jpu_get_q_data(%struct.jpu_ctx* %20, i32 %21)
  store %struct.jpu_q_data* %22, %struct.jpu_q_data** %10, align 8
  %23 = load %struct.jpu_ctx*, %struct.jpu_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.jpu_q_data*, %struct.jpu_q_data** %9, align 8
  %29 = bitcast %struct.jpu_q_data* %12 to i8*
  %30 = bitcast %struct.jpu_q_data* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = load %struct.jpu_q_data*, %struct.jpu_q_data** %9, align 8
  store %struct.jpu_q_data* %31, %struct.jpu_q_data** %11, align 8
  %32 = load %struct.jpu_q_data*, %struct.jpu_q_data** %10, align 8
  store %struct.jpu_q_data* %32, %struct.jpu_q_data** %13, align 8
  %33 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  store i32 %33, i32* %14, align 4
  br label %41

34:                                               ; preds = %3
  %35 = load %struct.jpu_q_data*, %struct.jpu_q_data** %10, align 8
  %36 = bitcast %struct.jpu_q_data* %12 to i8*
  %37 = bitcast %struct.jpu_q_data* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = load %struct.jpu_q_data*, %struct.jpu_q_data** %10, align 8
  store %struct.jpu_q_data* %38, %struct.jpu_q_data** %11, align 8
  %39 = load %struct.jpu_q_data*, %struct.jpu_q_data** %9, align 8
  store %struct.jpu_q_data* %39, %struct.jpu_q_data** %13, align 8
  %40 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.jpu_q_data*, %struct.jpu_q_data** %13, align 8
  %43 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %12, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.jpu_q_data*, %struct.jpu_q_data** %13, align 8
  %49 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %12, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.jpu_ctx*, %struct.jpu_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %12, i32 0, i32 0
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @__jpu_try_fmt(%struct.jpu_ctx* %54, i32* null, %struct.TYPE_6__* %55, i32 %56)
  %58 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %12, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.jpu_q_data*, %struct.jpu_q_data** %11, align 8
  %62 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %60, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %41
  %67 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %12, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.jpu_q_data*, %struct.jpu_q_data** %11, align 8
  %71 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %66, %41
  %76 = load %struct.jpu_ctx*, %struct.jpu_ctx** %8, align 8
  %77 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %92

84:                                               ; preds = %66
  %85 = load %struct.file*, %struct.file** %5, align 8
  %86 = load %struct.jpu_ctx*, %struct.jpu_ctx** %8, align 8
  %87 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @v4l2_m2m_streamon(%struct.file* %85, i32 %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %84, %75
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.jpu_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.jpu_q_data* @jpu_get_q_data(%struct.jpu_ctx*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__jpu_try_fmt(%struct.jpu_ctx*, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @v4l2_m2m_streamon(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
