; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_alloc_isd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_alloc_isd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_async_subdev = type { %struct.isp_bus_cfg }
%struct.isp_bus_cfg = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_async_subdev**, %struct.isp_bus_cfg**)* @isp_alloc_isd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_alloc_isd(%struct.isp_async_subdev** %0, %struct.isp_bus_cfg** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_async_subdev**, align 8
  %5 = alloca %struct.isp_bus_cfg**, align 8
  %6 = alloca %struct.isp_async_subdev*, align 8
  store %struct.isp_async_subdev** %0, %struct.isp_async_subdev*** %4, align 8
  store %struct.isp_bus_cfg** %1, %struct.isp_bus_cfg*** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.isp_async_subdev* @kzalloc(i32 4, i32 %7)
  store %struct.isp_async_subdev* %8, %struct.isp_async_subdev** %6, align 8
  %9 = load %struct.isp_async_subdev*, %struct.isp_async_subdev** %6, align 8
  %10 = icmp ne %struct.isp_async_subdev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.isp_async_subdev*, %struct.isp_async_subdev** %6, align 8
  %16 = load %struct.isp_async_subdev**, %struct.isp_async_subdev*** %4, align 8
  store %struct.isp_async_subdev* %15, %struct.isp_async_subdev** %16, align 8
  %17 = load %struct.isp_async_subdev*, %struct.isp_async_subdev** %6, align 8
  %18 = getelementptr inbounds %struct.isp_async_subdev, %struct.isp_async_subdev* %17, i32 0, i32 0
  %19 = load %struct.isp_bus_cfg**, %struct.isp_bus_cfg*** %5, align 8
  store %struct.isp_bus_cfg* %18, %struct.isp_bus_cfg** %19, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.isp_async_subdev* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
