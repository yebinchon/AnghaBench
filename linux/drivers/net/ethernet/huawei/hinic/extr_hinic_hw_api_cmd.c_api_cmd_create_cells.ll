; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_create_cells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_create_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i32, i32, i32, i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_api_cmd_cell = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to create API CMD cell\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_api_cmd_chain*)* @api_cmd_create_cells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @api_cmd_create_cells(%struct.hinic_api_cmd_chain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_api_cmd_chain*, align 8
  %4 = alloca %struct.hinic_api_cmd_cell*, align 8
  %5 = alloca %struct.hinic_api_cmd_cell*, align 8
  %6 = alloca %struct.hinic_hwif*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %3, align 8
  store %struct.hinic_api_cmd_cell* null, %struct.hinic_api_cmd_cell** %4, align 8
  store %struct.hinic_api_cmd_cell* null, %struct.hinic_api_cmd_cell** %5, align 8
  %10 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %11 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %10, i32 0, i32 4
  %12 = load %struct.hinic_hwif*, %struct.hinic_hwif** %11, align 8
  store %struct.hinic_hwif* %12, %struct.hinic_hwif** %6, align 8
  %13 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %14 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %35, %1
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %19 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %5, align 8
  %26 = call i32 @api_cmd_create_cell(%struct.hinic_api_cmd_chain* %23, i32 %24, %struct.hinic_api_cmd_cell* %25, %struct.hinic_api_cmd_cell** %4)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %50

33:                                               ; preds = %22
  %34 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %4, align 8
  store %struct.hinic_api_cmd_cell* %34, %struct.hinic_api_cmd_cell** %5, align 8
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %40 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpu_to_be64(i32 %41)
  %43 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %4, align 8
  %44 = getelementptr inbounds %struct.hinic_api_cmd_cell, %struct.hinic_api_cmd_cell* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %46 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %49 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %2, align 4
  br label %55

50:                                               ; preds = %29
  %51 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @api_cmd_destroy_cells(%struct.hinic_api_cmd_chain* %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %50, %38
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @api_cmd_create_cell(%struct.hinic_api_cmd_chain*, i32, %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @api_cmd_destroy_cells(%struct.hinic_api_cmd_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
