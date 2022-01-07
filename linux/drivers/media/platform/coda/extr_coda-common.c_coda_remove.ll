; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.coda_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i64, i32* }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @coda_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.coda_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.coda_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.coda_dev* %6, %struct.coda_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %10 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %9, i32 0, i32 10
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %7
  %15 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %16 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %15, i32 0, i32 10
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i64 @video_get_drvdata(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %25 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %24, i32 0, i32 10
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @video_unregister_device(i32* %29)
  br label %31

31:                                               ; preds = %23, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %7

35:                                               ; preds = %7
  %36 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %37 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %42 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @v4l2_m2m_release(i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @pm_runtime_disable(i32* %47)
  %49 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %50 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %49, i32 0, i32 8
  %51 = call i32 @v4l2_device_unregister(i32* %50)
  %52 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %53 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @destroy_workqueue(i32 %54)
  %56 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %57 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %45
  %62 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %63 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %66 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %70 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @gen_pool_free(i32 %64, i64 %68, i32 %72)
  br label %74

74:                                               ; preds = %61, %45
  %75 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %76 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %77 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %76, i32 0, i32 4
  %78 = call i32 @coda_free_aux_buf(%struct.coda_dev* %75, i32* %77)
  %79 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %80 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %81 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %80, i32 0, i32 3
  %82 = call i32 @coda_free_aux_buf(%struct.coda_dev* %79, i32* %81)
  %83 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %84 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %85 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %84, i32 0, i32 2
  %86 = call i32 @coda_free_aux_buf(%struct.coda_dev* %83, i32* %85)
  %87 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %88 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @debugfs_remove_recursive(i32 %89)
  %91 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %92 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %91, i32 0, i32 0
  %93 = call i32 @ida_destroy(i32* %92)
  ret i32 0
}

declare dso_local %struct.coda_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @video_get_drvdata(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_m2m_release(i64) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

declare dso_local i32 @coda_free_aux_buf(%struct.coda_dev*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @ida_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
