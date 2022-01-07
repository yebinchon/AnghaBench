; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_acquire_dma_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_acquire_dma_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { %struct.dma_chan**, i32, %struct.platform_device* }
%struct.dma_chan = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request DMA channel.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*)* @acquire_dma_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_dma_channels(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmi_nand_data*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %3, align 8
  %6 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %7 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %6, i32 0, i32 2
  %8 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  store %struct.platform_device* %8, %struct.platform_device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.dma_chan* @dma_request_slave_channel(i32* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_chan* %11, %struct.dma_chan** %5, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = icmp ne %struct.dma_chan* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %16 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %21 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %22 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %21, i32 0, i32 0
  %23 = load %struct.dma_chan**, %struct.dma_chan*** %22, align 8
  %24 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %23, i64 0
  store %struct.dma_chan* %20, %struct.dma_chan** %24, align 8
  store i32 0, i32* %2, align 4
  br label %30

25:                                               ; preds = %14
  %26 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %27 = call i32 @release_dma_channels(%struct.gpmi_nand_data* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.dma_chan* @dma_request_slave_channel(i32*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @release_dma_channels(%struct.gpmi_nand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
