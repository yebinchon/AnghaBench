; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_ctrls_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_ctrls_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_ctx = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }

@MTK_MDP_MAX_CTRL_NUM = common dso_local global i32 0, align 4
@mtk_mdp_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_ROTATE = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_ALPHA_COMPONENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to create control handlers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_mdp_ctx*)* @mtk_mdp_ctrls_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_ctrls_create(%struct.mtk_mdp_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_mdp_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_ctx** %3, align 8
  %5 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %5, i32 0, i32 2
  %7 = load i32, i32* @MTK_MDP_MAX_CTRL_NUM, align 4
  %8 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__* %6, i32 %7)
  %9 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %9, i32 0, i32 2
  %11 = load i32, i32* @V4L2_CID_ROTATE, align 4
  %12 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %10, i32* @mtk_mdp_ctrl_ops, i32 %11, i32 0, i32 270, i32 90, i32 0)
  %13 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i8* %12, i8** %15, align 8
  %16 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %16, i32 0, i32 2
  %18 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %19 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %17, i32* @mtk_mdp_ctrl_ops, i32 %18, i32 0, i32 1, i32 1, i32 0)
  %20 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  %23 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %23, i32 0, i32 2
  %25 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %26 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %24, i32* @mtk_mdp_ctrl_ops, i32 %25, i32 0, i32 1, i32 1, i32 0)
  %27 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %30, i32 0, i32 2
  %32 = load i32, i32* @V4L2_CID_ALPHA_COMPONENT, align 4
  %33 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %31, i32* @mtk_mdp_ctrl_ops, i32 %32, i32 0, i32 255, i32 1, i32 0)
  %34 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %1
  %51 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %4, align 4
  %55 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %55, i32 0, i32 2
  %57 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__* %56)
  %58 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
