; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_ctrls_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_ctrls_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [52 x i8] c"Control handler of this context was created already\00", align 1
@GSC_MAX_CTRL_NUM = common dso_local global i32 0, align 4
@gsc_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_ROTATE = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_ALPHA_COMPONENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to create G-Scaler control handlers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsc_ctrls_create(%struct.gsc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsc_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %3, align 8
  %5 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* @GSC_MAX_CTRL_NUM, align 4
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__* %13, i32 %14)
  %16 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* @V4L2_CID_ROTATE, align 4
  %19 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %17, i32* @gsc_ctrl_ops, i32 %18, i32 0, i32 270, i32 90, i32 0)
  %20 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  store i8* %19, i8** %22, align 8
  %23 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %26 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %24, i32* @gsc_ctrl_ops, i32 %25, i32 0, i32 1, i32 1, i32 0)
  %27 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i8* %26, i8** %29, align 8
  %30 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %33 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %31, i32* @gsc_ctrl_ops, i32 %32, i32 0, i32 1, i32 1, i32 0)
  %34 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* @V4L2_CID_ALPHA_COMPONENT, align 4
  %40 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %38, i32* @gsc_ctrl_ops, i32 %39, i32 0, i32 255, i32 1, i32 0)
  %41 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %11
  %58 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %4, align 4
  %62 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %62, i32 0, i32 1
  %64 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__* %63)
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %57, %9
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
