; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cal_dev = type { %struct.cal_ctx** }
%struct.cal_ctx = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Removing %s\0A\00", align 1
@CAL_MODULE_NAME = common dso_local global i32 0, align 4
@CAL_NUM_CONTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"unregistering %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cal_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cal_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cal_dev*, align 8
  %4 = alloca %struct.cal_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call i64 @platform_get_drvdata(%struct.platform_device* %6)
  %8 = inttoptr i64 %7 to %struct.cal_dev*
  store %struct.cal_dev* %8, %struct.cal_dev** %3, align 8
  %9 = load %struct.cal_dev*, %struct.cal_dev** %3, align 8
  %10 = load i32, i32* @CAL_MODULE_NAME, align 4
  %11 = call i32 @cal_dbg(i32 1, %struct.cal_dev* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.cal_dev*, %struct.cal_dev** %3, align 8
  %13 = call i32 @cal_runtime_get(%struct.cal_dev* %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %52, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CAL_NUM_CONTEXT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = load %struct.cal_dev*, %struct.cal_dev** %3, align 8
  %20 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %19, i32 0, i32 0
  %21 = load %struct.cal_ctx**, %struct.cal_ctx*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %21, i64 %23
  %25 = load %struct.cal_ctx*, %struct.cal_ctx** %24, align 8
  store %struct.cal_ctx* %25, %struct.cal_ctx** %4, align 8
  %26 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %27 = icmp ne %struct.cal_ctx* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %18
  %29 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %30 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %30, i32 0, i32 0
  %32 = call i32 @video_device_node_name(i32* %31)
  %33 = call i32 @ctx_dbg(i32 1, %struct.cal_ctx* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %35 = call i32 @camerarx_phy_disable(%struct.cal_ctx* %34)
  %36 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %36, i32 0, i32 3
  %38 = call i32 @v4l2_async_notifier_unregister(i32* %37)
  %39 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %39, i32 0, i32 3
  %41 = call i32 @v4l2_async_notifier_cleanup(i32* %40)
  %42 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %42, i32 0, i32 2
  %44 = call i32 @v4l2_ctrl_handler_free(i32* %43)
  %45 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %45, i32 0, i32 1
  %47 = call i32 @v4l2_device_unregister(i32* %46)
  %48 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %48, i32 0, i32 0
  %50 = call i32 @video_unregister_device(i32* %49)
  br label %51

51:                                               ; preds = %28, %18
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %14

55:                                               ; preds = %14
  %56 = load %struct.cal_dev*, %struct.cal_dev** %3, align 8
  %57 = call i32 @cal_runtime_put(%struct.cal_dev* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @pm_runtime_disable(i32* %59)
  ret i32 0
}

declare dso_local i64 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cal_dbg(i32, %struct.cal_dev*, i8*, i32) #1

declare dso_local i32 @cal_runtime_get(%struct.cal_dev*) #1

declare dso_local i32 @ctx_dbg(i32, %struct.cal_ctx*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32*) #1

declare dso_local i32 @camerarx_phy_disable(%struct.cal_ctx*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @cal_runtime_put(%struct.cal_dev*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
