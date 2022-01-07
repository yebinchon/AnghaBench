; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c___gsc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c___gsc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i32, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__, %struct.TYPE_8__, i32, i32, %struct.gsc_dev* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.gsc_dev = type { %struct.gsc_variant* }
%struct.gsc_variant = type { i32 }
%struct.v4l2_ctrl = type { i32, i32, i32 }

@GSC_DST_FMT = common dso_local global i32 0, align 4
@GSC_SRC_FMT = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GSC_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsc_ctx*, %struct.v4l2_ctrl*)* @__gsc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gsc_s_ctrl(%struct.gsc_ctx* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsc_ctx*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca %struct.gsc_dev*, align 8
  %7 = alloca %struct.gsc_variant*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %10 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %10, i32 0, i32 8
  %12 = load %struct.gsc_dev*, %struct.gsc_dev** %11, align 8
  store %struct.gsc_dev* %12, %struct.gsc_dev** %6, align 8
  %13 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  %14 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %13, i32 0, i32 0
  %15 = load %struct.gsc_variant*, %struct.gsc_variant** %14, align 8
  store %struct.gsc_variant* %15, %struct.gsc_variant** %7, align 8
  %16 = load i32, i32* @GSC_DST_FMT, align 4
  %17 = load i32, i32* @GSC_SRC_FMT, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

26:                                               ; preds = %2
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %101 [
    i32 130, label %30
    i32 128, label %36
    i32 129, label %42
    i32 131, label %94
  ]

30:                                               ; preds = %26
  %31 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  br label %101

36:                                               ; preds = %26
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  br label %101

42:                                               ; preds = %26
  %43 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %42
  %51 = load %struct.gsc_variant*, %struct.gsc_variant** %7, align 8
  %52 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @gsc_check_scaler_ratio(%struct.gsc_variant* %51, i32 %56, i32 %61, i32 %66, i32 %71, i32 %77, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %50
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %107

87:                                               ; preds = %50
  br label %88

88:                                               ; preds = %87, %42
  %89 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %93 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %101

94:                                               ; preds = %26
  %95 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %26, %94, %88, %36, %30
  %102 = load i32, i32* @GSC_PARAMS, align 4
  %103 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %104 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %101, %84, %25
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @gsc_check_scaler_ratio(%struct.gsc_variant*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
