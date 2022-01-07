; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i64, i64 }
%struct.delta_ctx = type { i32, %struct.delta_frameinfo }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DELTA_FLAG_FRAMEINFO = common dso_local global i32 0, align 4
@DELTA_FRAMEINFO_FLAG_CROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @delta_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.delta_ctx*, align 8
  %9 = alloca %struct.delta_frameinfo*, align 8
  %10 = alloca %struct.v4l2_rect, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.delta_ctx* @to_ctx(i8* %11)
  store %struct.delta_ctx* %12, %struct.delta_ctx** %8, align 8
  %13 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %13, i32 0, i32 1
  store %struct.delta_frameinfo* %14, %struct.delta_frameinfo** %9, align 8
  %15 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %85

23:                                               ; preds = %3
  %24 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DELTA_FLAG_FRAMEINFO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %9, align 8
  %32 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DELTA_FRAMEINFO_FLAG_CROP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %9, align 8
  %39 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %38, i32 0, i32 5
  %40 = bitcast %struct.v4l2_rect* %10 to i8*
  %41 = bitcast %struct.v4l2_rect* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  br label %53

42:                                               ; preds = %30, %23
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %9, align 8
  %46 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %9, align 8
  %50 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  br label %53

53:                                               ; preds = %42, %37
  %54 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %81 [
    i32 131, label %57
    i32 129, label %57
    i32 128, label %62
    i32 130, label %62
  ]

57:                                               ; preds = %53, %53
  %58 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %58, i32 0, i32 2
  %60 = bitcast %struct.v4l2_rect* %59 to i8*
  %61 = bitcast %struct.v4l2_rect* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 24, i1 false)
  br label %84

62:                                               ; preds = %53, %53
  %63 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %9, align 8
  %70 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %9, align 8
  %76 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  br label %84

81:                                               ; preds = %53
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %62, %57
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %81, %20
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.delta_ctx* @to_ctx(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
