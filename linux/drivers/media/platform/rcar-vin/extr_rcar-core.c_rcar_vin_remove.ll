; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rcar_vin_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rcar_vin_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rvin_dev = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_vin_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_vin_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.rvin_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.rvin_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.rvin_dev* %5, %struct.rvin_dev** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_disable(i32* %7)
  %9 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %10 = call i32 @rvin_v4l2_unregister(%struct.rvin_dev* %9)
  %11 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %11, i32 0, i32 4
  %13 = call i32 @v4l2_async_notifier_unregister(%struct.TYPE_7__* %12)
  %14 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %15 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %14, i32 0, i32 4
  %16 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_7__* %15)
  %17 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %18 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %1
  %24 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %25 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %30 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %29, i32 0, i32 2
  %31 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %32 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %30, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %23
  %39 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %40 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = call i32 @v4l2_async_notifier_unregister(%struct.TYPE_7__* %42)
  %44 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %45 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_7__* %47)
  br label %49

49:                                               ; preds = %38, %23
  %50 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %51 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %56 = call i32 @rvin_group_put(%struct.rvin_dev* %55)
  br label %57

57:                                               ; preds = %49, %1
  %58 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %59 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %58, i32 0, i32 0
  %60 = call i32 @v4l2_ctrl_handler_free(i32* %59)
  %61 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %62 = call i32 @rvin_dma_unregister(%struct.rvin_dev* %61)
  ret i32 0
}

declare dso_local %struct.rvin_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @rvin_v4l2_unregister(%struct.rvin_dev*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rvin_group_put(%struct.rvin_dev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @rvin_dma_unregister(%struct.rvin_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
