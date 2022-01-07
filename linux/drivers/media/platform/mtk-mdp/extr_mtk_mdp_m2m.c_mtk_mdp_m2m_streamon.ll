; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.mtk_mdp_ctx = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MTK_MDP_SRC_FMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MTK_MDP_DST_FMT = common dso_local global i32 0, align 4
@MTK_MDP_VPU_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vpu init failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @mtk_mdp_m2m_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_m2m_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_mdp_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.mtk_mdp_ctx* @fh_to_ctx(i8* %10)
  store %struct.mtk_mdp_ctx* %11, %struct.mtk_mdp_ctx** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %8, align 8
  %17 = load i32, i32* @MTK_MDP_SRC_FMT, align 4
  %18 = call i32 @mtk_mdp_ctx_state_is_set(%struct.mtk_mdp_ctx* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %66

23:                                               ; preds = %15
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %8, align 8
  %26 = load i32, i32* @MTK_MDP_DST_FMT, align 4
  %27 = call i32 @mtk_mdp_ctx_state_is_set(%struct.mtk_mdp_ctx* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %66

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %23
  %34 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %8, align 8
  %35 = load i32, i32* @MTK_MDP_VPU_INIT, align 4
  %36 = call i32 @mtk_mdp_ctx_state_is_set(%struct.mtk_mdp_ctx* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %33
  %39 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %39, i32 0, i32 2
  %41 = call i32 @mtk_mdp_vpu_init(i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %66

55:                                               ; preds = %38
  %56 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %8, align 8
  %57 = load i32, i32* @MTK_MDP_VPU_INIT, align 4
  %58 = call i32 @mtk_mdp_ctx_state_lock_set(%struct.mtk_mdp_ctx* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %33
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @v4l2_m2m_streamon(%struct.file* %60, i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %44, %29, %20
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.mtk_mdp_ctx* @fh_to_ctx(i8*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @mtk_mdp_ctx_state_is_set(%struct.mtk_mdp_ctx*, i32) #1

declare dso_local i32 @mtk_mdp_vpu_init(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mtk_mdp_ctx_state_lock_set(%struct.mtk_mdp_ctx*, i32) #1

declare dso_local i32 @v4l2_m2m_streamon(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
