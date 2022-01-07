; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_chain_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_chain_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i32, i32, i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"API CMD chain %d is busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown API CMD Chain type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_api_cmd_chain*)* @chain_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chain_busy(%struct.hinic_api_cmd_chain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_api_cmd_chain*, align 8
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %3, align 8
  %7 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %8 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %7, i32 0, i32 3
  %9 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  store %struct.hinic_hwif* %9, %struct.hinic_hwif** %4, align 8
  %10 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %11 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %14 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %42 [
    i32 128, label %16
  ]

16:                                               ; preds = %1
  %17 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %18 = call i32 @get_hw_cons_idx(%struct.hinic_api_cmd_chain* %17)
  %19 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %20 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %22 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %25 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @MASKED_IDX(%struct.hinic_api_cmd_chain* %27, i32 %29)
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %16
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %36 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %47

41:                                               ; preds = %16
  br label %46

42:                                               ; preds = %1
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %41
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @get_hw_cons_idx(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @MASKED_IDX(%struct.hinic_api_cmd_chain*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
