; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_find_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_find_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9m111_mode_info = type { i32 }
%struct.mt9m111 = type { i32*, %struct.TYPE_2__, %struct.v4l2_rect }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_rect = type { i32, i32 }

@MT9M111_MODE_SXGA_15FPS = common dso_local global i32 0, align 4
@MT9M111_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9M111_MAX_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Framerate selection is not supported for cropped images\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Framerates > 15fps are supported only for images not exceeding 640x512\0A\00", align 1
@MT9M111_NUM_MODES = common dso_local global i32 0, align 4
@mt9m111_mode_data = common dso_local global %struct.mt9m111_mode_info* null, align 8
@MT9M111_MODE_QSXGA_30FPS = common dso_local global i32 0, align 4
@context_a = common dso_local global i32 0, align 4
@context_b = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mt9m111_mode_info* (%struct.mt9m111*, i32, i32, i32)* @mt9m111_find_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mt9m111_mode_info* @mt9m111_find_mode(%struct.mt9m111* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mt9m111_mode_info*, align 8
  %6 = alloca %struct.mt9m111*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt9m111_mode_info*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mt9m111* %0, %struct.mt9m111** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %19 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %18, i32 0, i32 2
  store %struct.v4l2_rect* %19, %struct.v4l2_rect** %11, align 8
  store i32 -1, i32* %13, align 4
  %20 = load i32, i32* @MT9M111_MODE_SXGA_15FPS, align 4
  store i32 %20, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %22 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MT9M111_MAX_WIDTH, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %28 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MT9M111_MAX_HEIGHT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26, %4
  %33 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %34 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_info(i32 %36, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store %struct.mt9m111_mode_info* null, %struct.mt9m111_mode_info** %5, align 8
  br label %100

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MT9M111_MAX_WIDTH, align 4
  %41 = sdiv i32 %40, 2
  %42 = icmp ugt i32 %39, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MT9M111_MAX_HEIGHT, align 4
  %46 = sdiv i32 %45, 2
  %47 = icmp ugt i32 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43, %38
  %49 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %50 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %54

54:                                               ; preds = %48, %43
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %84, %54
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @MT9M111_NUM_MODES, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %55
  %60 = load %struct.mt9m111_mode_info*, %struct.mt9m111_mode_info** @mt9m111_mode_data, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mt9m111_mode_info, %struct.mt9m111_mode_info* %60, i64 %62
  %64 = getelementptr inbounds %struct.mt9m111_mode_info, %struct.mt9m111_mode_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp eq i32 %66, 30
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %84

72:                                               ; preds = %68, %59
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub i32 %73, %74
  %76 = call i32 @abs(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %80, %72
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %55

87:                                               ; preds = %55
  %88 = load %struct.mt9m111_mode_info*, %struct.mt9m111_mode_info** @mt9m111_mode_data, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mt9m111_mode_info, %struct.mt9m111_mode_info* %88, i64 %90
  store %struct.mt9m111_mode_info* %91, %struct.mt9m111_mode_info** %10, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @MT9M111_MODE_QSXGA_30FPS, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32* @context_a, i32* @context_b
  %97 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %98 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %97, i32 0, i32 0
  store i32* %96, i32** %98, align 8
  %99 = load %struct.mt9m111_mode_info*, %struct.mt9m111_mode_info** %10, align 8
  store %struct.mt9m111_mode_info* %99, %struct.mt9m111_mode_info** %5, align 8
  br label %100

100:                                              ; preds = %87, %32
  %101 = load %struct.mt9m111_mode_info*, %struct.mt9m111_mode_info** %5, align 8
  ret %struct.mt9m111_mode_info* %101
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
