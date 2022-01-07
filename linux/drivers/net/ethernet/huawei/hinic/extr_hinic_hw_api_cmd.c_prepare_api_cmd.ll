; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_prepare_api_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_prepare_api_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i64, i32, %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_hwif*, %struct.hinic_api_cmd_cell* }
%struct.hinic_api_cmd_cell_ctxt = type { i32 }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_api_cmd_cell = type { i32 }

@SGE_DATA = common dso_local global i32 0, align 4
@API_TYPE = common dso_local global i32 0, align 4
@API_CMD_WRITE = common dso_local global i32 0, align 4
@RD_WR = common dso_local global i32 0, align 4
@NO_BYPASS = common dso_local global i32 0, align 4
@MGMT_BYPASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown Chain type\0A\00", align 1
@DEST = common dso_local global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@XOR_CHKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_api_cmd_chain*, i32, i8*, i32)* @prepare_api_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_api_cmd(%struct.hinic_api_cmd_chain* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hinic_api_cmd_chain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hinic_api_cmd_cell*, align 8
  %10 = alloca %struct.hinic_api_cmd_cell_ctxt*, align 8
  %11 = alloca %struct.hinic_hwif*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %5, align 8
  %14 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %13, i32 0, i32 4
  %15 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %14, align 8
  store %struct.hinic_api_cmd_cell* %15, %struct.hinic_api_cmd_cell** %9, align 8
  %16 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %5, align 8
  %17 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %16, i32 0, i32 3
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %17, align 8
  store %struct.hinic_hwif* %18, %struct.hinic_hwif** %11, align 8
  %19 = load %struct.hinic_hwif*, %struct.hinic_hwif** %11, align 8
  %20 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %12, align 8
  %22 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %5, align 8
  %23 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %22, i32 0, i32 2
  %24 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %23, align 8
  %25 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %5, align 8
  %26 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %24, i64 %27
  store %struct.hinic_api_cmd_cell_ctxt* %28, %struct.hinic_api_cmd_cell_ctxt** %10, align 8
  %29 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %5, align 8
  %30 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %46 [
    i32 128, label %32
  ]

32:                                               ; preds = %4
  %33 = load i32, i32* @SGE_DATA, align 4
  %34 = load i32, i32* @API_TYPE, align 4
  %35 = call i32 @HINIC_API_CMD_DESC_SET(i32 %33, i32 %34)
  %36 = load i32, i32* @API_CMD_WRITE, align 4
  %37 = load i32, i32* @RD_WR, align 4
  %38 = call i32 @HINIC_API_CMD_DESC_SET(i32 %36, i32 %37)
  %39 = or i32 %35, %38
  %40 = load i32, i32* @NO_BYPASS, align 4
  %41 = load i32, i32* @MGMT_BYPASS, align 4
  %42 = call i32 @HINIC_API_CMD_DESC_SET(i32 %40, i32 %41)
  %43 = or i32 %39, %42
  %44 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %9, align 8
  %45 = getelementptr inbounds %struct.hinic_api_cmd_cell, %struct.hinic_api_cmd_cell* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %50

46:                                               ; preds = %4
  %47 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %84

50:                                               ; preds = %32
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DEST, align 4
  %53 = call i32 @HINIC_API_CMD_DESC_SET(i32 %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @SIZE_4BYTES(i32 %54)
  %56 = load i32, i32* @SIZE, align 4
  %57 = call i32 @HINIC_API_CMD_DESC_SET(i32 %55, i32 %56)
  %58 = or i32 %53, %57
  %59 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %9, align 8
  %60 = getelementptr inbounds %struct.hinic_api_cmd_cell, %struct.hinic_api_cmd_cell* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %9, align 8
  %64 = getelementptr inbounds %struct.hinic_api_cmd_cell, %struct.hinic_api_cmd_cell* %63, i32 0, i32 0
  %65 = call i32 @xor_chksum_set(i32* %64)
  %66 = load i32, i32* @XOR_CHKSUM, align 4
  %67 = call i32 @HINIC_API_CMD_DESC_SET(i32 %65, i32 %66)
  %68 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %9, align 8
  %69 = getelementptr inbounds %struct.hinic_api_cmd_cell, %struct.hinic_api_cmd_cell* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %9, align 8
  %73 = getelementptr inbounds %struct.hinic_api_cmd_cell, %struct.hinic_api_cmd_cell* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cpu_to_be64(i32 %74)
  %76 = load %struct.hinic_api_cmd_cell*, %struct.hinic_api_cmd_cell** %9, align 8
  %77 = getelementptr inbounds %struct.hinic_api_cmd_cell, %struct.hinic_api_cmd_cell* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %10, align 8
  %79 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @memcpy(i32 %80, i8* %81, i32 %82)
  br label %84

84:                                               ; preds = %50, %46
  ret void
}

declare dso_local i32 @HINIC_API_CMD_DESC_SET(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @SIZE_4BYTES(i32) #1

declare dso_local i32 @xor_chksum_set(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
