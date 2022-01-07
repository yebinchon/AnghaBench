; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2659.c___ov2659_try_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2659.c___ov2659_try_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2659_framesize = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.v4l2_mbus_framefmt = type { i64, i64 }

@ov2659_framesizes = common dso_local global %struct.ov2659_framesize* null, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_mbus_framefmt*, %struct.ov2659_framesize**)* @__ov2659_try_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ov2659_try_frame_size(%struct.v4l2_mbus_framefmt* %0, %struct.ov2659_framesize** %1) #0 {
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca %struct.ov2659_framesize**, align 8
  %5 = alloca %struct.ov2659_framesize*, align 8
  %6 = alloca %struct.ov2659_framesize*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %3, align 8
  store %struct.ov2659_framesize** %1, %struct.ov2659_framesize*** %4, align 8
  %10 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** @ov2659_framesizes, align 8
  %11 = getelementptr inbounds %struct.ov2659_framesize, %struct.ov2659_framesize* %10, i64 0
  store %struct.ov2659_framesize* %11, %struct.ov2659_framesize** %5, align 8
  store %struct.ov2659_framesize* null, %struct.ov2659_framesize** %6, align 8
  %12 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** @ov2659_framesizes, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.ov2659_framesize* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @UINT_MAX, align 4
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %51, %2
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** %5, align 8
  %21 = getelementptr inbounds %struct.ov2659_framesize, %struct.ov2659_framesize* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = call i32 @abs(i64 %26)
  %28 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** %5, align 8
  %29 = getelementptr inbounds %struct.ov2659_framesize, %struct.ov2659_framesize* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = call i32 @abs(i64 %34)
  %36 = add nsw i32 %27, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %19
  %41 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** %5, align 8
  %42 = getelementptr inbounds %struct.ov2659_framesize, %struct.ov2659_framesize* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** %5, align 8
  store %struct.ov2659_framesize* %50, %struct.ov2659_framesize** %6, align 8
  br label %51

51:                                               ; preds = %48, %40, %19
  %52 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** %5, align 8
  %53 = getelementptr inbounds %struct.ov2659_framesize, %struct.ov2659_framesize* %52, i32 1
  store %struct.ov2659_framesize* %53, %struct.ov2659_framesize** %5, align 8
  br label %15

54:                                               ; preds = %15
  %55 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** %6, align 8
  %56 = icmp ne %struct.ov2659_framesize* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** @ov2659_framesizes, align 8
  %59 = getelementptr inbounds %struct.ov2659_framesize, %struct.ov2659_framesize* %58, i64 2
  store %struct.ov2659_framesize* %59, %struct.ov2659_framesize** %6, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** %6, align 8
  %62 = getelementptr inbounds %struct.ov2659_framesize, %struct.ov2659_framesize* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** %6, align 8
  %67 = getelementptr inbounds %struct.ov2659_framesize, %struct.ov2659_framesize* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.ov2659_framesize**, %struct.ov2659_framesize*** %4, align 8
  %72 = icmp ne %struct.ov2659_framesize** %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load %struct.ov2659_framesize*, %struct.ov2659_framesize** %6, align 8
  %75 = load %struct.ov2659_framesize**, %struct.ov2659_framesize*** %4, align 8
  store %struct.ov2659_framesize* %74, %struct.ov2659_framesize** %75, align 8
  br label %76

76:                                               ; preds = %73, %60
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.ov2659_framesize*) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
