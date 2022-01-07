; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s5p_mfc_dev = type { i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_ctx** }
%struct.s5p_mfc_ctx = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"Removing %s\0A\00", align 1
@MFC_NUM_CONTEXTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s5p_mfc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.s5p_mfc_dev* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.s5p_mfc_dev* %7, %struct.s5p_mfc_dev** %3, align 8
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %8, i32 0, i32 0
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @v4l2_info(i32* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %14, i32 0, i32 5
  %16 = call i32 @mutex_lock(i32* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %35, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MFC_NUM_CONTEXTS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %23 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %22, i32 0, i32 6
  %24 = load %struct.s5p_mfc_ctx**, %struct.s5p_mfc_ctx*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %24, i64 %26
  %28 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %27, align 8
  store %struct.s5p_mfc_ctx* %28, %struct.s5p_mfc_ctx** %4, align 8
  %29 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %30 = icmp ne %struct.s5p_mfc_ctx* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %35

32:                                               ; preds = %21
  %33 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %32, %31
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %17

38:                                               ; preds = %17
  %39 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %39, i32 0, i32 5
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %43 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %42, i32 0, i32 4
  %44 = call i32 @del_timer_sync(i32* %43)
  %45 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %46 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %45, i32 0, i32 3
  %47 = call i32 @flush_work(i32* %46)
  %48 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %49 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @video_unregister_device(i32 %50)
  %52 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %53 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @video_unregister_device(i32 %54)
  %56 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @video_device_release(i32 %58)
  %60 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %61 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @video_device_release(i32 %62)
  %64 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %65 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %64, i32 0, i32 0
  %66 = call i32 @v4l2_device_unregister(i32* %65)
  %67 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %68 = call i32 @s5p_mfc_unconfigure_dma_memory(%struct.s5p_mfc_dev* %67)
  %69 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %70 = call i32 @s5p_mfc_final_pm(%struct.s5p_mfc_dev* %69)
  ret i32 0
}

declare dso_local %struct.s5p_mfc_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @video_unregister_device(i32) #1

declare dso_local i32 @video_device_release(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @s5p_mfc_unconfigure_dma_memory(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_final_pm(%struct.s5p_mfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
