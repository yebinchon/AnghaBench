; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_find_dv_timings_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_find_dv_timings_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.v4l2_dv_timings_cap = type { i32 }

@v4l2_dv_timings_presets = common dso_local global %struct.v4l2_dv_timings* null, align 8
@V4L2_DV_FL_REDUCED_FPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_find_dv_timings_cap(%struct.v4l2_dv_timings* %0, %struct.v4l2_dv_timings_cap* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.v4l2_dv_timings_cap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_dv_timings* %0, %struct.v4l2_dv_timings** %7, align 8
  store %struct.v4l2_dv_timings_cap* %1, %struct.v4l2_dv_timings_cap** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %15 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i8*, i8** %11, align 8
  %18 = call i64 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings* %14, %struct.v4l2_dv_timings_cap* %15, i32 %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %82

21:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %78, %21
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %24, i64 %26
  %28 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %23, %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %22
  %33 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %33, i64 %35
  %37 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings* %36, %struct.v4l2_dv_timings_cap* %37, i32 %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %32
  %43 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %44 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %44, i64 %46
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %43, %struct.v4l2_dv_timings* %47, i32 %48, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %42
  %52 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @V4L2_DV_FL_REDUCED_FPS, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %59 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %59, i64 %61
  %63 = bitcast %struct.v4l2_dv_timings* %58 to i8*
  %64 = bitcast %struct.v4l2_dv_timings* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 8, i1 false)
  %65 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %65, i32 0, i32 0
  %67 = call i64 @can_reduce_fps(%struct.TYPE_2__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %51
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %51
  store i32 1, i32* %6, align 4
  br label %82

77:                                               ; preds = %42, %32
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %22

81:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %76, %20
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i64 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings*, %struct.v4l2_dv_timings_cap*, i32, i8*) #1

declare dso_local i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings*, %struct.v4l2_dv_timings*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @can_reduce_fps(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
