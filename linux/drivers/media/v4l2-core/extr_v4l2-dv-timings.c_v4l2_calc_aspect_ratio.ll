; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_calc_aspect_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_calc_aspect_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fract = type { i32, i32, i32, i32 }

@__const.v4l2_calc_aspect_ratio.aspect = private unnamed_addr constant %struct.v4l2_fract { i32 16, i32 9, i32 0, i32 0 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @v4l2_calc_aspect_ratio(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_fract, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = bitcast %struct.v4l2_fract* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.v4l2_fract* @__const.v4l2_calc_aspect_ratio.aspect to i8*), i64 16, i1 false)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %63

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  br label %63

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 79
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  store i32 16, i32* %32, align 4
  %33 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  store i32 9, i32* %33, align 4
  br label %53

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 34
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  store i32 4, i32* %38, align 4
  %39 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  store i32 3, i32* %39, align 4
  br label %52

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 68
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  store i32 15, i32* %44, align 4
  %45 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  store i32 9, i32* %45, align 4
  br label %51

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 99
  %49 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  store i32 100, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %43
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %63

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @swap(i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %57, %56, %20, %13
  %64 = bitcast %struct.v4l2_fract* %3 to { i64, i64 }*
  %65 = load { i64, i64 }, { i64, i64 }* %64, align 4
  ret { i64, i64 } %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @swap(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
