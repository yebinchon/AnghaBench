; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_ctrls_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_ctrls_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { i32, i32, i32, %struct.TYPE_10__, %struct.fimc_ctrls, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.fimc_ctrls = type { %struct.TYPE_11__, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@FMT_HAS_ALPHA = common dso_local global i32 0, align 4
@FIMC_REG_CIIMGEFF_FIN_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_ctrls_activate(%struct.fimc_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.fimc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_ctrls*, align 8
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FMT_HAS_ALPHA, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %15, i32 0, i32 4
  store %struct.fimc_ctrls* %16, %struct.fimc_ctrls** %6, align 8
  %17 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %18 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %115

22:                                               ; preds = %2
  %23 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %24 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mutex_lock(i32 %26)
  %28 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %29 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %28, i32 0, i32 3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @v4l2_ctrl_activate(%struct.TYPE_12__* %30, i32 %31)
  %33 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %34 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %33, i32 0, i32 2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @v4l2_ctrl_activate(%struct.TYPE_12__* %35, i32 %36)
  %38 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %39 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @v4l2_ctrl_activate(%struct.TYPE_12__* %40, i32 %41)
  %43 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %44 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %43, i32 0, i32 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @v4l2_ctrl_activate(%struct.TYPE_12__* %45, i32 %46)
  %48 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %49 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %48, i32 0, i32 5
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = icmp ne %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %22
  %53 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %54 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %53, i32 0, i32 5
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi i1 [ false, %52 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @v4l2_ctrl_activate(%struct.TYPE_12__* %55, i32 %63)
  br label %65

65:                                               ; preds = %61, %22
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %65
  %69 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %70 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %71 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %70, i32 0, i32 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @fimc_set_color_effect(%struct.fimc_ctx* %69, i32 %75)
  %77 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %78 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %77, i32 0, i32 3
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %85 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %84, i32 0, i32 2
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %92 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %109

98:                                               ; preds = %65
  %99 = load i32, i32* @FIMC_REG_CIIMGEFF_FIN_BYPASS, align 4
  %100 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %101 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %103, i32 0, i32 2
  store i32 0, i32* %104, align 8
  %105 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %98, %68
  %110 = load %struct.fimc_ctrls*, %struct.fimc_ctrls** %6, align 8
  %111 = getelementptr inbounds %struct.fimc_ctrls, %struct.fimc_ctrls* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @mutex_unlock(i32 %113)
  br label %115

115:                                              ; preds = %109, %21
  ret void
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @v4l2_ctrl_activate(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @fimc_set_color_effect(%struct.fimc_ctx*, i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
