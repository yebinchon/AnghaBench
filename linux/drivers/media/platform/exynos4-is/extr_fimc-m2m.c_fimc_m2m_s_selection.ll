; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.fimc_ctx = type { i32, %struct.fimc_frame, %struct.fimc_frame, %struct.fimc_dev* }
%struct.fimc_frame = type { i32, i32, i32, i32 }
%struct.fimc_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Out of scaler range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FIMC_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @fimc_m2m_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_m2m_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.fimc_ctx*, align 8
  %9 = alloca %struct.fimc_dev*, align 8
  %10 = alloca %struct.fimc_frame*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.fimc_ctx* @fh_to_ctx(i8* %12)
  store %struct.fimc_ctx* %13, %struct.fimc_ctx** %8, align 8
  %14 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %14, i32 0, i32 3
  %16 = load %struct.fimc_dev*, %struct.fimc_dev** %15, align 8
  store %struct.fimc_dev* %16, %struct.fimc_dev** %9, align 8
  %17 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %18 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %19 = call i32 @fimc_m2m_try_selection(%struct.fimc_ctx* %17, %struct.v4l2_selection* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %125

24:                                               ; preds = %3
  %25 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %31, i32 0, i32 1
  br label %36

33:                                               ; preds = %24
  %34 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %34, i32 0, i32 2
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi %struct.fimc_frame* [ %32, %30 ], [ %35, %33 ]
  store %struct.fimc_frame* %37, %struct.fimc_frame** %10, align 8
  %38 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %36
  %44 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %45 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @fimc_check_scaler_ratio(%struct.fimc_ctx* %44, i32 %48, i32 %52, i32 %56, i32 %60, i32 %63)
  store i32 %64, i32* %11, align 4
  br label %87

65:                                               ; preds = %36
  %66 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %67 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @fimc_check_scaler_ratio(%struct.fimc_ctx* %66, i32 %70, i32 %74, i32 %78, i32 %82, i32 %85)
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %65, %43
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.fimc_dev*, %struct.fimc_dev** %9, align 8
  %92 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = call i32 @v4l2_err(i32* %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %125

97:                                               ; preds = %87
  %98 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %103 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %109 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %115 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.fimc_frame*, %struct.fimc_frame** %10, align 8
  %121 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @FIMC_PARAMS, align 4
  %123 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %124 = call i32 @fimc_ctx_state_set(i32 %122, %struct.fimc_ctx* %123)
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %97, %90, %22
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.fimc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @fimc_m2m_try_selection(%struct.fimc_ctx*, %struct.v4l2_selection*) #1

declare dso_local i32 @fimc_check_scaler_ratio(%struct.fimc_ctx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @fimc_ctx_state_set(i32, %struct.fimc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
