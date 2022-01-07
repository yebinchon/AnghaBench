; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i64, %struct.hinic_api_cmd_status*, %struct.hinic_hwif* }
%struct.hinic_api_cmd_status = type { i32, i32 }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@CHKSUM_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"API CMD status: Xor check error\0A\00", align 1
@CHAIN_ID = common dso_local global i32 0, align 4
@HINIC_API_CMD_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown API CMD Chain %d\0A\00", align 1
@CONS_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_api_cmd_chain*)* @api_cmd_status_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @api_cmd_status_update(%struct.hinic_api_cmd_chain* %0) #0 {
  %2 = alloca %struct.hinic_api_cmd_chain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_api_cmd_status*, align 8
  %5 = alloca %struct.hinic_hwif*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %2, align 8
  %9 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %2, align 8
  %10 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %9, i32 0, i32 2
  %11 = load %struct.hinic_hwif*, %struct.hinic_hwif** %10, align 8
  store %struct.hinic_hwif* %11, %struct.hinic_hwif** %5, align 8
  %12 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %13 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %2, align 8
  %16 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %15, i32 0, i32 1
  %17 = load %struct.hinic_api_cmd_status*, %struct.hinic_api_cmd_status** %16, align 8
  store %struct.hinic_api_cmd_status* %17, %struct.hinic_api_cmd_status** %4, align 8
  %18 = load %struct.hinic_api_cmd_status*, %struct.hinic_api_cmd_status** %4, align 8
  %19 = getelementptr inbounds %struct.hinic_api_cmd_status, %struct.hinic_api_cmd_status* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be64_to_cpu(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.hinic_api_cmd_status*, %struct.hinic_api_cmd_status** %4, align 8
  %23 = getelementptr inbounds %struct.hinic_api_cmd_status, %struct.hinic_api_cmd_status* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CHKSUM_ERR, align 4
  %28 = call i64 @HINIC_API_CMD_STATUS_GET(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %52

34:                                               ; preds = %1
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @CHAIN_ID, align 4
  %37 = call i32 @HINIC_API_CMD_STATUS_HEADER_GET(i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @HINIC_API_CMD_MAX, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %52

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @CONS_IDX, align 4
  %49 = call i64 @HINIC_API_CMD_STATUS_GET(i32 %47, i32 %48)
  %50 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %2, align 8
  %51 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %41, %30
  ret void
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @HINIC_API_CMD_STATUS_GET(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @HINIC_API_CMD_STATUS_HEADER_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
