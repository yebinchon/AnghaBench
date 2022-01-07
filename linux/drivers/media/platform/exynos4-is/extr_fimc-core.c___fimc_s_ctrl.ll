; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c___fimc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c___fimc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.fimc_dev* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fimc_dev = type { i32, %struct.fimc_variant* }
%struct.fimc_variant = type { i32 }
%struct.v4l2_ctrl = type { i32, i32, i32 }

@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FIMC_PARAMS = common dso_local global i32 0, align 4
@ST_CAPT_APPLY_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_ctx*, %struct.v4l2_ctrl*)* @__fimc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fimc_s_ctrl(%struct.fimc_ctx* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_ctx*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca %struct.fimc_dev*, align 8
  %7 = alloca %struct.fimc_variant*, align 8
  %8 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %9 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %9, i32 0, i32 6
  %11 = load %struct.fimc_dev*, %struct.fimc_dev** %10, align 8
  store %struct.fimc_dev* %11, %struct.fimc_dev** %6, align 8
  %12 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %13 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %12, i32 0, i32 1
  %14 = load %struct.fimc_variant*, %struct.fimc_variant** %13, align 8
  store %struct.fimc_variant* %14, %struct.fimc_variant** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

22:                                               ; preds = %2
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %112 [
    i32 130, label %26
    i32 128, label %32
    i32 129, label %38
    i32 132, label %94
    i32 131, label %101
  ]

26:                                               ; preds = %22
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %112

32:                                               ; preds = %22
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %112

38:                                               ; preds = %22
  %39 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %40 = call i32 @fimc_capture_pending(%struct.fimc_dev* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %44 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fimc_check_scaler_ratio(%struct.fimc_ctx* %43, i32 %47, i32 %51, i32 %55, i32 %59, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %42
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %122

69:                                               ; preds = %42
  br label %70

70:                                               ; preds = %69, %38
  %71 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 90
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 270
  br i1 %79, label %80, label %88

80:                                               ; preds = %75, %70
  %81 = load %struct.fimc_variant*, %struct.fimc_variant** %7, align 8
  %82 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %122

88:                                               ; preds = %80, %75
  %89 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %93 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %112

94:                                               ; preds = %22
  %95 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  br label %112

101:                                              ; preds = %22
  %102 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %103 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @fimc_set_color_effect(%struct.fimc_ctx* %102, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %122

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %22, %111, %94, %88, %32, %26
  %113 = load i32, i32* @FIMC_PARAMS, align 4
  %114 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %115 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @ST_CAPT_APPLY_CFG, align 4
  %119 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %120 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %119, i32 0, i32 0
  %121 = call i32 @set_bit(i32 %118, i32* %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %112, %109, %85, %66, %21
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @fimc_capture_pending(%struct.fimc_dev*) #1

declare dso_local i32 @fimc_check_scaler_ratio(%struct.fimc_ctx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fimc_set_color_effect(%struct.fimc_ctx*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
