; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_find_dv_timings_cea861_vic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_find_dv_timings_cea861_vic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i32, i32, i64 }

@v4l2_dv_timings_presets = common dso_local global %struct.v4l2_dv_timings* null, align 8
@V4L2_DV_FL_HAS_CEA861_VIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_find_dv_timings_cea861_vic(%struct.v4l2_dv_timings* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_dv_timings*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_bt_timings*, align 8
  store %struct.v4l2_dv_timings* %0, %struct.v4l2_dv_timings** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %45, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %10, i64 %12
  %14 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %9, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %8
  %19 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %19, i64 %21
  %23 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %22, i32 0, i32 0
  store %struct.v4l2_bt_timings* %23, %struct.v4l2_bt_timings** %7, align 8
  %24 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @V4L2_DV_FL_HAS_CEA861_VIC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %18
  %31 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %4, align 8
  %38 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** @v4l2_dv_timings_presets, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %38, i64 %40
  %42 = bitcast %struct.v4l2_dv_timings* %37 to i8*
  %43 = bitcast %struct.v4l2_dv_timings* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  store i32 1, i32* %3, align 4
  br label %49

44:                                               ; preds = %30, %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %8

48:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
