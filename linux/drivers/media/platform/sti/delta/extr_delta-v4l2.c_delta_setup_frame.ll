; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_setup_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_setup_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i64, %struct.delta_frame**, i32, %struct.delta_dec*, %struct.delta_dev* }
%struct.delta_dec = type { i32 }
%struct.delta_dev = type { i32 }
%struct.delta_frame = type { i64, i32 }

@DELTA_MAX_FRAMES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"%s frame index=%d exceeds output frame count (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"%s number of frames exceeds output frame count (%d > %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"%s frame index discontinuity detected, expected %d, got %d\0A\00", align 1
@DELTA_FRAME_FREE = common dso_local global i32 0, align 4
@setup_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delta_ctx*, %struct.delta_frame*)* @delta_setup_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_setup_frame(%struct.delta_ctx* %0, %struct.delta_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca %struct.delta_frame*, align 8
  %6 = alloca %struct.delta_dev*, align 8
  %7 = alloca %struct.delta_dec*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %4, align 8
  store %struct.delta_frame* %1, %struct.delta_frame** %5, align 8
  %8 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %8, i32 0, i32 4
  %10 = load %struct.delta_dev*, %struct.delta_dev** %9, align 8
  store %struct.delta_dev* %10, %struct.delta_dev** %6, align 8
  %11 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %11, i32 0, i32 3
  %13 = load %struct.delta_dec*, %struct.delta_dec** %12, align 8
  store %struct.delta_dec* %13, %struct.delta_dec** %7, align 8
  %14 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %15 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DELTA_MAX_FRAMES, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %21 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %27 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DELTA_MAX_FRAMES, align 8
  %30 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %28, i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %96

33:                                               ; preds = %2
  %34 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DELTA_MAX_FRAMES, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %41 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DELTA_MAX_FRAMES, align 8
  %50 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %45, i64 %48, i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %96

53:                                               ; preds = %33
  %54 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %55 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %63 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %72 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @dev_warn(i32 %64, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %67, i64 %70, i64 %73)
  br label %75

75:                                               ; preds = %61, %53
  %76 = load i32, i32* @DELTA_FRAME_FREE, align 4
  %77 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %78 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %80 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %80, i32 0, i32 1
  %82 = load %struct.delta_frame**, %struct.delta_frame*** %81, align 8
  %83 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.delta_frame*, %struct.delta_frame** %82, i64 %85
  store %struct.delta_frame* %79, %struct.delta_frame** %86, align 8
  %87 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = load %struct.delta_dec*, %struct.delta_dec** %7, align 8
  %92 = load i32, i32* @setup_frame, align 4
  %93 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %94 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %95 = call i32 @call_dec_op(%struct.delta_dec* %91, i32 %92, %struct.delta_ctx* %93, %struct.delta_frame* %94)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %75, %39, %19
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @call_dec_op(%struct.delta_dec*, i32, %struct.delta_ctx*, %struct.delta_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
