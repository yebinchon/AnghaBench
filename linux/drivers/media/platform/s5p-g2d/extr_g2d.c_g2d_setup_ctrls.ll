; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_setup_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_setup_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_ctx = type { i8*, %struct.TYPE_5__, i8*, %struct.g2d_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.g2d_dev = type { i32 }

@g2d_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX = common dso_local global i32 0, align 4
@V4L2_COLORFX_NEGATIVE = common dso_local global i32 0, align 4
@V4L2_COLORFX_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"g2d_setup_ctrls failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g2d_ctx*)* @g2d_setup_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_setup_ctrls(%struct.g2d_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g2d_ctx*, align 8
  %4 = alloca %struct.g2d_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.g2d_ctx* %0, %struct.g2d_ctx** %3, align 8
  %6 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %6, i32 0, i32 3
  %8 = load %struct.g2d_dev*, %struct.g2d_dev** %7, align 8
  store %struct.g2d_dev* %8, %struct.g2d_dev** %4, align 8
  %9 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %9, i32 0, i32 1
  %11 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__* %10, i32 3)
  %12 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %15 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_5__* %13, i32* @g2d_ctrl_ops, i32 %14, i32 0, i32 1, i32 1, i32 0)
  %16 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %21 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_5__* %19, i32* @g2d_ctrl_ops, i32 %20, i32 0, i32 1, i32 1, i32 0)
  %22 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* @V4L2_CID_COLORFX, align 4
  %27 = load i32, i32* @V4L2_COLORFX_NEGATIVE, align 4
  %28 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @V4L2_COLORFX_NEGATIVE, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %35 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_5__* %25, i32* @g2d_ctrl_ops, i32 %26, i32 %27, i32 %33, i32 %34)
  %36 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %1
  %42 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %5, align 4
  %46 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %47 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %46, i32 0, i32 0
  %48 = call i32 @v4l2_err(i32* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %49, i32 0, i32 1
  %51 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__* %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %1
  %54 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %54, i32 0, i32 0
  %56 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %41
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_5__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
