; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rockchip_rga = type { i32, i32, i32, i32, i64, i64, i32, i32 }

@RGA_CMDBUF_SIZE = common dso_local global i32 0, align 4
@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Removing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rga_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rga_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.rockchip_rga*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.rockchip_rga* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.rockchip_rga* %5, %struct.rockchip_rga** %3, align 8
  %6 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @RGA_CMDBUF_SIZE, align 4
  %10 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %11 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %14 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %17 = call i32 @dma_free_attrs(i32 %8, i32 %9, i32 %12, i32 %15, i32 %16)
  %18 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %19 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @free_pages(i64 %20, i32 3)
  %22 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %23 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @free_pages(i64 %24, i32 3)
  %26 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %27 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %26, i32 0, i32 1
  %28 = call i32 @v4l2_info(i32* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %30 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @v4l2_m2m_release(i32 %31)
  %33 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %34 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @video_unregister_device(i32 %35)
  %37 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %38 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %37, i32 0, i32 1
  %39 = call i32 @v4l2_device_unregister(i32* %38)
  %40 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %41 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pm_runtime_disable(i32 %42)
  ret i32 0
}

declare dso_local %struct.rockchip_rga* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dma_free_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @v4l2_info(i32*, i8*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @video_unregister_device(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
