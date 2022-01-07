; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.aspeed_video = type { i32, i32, i32*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aspeed_video_resolution_work = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_video_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.aspeed_video*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.aspeed_video* @kzalloc(i32 40, i32 %7)
  store %struct.aspeed_video* %8, %struct.aspeed_video** %6, align 8
  %9 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %10 = icmp ne %struct.aspeed_video* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %16 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %15, i32 0, i32 0
  store i32 30, i32* %16, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %20 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %22 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %21, i32 0, i32 7
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %25 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %24, i32 0, i32 6
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %28 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %27, i32 0, i32 5
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %31 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %30, i32 0, i32 4
  %32 = load i32, i32* @aspeed_video_resolution_work, align 4
  %33 = call i32 @INIT_DELAYED_WORK(i32* %31, i32 %32)
  %34 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %35 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %34, i32 0, i32 3
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %37, i32 %38, i32 0)
  store %struct.resource* %39, %struct.resource** %5, align 8
  %40 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %41 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = call i32 @devm_ioremap_resource(i32* %42, %struct.resource* %43)
  %45 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %46 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %48 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %14
  %53 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %54 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %72

57:                                               ; preds = %14
  %58 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %59 = call i32 @aspeed_video_init(%struct.aspeed_video* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %72

64:                                               ; preds = %57
  %65 = load %struct.aspeed_video*, %struct.aspeed_video** %6, align 8
  %66 = call i32 @aspeed_video_setup_video(%struct.aspeed_video* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %69, %62, %52, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.aspeed_video* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @aspeed_video_init(%struct.aspeed_video*) #1

declare dso_local i32 @aspeed_video_setup_video(%struct.aspeed_video*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
