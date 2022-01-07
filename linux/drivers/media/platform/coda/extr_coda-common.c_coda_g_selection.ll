; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, %struct.v4l2_rect, i32 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }
%struct.coda_ctx = type { i32 }
%struct.coda_q_data = type { %struct.v4l2_rect, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @coda_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.coda_ctx*, align 8
  %9 = alloca %struct.coda_q_data*, align 8
  %10 = alloca %struct.v4l2_rect, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.coda_ctx* @fh_to_ctx(i8* %12)
  store %struct.coda_ctx* %13, %struct.coda_ctx** %8, align 8
  %14 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %15 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %14, i32 %17)
  store %struct.coda_q_data* %18, %struct.coda_q_data** %9, align 8
  %19 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %20 = icmp ne %struct.coda_q_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %71

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %28 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %32 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %36 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %35, i32 0, i32 0
  store %struct.v4l2_rect* %36, %struct.v4l2_rect** %11, align 8
  %37 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %62 [
    i32 128, label %40
    i32 129, label %40
    i32 130, label %41
    i32 133, label %51
    i32 131, label %51
    i32 134, label %52
    i32 132, label %52
  ]

40:                                               ; preds = %24, %24
  store %struct.v4l2_rect* %10, %struct.v4l2_rect** %11, align 8
  br label %41

41:                                               ; preds = %24, %40
  %42 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %71

50:                                               ; preds = %41
  br label %65

51:                                               ; preds = %24, %24
  store %struct.v4l2_rect* %10, %struct.v4l2_rect** %11, align 8
  br label %52

52:                                               ; preds = %24, %24, %51
  %53 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %71

61:                                               ; preds = %52
  br label %65

62:                                               ; preds = %24
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %71

65:                                               ; preds = %61, %50
  %66 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %66, i32 0, i32 1
  %68 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %69 = bitcast %struct.v4l2_rect* %67 to i8*
  %70 = bitcast %struct.v4l2_rect* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %65, %62, %58, %47, %21
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
