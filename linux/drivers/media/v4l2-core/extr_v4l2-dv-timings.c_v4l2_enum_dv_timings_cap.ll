; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_enum_dv_timings_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_enum_dv_timings_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.v4l2_enum_dv_timings = type { i64, %struct.TYPE_5__, i32 }
%struct.v4l2_dv_timings_cap = type { i32 }

@v4l2_dv_timings_presets = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_enum_dv_timings_cap(%struct.v4l2_enum_dv_timings* %0, %struct.v4l2_dv_timings_cap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_enum_dv_timings*, align 8
  %7 = alloca %struct.v4l2_dv_timings_cap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.v4l2_enum_dv_timings* %0, %struct.v4l2_enum_dv_timings** %6, align 8
  store %struct.v4l2_dv_timings_cap* %1, %struct.v4l2_dv_timings_cap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %49, %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_dv_timings_presets, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %16
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_dv_timings_presets, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @v4l2_valid_dv_timings(%struct.TYPE_5__* %27, %struct.v4l2_dv_timings_cap* %28, i32 %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %11, align 8
  %36 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @v4l2_dv_timings_presets, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = bitcast %struct.TYPE_5__* %42 to i8*
  %47 = bitcast %struct.TYPE_5__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  br label %55

48:                                               ; preds = %33, %24
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %16

52:                                               ; preds = %16
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %40
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @v4l2_valid_dv_timings(%struct.TYPE_5__*, %struct.v4l2_dv_timings_cap*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
