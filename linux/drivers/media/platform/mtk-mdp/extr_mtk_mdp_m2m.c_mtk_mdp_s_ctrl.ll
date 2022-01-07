; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32 }
%struct.mtk_mdp_ctx = type { %struct.TYPE_12__, i32, %struct.TYPE_11__, %struct.TYPE_8__, i32, i32, %struct.mtk_mdp_dev* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mtk_mdp_dev = type { %struct.mtk_mdp_variant* }
%struct.mtk_mdp_variant = type { i32 }

@MTK_MDP_DST_FMT = common dso_local global i32 0, align 4
@MTK_MDP_SRC_FMT = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @mtk_mdp_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.mtk_mdp_ctx*, align 8
  %5 = alloca %struct.mtk_mdp_dev*, align 8
  %6 = alloca %struct.mtk_mdp_variant*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %10 = call %struct.mtk_mdp_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl* %9)
  store %struct.mtk_mdp_ctx* %10, %struct.mtk_mdp_ctx** %4, align 8
  %11 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %11, i32 0, i32 6
  %13 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %12, align 8
  store %struct.mtk_mdp_dev* %13, %struct.mtk_mdp_dev** %5, align 8
  %14 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %5, align 8
  %15 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %14, i32 0, i32 0
  %16 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %15, align 8
  store %struct.mtk_mdp_variant* %16, %struct.mtk_mdp_variant** %6, align 8
  %17 = load i32, i32* @MTK_MDP_DST_FMT, align 4
  %18 = load i32, i32* @MTK_MDP_SRC_FMT, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %97

27:                                               ; preds = %1
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %96 [
    i32 130, label %31
    i32 128, label %37
    i32 129, label %43
    i32 131, label %89
  ]

31:                                               ; preds = %27
  %32 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  br label %96

37:                                               ; preds = %27
  %38 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %39 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  br label %96

43:                                               ; preds = %27
  %44 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mtk_mdp_ctx_state_is_set(%struct.mtk_mdp_ctx* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %43
  %49 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %6, align 8
  %50 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mtk_mdp_check_scaler_ratio(%struct.mtk_mdp_variant* %49, i32 %54, i32 %59, i32 %64, i32 %69, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %48
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %97

82:                                               ; preds = %48
  br label %83

83:                                               ; preds = %82, %43
  %84 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %85 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %96

89:                                               ; preds = %27
  %90 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %91 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %96

96:                                               ; preds = %27, %89, %83, %37, %31
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %79, %26
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.mtk_mdp_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl*) #1

declare dso_local i32 @mtk_mdp_ctx_state_is_set(%struct.mtk_mdp_ctx*, i32) #1

declare dso_local i32 @mtk_mdp_check_scaler_ratio(%struct.mtk_mdp_variant*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
