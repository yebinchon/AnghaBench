; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_calc_timeperframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_calc_timeperframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fract = type { i32, i32, i64, i64 }
%struct.v4l2_dv_timings = type { i64, %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i64, i32 }

@__const.v4l2_calc_timeperframe.fps_fract = private unnamed_addr constant %struct.v4l2_fract { i32 1, i32 1, i64 0, i64 0 }, align 8
@V4L2_DV_BT_656_1120 = common dso_local global i64 0, align 8
@V4L2_DV_FL_CAN_DETECT_REDUCED_FPS = common dso_local global i32 0, align 4
@V4L2_DV_FL_REDUCED_FPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_calc_timeperframe(%struct.v4l2_fract* noalias sret %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca %struct.v4l2_dv_timings*, align 8
  %4 = alloca %struct.v4l2_bt_timings*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %3, align 8
  %11 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %11, i32 0, i32 1
  store %struct.v4l2_bt_timings* %12, %struct.v4l2_bt_timings** %4, align 8
  %13 = bitcast %struct.v4l2_fract* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.v4l2_fract* @__const.v4l2_calc_timeperframe.fps_fract to i8*), i64 24, i1 false)
  %14 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %3, align 8
  %15 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_DV_BT_656_1120, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %22 = call i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %24 = call i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @V4L2_DV_FL_CAN_DETECT_REDUCED_FPS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %20
  %35 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @V4L2_DV_FL_REDUCED_FPS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i64, i64* %10, align 8
  %43 = mul i64 %42, 1000
  %44 = trunc i64 %43 to i32
  %45 = call i8* @div_u64(i32 %44, i32 1001)
  %46 = ptrtoint i8* %45 to i64
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %41, %34, %20
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %48, %49
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i64, i64* %10, align 8
  %54 = mul i64 100, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %56, %57
  %59 = call i8* @div_u64(i32 %55, i32 %58)
  br label %61

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %52
  %62 = phi i8* [ %59, %52 ], [ null, %60 ]
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %75

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @rational_best_approximation(i32 %68, i32 100, i32 %69, i32 100, i64* %5, i64* %6)
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %0, i32 0, i32 2
  store i64 %71, i64* %72, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %0, i32 0, i32 3
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %67, %66, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_WIDTH(%struct.v4l2_bt_timings*) #2

declare dso_local i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings*) #2

declare dso_local i8* @div_u64(i32, i32) #2

declare dso_local i32 @rational_best_approximation(i32, i32, i32, i32, i64*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
