; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_omap3isp_hist_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_omap3isp_hist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32, %struct.ispstat }
%struct.ispstat = type { i32*, i32, %struct.omap3isp_hist_config*, i32*, %struct.isp_device* }
%struct.omap3isp_hist_config = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HIST_CONFIG_DMA = common dso_local global i64 0, align 8
@DMA_SLAVE = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"hist: DMA channel request failed, using PIO\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"hist: using DMA channel %s\0A\00", align 1
@hist_ops = common dso_local global i32 0, align 4
@V4L2_EVENT_OMAP3ISP_HIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"histogram\00", align 1
@hist_subdev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_hist_init(%struct.isp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca %struct.omap3isp_hist_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %3, align 8
  %8 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %8, i32 0, i32 1
  store %struct.ispstat* %9, %struct.ispstat** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.omap3isp_hist_config* @kzalloc(i32 4, i32 %10)
  store %struct.omap3isp_hist_config* %11, %struct.omap3isp_hist_config** %5, align 8
  %12 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %13 = icmp eq %struct.omap3isp_hist_config* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %94

17:                                               ; preds = %1
  %18 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %19 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %20 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %19, i32 0, i32 4
  store %struct.isp_device* %18, %struct.isp_device** %20, align 8
  %21 = load i64, i64* @HIST_CONFIG_DMA, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dma_cap_zero(i32 %24)
  %26 = load i32, i32* @DMA_SLAVE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dma_cap_set(i32 %26, i32 %27)
  %29 = call i32* @dma_request_chan_by_mask(i32* %7)
  %30 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %31 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %33 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @IS_ERR(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %23
  %38 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %39 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @EPROBE_DEFER, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %75

47:                                               ; preds = %37
  %48 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %49 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %51 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_warn(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %63

54:                                               ; preds = %23
  %55 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %56 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %59 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @dma_chan_name(i32* %60)
  %62 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %54, %47
  br label %64

64:                                               ; preds = %63, %17
  %65 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %66 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %65, i32 0, i32 3
  store i32* @hist_ops, i32** %66, align 8
  %67 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %68 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %69 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %68, i32 0, i32 2
  store %struct.omap3isp_hist_config* %67, %struct.omap3isp_hist_config** %69, align 8
  %70 = load i32, i32* @V4L2_EVENT_OMAP3ISP_HIST, align 4
  %71 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %72 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %74 = call i32 @omap3isp_stat_init(%struct.ispstat* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* @hist_subdev_ops)
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %64, %46
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %80 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @IS_ERR_OR_NULL(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %86 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @dma_release_channel(i32* %87)
  br label %89

89:                                               ; preds = %84, %78
  %90 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %91 = call i32 @kfree(%struct.omap3isp_hist_config* %90)
  br label %92

92:                                               ; preds = %89, %75
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %14
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.omap3isp_hist_config* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32* @dma_request_chan_by_mask(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dma_chan_name(i32*) #1

declare dso_local i32 @omap3isp_stat_init(%struct.ispstat*, i8*, i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @kfree(%struct.omap3isp_hist_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
