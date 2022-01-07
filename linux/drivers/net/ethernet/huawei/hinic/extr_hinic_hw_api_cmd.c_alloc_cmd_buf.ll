; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_alloc_cmd_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_alloc_cmd_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i32, %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_hwif* }
%struct.hinic_api_cmd_cell_ctxt = type { i32, i32* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_api_cmd_cell = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@API_CMD_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate API CMD DMA memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported API CMD chain type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_cell*, i32)* @alloc_cmd_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_cmd_buf(%struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_cell* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_api_cmd_chain*, align 8
  %6 = alloca %struct.hinic_api_cmd_cell*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hinic_api_cmd_cell_ctxt*, align 8
  %9 = alloca %struct.hinic_hwif*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %5, align 8
  store %struct.hinic_api_cmd_cell* %1, %struct.hinic_api_cmd_cell** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %5, align 8
  %15 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %14, i32 0, i32 2
  %16 = load %struct.hinic_hwif*, %struct.hinic_hwif** %15, align 8
  store %struct.hinic_hwif* %16, %struct.hinic_hwif** %9, align 8
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %18 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %17, i32 0, i32 0
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %10, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* @API_CMD_BUF_SIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @dma_alloc_coherent(i32* %21, i32 %22, i32* %11, i32 %23)
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %66

33:                                               ; preds = %3
  %34 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %5, align 8
  %35 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %34, i32 0, i32 1
  %36 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %36, i64 %38
  store %struct.hinic_api_cmd_cell_ctxt* %39, %struct.hinic_api_cmd_cell_ctxt** %8, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %8, align 8
  %42 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %8, align 8
  %45 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %5, align 8
  %47 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %55 [
    i32 128, label %49
  ]

49:                                               ; preds = %33
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @cpu_to_be64(i32 %50)
  %52 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %6, align 8
  %53 = getelementptr inbounds %struct.hinic_api_cmd_cell, %struct.hinic_api_cmd_cell* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  br label %64

55:                                               ; preds = %33
  %56 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @free_cmd_buf(%struct.hinic_api_cmd_chain* %59, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %55, %49
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %27
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @free_cmd_buf(%struct.hinic_api_cmd_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
