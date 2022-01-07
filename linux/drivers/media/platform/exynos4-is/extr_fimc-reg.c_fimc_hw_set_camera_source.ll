; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_camera_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_camera_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.fimc_dev = type { i64, %struct.fimc_vid_cap }
%struct.fimc_vid_cap = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.fimc_frame }
%struct.fimc_frame = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.fimc_source_info = type { i32 }

@pix_desc = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Camera color format not supported: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FIMC_REG_CISRCFMT_ITU601_8BIT = common dso_local global i32 0, align 4
@FIMC_REG_CISRCFMT_ITU601_16BIT = common dso_local global i32 0, align 4
@FIMC_REG_CISRCFMT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_hw_set_camera_source(%struct.fimc_dev* %0, %struct.fimc_source_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_dev*, align 8
  %5 = alloca %struct.fimc_source_info*, align 8
  %6 = alloca %struct.fimc_vid_cap*, align 8
  %7 = alloca %struct.fimc_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %4, align 8
  store %struct.fimc_source_info* %1, %struct.fimc_source_info** %5, align 8
  %11 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %12 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %11, i32 0, i32 1
  store %struct.fimc_vid_cap* %12, %struct.fimc_vid_cap** %6, align 8
  %13 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %14 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.fimc_frame* %16, %struct.fimc_frame** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.fimc_source_info*, %struct.fimc_source_info** %5, align 8
  %18 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %106 [
    i32 130, label %20
    i32 129, label %20
    i32 128, label %93
    i32 131, label %107
  ]

20:                                               ; preds = %2, %2
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pix_desc, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %28 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pix_desc, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %30, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %26
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pix_desc, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pix_desc, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %55

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %21

55:                                               ; preds = %38, %21
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pix_desc, align 8
  %58 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %57)
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %62 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %65 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @v4l2_err(i32* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %126

71:                                               ; preds = %55
  %72 = load %struct.fimc_source_info*, %struct.fimc_source_info** %5, align 8
  %73 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 130
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 8
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @FIMC_REG_CISRCFMT_ITU601_8BIT, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %91

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 16
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @FIMC_REG_CISRCFMT_ITU601_16BIT, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %86, %83
  br label %91

91:                                               ; preds = %90, %79
  br label %92

92:                                               ; preds = %91, %71
  br label %108

93:                                               ; preds = %2
  %94 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %95 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @fimc_fmt_is_user_defined(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i32, i32* @FIMC_REG_CISRCFMT_ITU601_8BIT, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %93
  br label %108

106:                                              ; preds = %2
  br label %107

107:                                              ; preds = %2, %106
  br label %108

108:                                              ; preds = %107, %105, %92
  %109 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %110 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = shl i32 %111, 16
  %113 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %114 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %112, %115
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %121 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @FIMC_REG_CISRCFMT, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %119, i64 %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %108, %60
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @fimc_fmt_is_user_defined(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
