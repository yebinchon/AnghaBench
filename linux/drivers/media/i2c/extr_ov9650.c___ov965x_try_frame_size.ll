; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c___ov965x_try_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c___ov965x_try_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x_framesize = type { i64, i64 }
%struct.v4l2_mbus_framefmt = type { i64, i64 }

@ov965x_framesizes = common dso_local global %struct.ov965x_framesize* null, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_mbus_framefmt*, %struct.ov965x_framesize**)* @__ov965x_try_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ov965x_try_frame_size(%struct.v4l2_mbus_framefmt* %0, %struct.ov965x_framesize** %1) #0 {
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca %struct.ov965x_framesize**, align 8
  %5 = alloca %struct.ov965x_framesize*, align 8
  %6 = alloca %struct.ov965x_framesize*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %3, align 8
  store %struct.ov965x_framesize** %1, %struct.ov965x_framesize*** %4, align 8
  %10 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** @ov965x_framesizes, align 8
  %11 = getelementptr inbounds %struct.ov965x_framesize, %struct.ov965x_framesize* %10, i64 0
  store %struct.ov965x_framesize* %11, %struct.ov965x_framesize** %5, align 8
  store %struct.ov965x_framesize* null, %struct.ov965x_framesize** %6, align 8
  %12 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** @ov965x_framesizes, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.ov965x_framesize* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @UINT_MAX, align 4
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %43, %2
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** %5, align 8
  %21 = getelementptr inbounds %struct.ov965x_framesize, %struct.ov965x_framesize* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = call i32 @abs(i64 %26)
  %28 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** %5, align 8
  %29 = getelementptr inbounds %struct.ov965x_framesize, %struct.ov965x_framesize* %28, i32 0, i32 0
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
  br i1 %39, label %40, label %43

40:                                               ; preds = %19
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** %5, align 8
  store %struct.ov965x_framesize* %42, %struct.ov965x_framesize** %6, align 8
  br label %43

43:                                               ; preds = %40, %19
  %44 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** %5, align 8
  %45 = getelementptr inbounds %struct.ov965x_framesize, %struct.ov965x_framesize* %44, i32 1
  store %struct.ov965x_framesize* %45, %struct.ov965x_framesize** %5, align 8
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** %6, align 8
  %48 = icmp ne %struct.ov965x_framesize* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** @ov965x_framesizes, align 8
  %51 = getelementptr inbounds %struct.ov965x_framesize, %struct.ov965x_framesize* %50, i64 0
  store %struct.ov965x_framesize* %51, %struct.ov965x_framesize** %6, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** %6, align 8
  %54 = getelementptr inbounds %struct.ov965x_framesize, %struct.ov965x_framesize* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** %6, align 8
  %59 = getelementptr inbounds %struct.ov965x_framesize, %struct.ov965x_framesize* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ov965x_framesize**, %struct.ov965x_framesize*** %4, align 8
  %64 = icmp ne %struct.ov965x_framesize** %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load %struct.ov965x_framesize*, %struct.ov965x_framesize** %6, align 8
  %67 = load %struct.ov965x_framesize**, %struct.ov965x_framesize*** %4, align 8
  store %struct.ov965x_framesize* %66, %struct.ov965x_framesize** %67, align 8
  br label %68

68:                                               ; preds = %65, %52
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.ov965x_framesize*) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
