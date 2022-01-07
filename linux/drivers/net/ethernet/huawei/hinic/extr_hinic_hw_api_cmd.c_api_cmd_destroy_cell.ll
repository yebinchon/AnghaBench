; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_destroy_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_destroy_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i64, i32, %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_hwif* }
%struct.hinic_api_cmd_cell_ctxt = type { i64, i32, %struct.hinic_api_cmd_cell* }
%struct.hinic_api_cmd_cell = type { i32 }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unsupported API CMD chain type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_api_cmd_chain*, i32)* @api_cmd_destroy_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @api_cmd_destroy_cell(%struct.hinic_api_cmd_chain* %0, i32 %1) #0 {
  %3 = alloca %struct.hinic_api_cmd_chain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_api_cmd_cell_ctxt*, align 8
  %6 = alloca %struct.hinic_hwif*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.hinic_api_cmd_cell*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %12 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %11, i32 0, i32 3
  %13 = load %struct.hinic_hwif*, %struct.hinic_hwif** %12, align 8
  store %struct.hinic_hwif* %13, %struct.hinic_hwif** %6, align 8
  %14 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %15 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %7, align 8
  %17 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %18 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %17, i32 0, i32 2
  %19 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %19, i64 %21
  store %struct.hinic_api_cmd_cell_ctxt* %22, %struct.hinic_api_cmd_cell_ctxt** %5, align 8
  %23 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %5, align 8
  %24 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %23, i32 0, i32 2
  %25 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %24, align 8
  store %struct.hinic_api_cmd_cell* %25, %struct.hinic_api_cmd_cell** %8, align 8
  %26 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %5, align 8
  %27 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %30 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %5, align 8
  %33 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %2
  %37 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %38 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %44 [
    i32 128, label %40
  ]

40:                                               ; preds = %36
  %41 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @free_cmd_buf(%struct.hinic_api_cmd_chain* %41, i32 %42)
  br label %48

44:                                               ; preds = %36
  %45 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @dma_free_coherent(i32* %50, i64 %51, %struct.hinic_api_cmd_cell* %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %2
  ret void
}

declare dso_local i32 @free_cmd_buf(%struct.hinic_api_cmd_chain*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, %struct.hinic_api_cmd_cell*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
