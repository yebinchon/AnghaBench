; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_dv_timings_aspect_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_dv_timings_aspect_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fract = type { i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@__const.v4l2_dv_timings_aspect_ratio.ratio = private unnamed_addr constant %struct.v4l2_fract { i32 1, i32 1, i32 0, i32 0 }, align 4
@V4L2_DV_BT_656_1120 = common dso_local global i64 0, align 8
@V4L2_DV_FL_HAS_PICTURE_ASPECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @v4l2_dv_timings_aspect_ratio(%struct.v4l2_dv_timings* %0) #0 {
  %2 = alloca %struct.v4l2_fract, align 4
  %3 = alloca %struct.v4l2_dv_timings*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.v4l2_dv_timings* %0, %struct.v4l2_dv_timings** %3, align 8
  %6 = bitcast %struct.v4l2_fract* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.v4l2_fract* @__const.v4l2_dv_timings_aspect_ratio.ratio to i8*), i64 16, i1 false)
  %7 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @V4L2_DV_BT_656_1120, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %15 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @V4L2_DV_FL_HAS_PICTURE_ASPECT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %60

22:                                               ; preds = %13
  %23 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %24 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %26, %31
  %33 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %2, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %35 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %39 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %37, %42
  %44 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %2, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %2, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %2, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %2, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %2, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rational_best_approximation(i32 %46, i32 %48, i32 %50, i32 %52, i64* %4, i64* %5)
  %54 = load i64, i64* %4, align 8
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %2, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load i64, i64* %5, align 8
  %58 = trunc i64 %57 to i32
  %59 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %2, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %22, %21, %12
  %61 = bitcast %struct.v4l2_fract* %2 to { i64, i64 }*
  %62 = load { i64, i64 }, { i64, i64 }* %61, align 4
  ret { i64, i64 } %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rational_best_approximation(i32, i32, i32, i32, i64*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
