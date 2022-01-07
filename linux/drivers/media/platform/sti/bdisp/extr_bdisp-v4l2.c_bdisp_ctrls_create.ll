; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_ctrls_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_ctrls_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_ctx = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@BDISP_MAX_CTRL_NUM = common dso_local global i32 0, align 4
@bdisp_c_ops = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdisp_ctx*)* @bdisp_ctrls_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_ctrls_create(%struct.bdisp_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdisp_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.bdisp_ctx* %0, %struct.bdisp_ctx** %3, align 8
  %5 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

10:                                               ; preds = %1
  %11 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* @BDISP_MAX_CTRL_NUM, align 4
  %14 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__* %12, i32 %13)
  %15 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %18 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %16, i32* @bdisp_c_ops, i32 %17, i32 0, i32 1, i32 1, i32 0)
  %19 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  %22 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %25 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %23, i32* @bdisp_c_ops, i32 %24, i32 0, i32 1, i32 1, i32 0)
  %26 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %10
  %35 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  %39 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %39, i32 0, i32 1
  %41 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %10
  %44 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %34, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
