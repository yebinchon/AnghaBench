; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.rockchip_rga = type { i32, i32 }
%struct.rga_ctx = type { i32, %struct.TYPE_3__, i8*, i8*, %struct.rockchip_rga* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@def_frame = common dso_local global i8* null, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@queue_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @rga_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rga_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.rockchip_rga*, align 8
  %5 = alloca %struct.rga_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.rockchip_rga* @video_drvdata(%struct.file* %7)
  store %struct.rockchip_rga* %8, %struct.rockchip_rga** %4, align 8
  store %struct.rga_ctx* null, %struct.rga_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rga_ctx* @kzalloc(i32 48, i32 %9)
  store %struct.rga_ctx* %10, %struct.rga_ctx** %5, align 8
  %11 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %12 = icmp ne %struct.rga_ctx* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %88

16:                                               ; preds = %1
  %17 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %18 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %18, i32 0, i32 4
  store %struct.rockchip_rga* %17, %struct.rockchip_rga** %19, align 8
  %20 = load i8*, i8** @def_frame, align 8
  %21 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @def_frame, align 8
  %24 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %27 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %26, i32 0, i32 0
  %28 = call i64 @mutex_lock_interruptible(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %32 = call i32 @kfree(%struct.rga_ctx* %31)
  %33 = load i32, i32* @ERESTARTSYS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %88

35:                                               ; preds = %16
  %36 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %37 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %40 = call i32 @v4l2_m2m_ctx_init(i32 %38, %struct.rga_ctx* %39, i32* @queue_init)
  %41 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %35
  %51 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %57 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %60 = call i32 @kfree(%struct.rga_ctx* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %88

62:                                               ; preds = %35
  %63 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %63, i32 0, i32 1
  %65 = load %struct.file*, %struct.file** %3, align 8
  %66 = call i32 @video_devdata(%struct.file* %65)
  %67 = call i32 @v4l2_fh_init(%struct.TYPE_3__* %64, i32 %66)
  %68 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %68, i32 0, i32 1
  %70 = load %struct.file*, %struct.file** %3, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %71, align 8
  %72 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %72, i32 0, i32 1
  %74 = call i32 @v4l2_fh_add(%struct.TYPE_3__* %73)
  %75 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %76 = call i32 @rga_setup_ctrls(%struct.rga_ctx* %75)
  %77 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %77, i32 0, i32 0
  %79 = call i32 @v4l2_ctrl_handler_setup(i32* %78)
  %80 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %80, i32 0, i32 0
  %82 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32* %81, i32** %84, align 8
  %85 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %86 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %62, %50, %30, %13
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.rockchip_rga* @video_drvdata(%struct.file*) #1

declare dso_local %struct.rga_ctx* @kzalloc(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @kfree(%struct.rga_ctx*) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.rga_ctx*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_3__*) #1

declare dso_local i32 @rga_setup_ctrls(%struct.rga_ctx*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
