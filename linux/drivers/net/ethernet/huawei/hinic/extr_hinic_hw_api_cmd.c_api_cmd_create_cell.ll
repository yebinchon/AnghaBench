; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_create_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_create_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i32, i32, %struct.hinic_api_cmd_cell*, i8*, %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_hwif* }
%struct.hinic_api_cmd_cell_ctxt = type { i8*, %struct.hinic_api_cmd_cell* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_api_cmd_cell = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate dma API CMD cell\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate cmd buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unsupported API CMD chain type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_api_cmd_chain*, i32, %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell**)* @api_cmd_create_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @api_cmd_create_cell(%struct.hinic_api_cmd_chain* %0, i32 %1, %struct.hinic_api_cmd_cell* %2, %struct.hinic_api_cmd_cell** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_api_cmd_chain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hinic_api_cmd_cell*, align 8
  %9 = alloca %struct.hinic_api_cmd_cell**, align 8
  %10 = alloca %struct.hinic_api_cmd_cell_ctxt*, align 8
  %11 = alloca %struct.hinic_hwif*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.hinic_api_cmd_cell*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hinic_api_cmd_cell* %2, %struct.hinic_api_cmd_cell** %8, align 8
  store %struct.hinic_api_cmd_cell** %3, %struct.hinic_api_cmd_cell*** %9, align 8
  %16 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %17 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %16, i32 0, i32 5
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %17, align 8
  store %struct.hinic_hwif* %18, %struct.hinic_hwif** %11, align 8
  %19 = load %struct.hinic_hwif*, %struct.hinic_hwif** %11, align 8
  %20 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %12, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %25 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.hinic_api_cmd_cell* @dma_alloc_coherent(i32* %23, i32 %26, i8** %14, i32 %27)
  store %struct.hinic_api_cmd_cell* %28, %struct.hinic_api_cmd_cell** %13, align 8
  %29 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %13, align 8
  %30 = icmp ne %struct.hinic_api_cmd_cell* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %102

37:                                               ; preds = %4
  %38 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %13, align 8
  %39 = getelementptr inbounds %struct.hinic_api_cmd_cell, %struct.hinic_api_cmd_cell* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %42 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %41, i32 0, i32 4
  %43 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %43, i64 %45
  store %struct.hinic_api_cmd_cell_ctxt* %46, %struct.hinic_api_cmd_cell_ctxt** %10, align 8
  %47 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %13, align 8
  %48 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %10, align 8
  %49 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %48, i32 0, i32 1
  store %struct.hinic_api_cmd_cell* %47, %struct.hinic_api_cmd_cell** %49, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %10, align 8
  %52 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %8, align 8
  %54 = icmp ne %struct.hinic_api_cmd_cell* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %37
  %56 = load i8*, i8** %14, align 8
  %57 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %58 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %13, align 8
  %60 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %61 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %60, i32 0, i32 2
  store %struct.hinic_api_cmd_cell* %59, %struct.hinic_api_cmd_cell** %61, align 8
  br label %67

62:                                               ; preds = %37
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @cpu_to_be64(i8* %63)
  %65 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %8, align 8
  %66 = getelementptr inbounds %struct.hinic_api_cmd_cell, %struct.hinic_api_cmd_cell* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %55
  %68 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %69 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %83 [
    i32 128, label %71
  ]

71:                                               ; preds = %67
  %72 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %73 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %13, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @alloc_cmd_buf(%struct.hinic_api_cmd_chain* %72, %struct.hinic_api_cmd_cell* %73, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %92

82:                                               ; preds = %71
  br label %89

83:                                               ; preds = %67
  %84 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %15, align 4
  br label %92

89:                                               ; preds = %82
  %90 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %13, align 8
  %91 = load %struct.hinic_api_cmd_cell**, %struct.hinic_api_cmd_cell*** %9, align 8
  store %struct.hinic_api_cmd_cell* %90, %struct.hinic_api_cmd_cell** %91, align 8
  store i32 0, i32* %5, align 4
  br label %102

92:                                               ; preds = %83, %78
  %93 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %96 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %13, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = call i32 @dma_free_coherent(i32* %94, i32 %97, %struct.hinic_api_cmd_cell* %98, i8* %99)
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %92, %89, %31
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.hinic_api_cmd_cell* @dma_alloc_coherent(i32*, i32, i8**, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cpu_to_be64(i8*) #1

declare dso_local i32 @alloc_cmd_buf(%struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_cell*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.hinic_api_cmd_cell*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
