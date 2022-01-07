; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_hinic_cmdq_direct_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_hinic_cmdq_direct_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdqs = type { i32*, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_cmdq_buf = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid CMDQ parameters\0A\00", align 1
@HINIC_CMDQ_SYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_cmdq_direct_resp(%struct.hinic_cmdqs* %0, i32 %1, i32 %2, %struct.hinic_cmdq_buf* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hinic_cmdqs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hinic_cmdq_buf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.hinic_hwif*, align 8
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i32, align 4
  store %struct.hinic_cmdqs* %0, %struct.hinic_cmdqs** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.hinic_cmdq_buf* %3, %struct.hinic_cmdq_buf** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %7, align 8
  %16 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %15, i32 0, i32 1
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %16, align 8
  store %struct.hinic_hwif* %17, %struct.hinic_hwif** %12, align 8
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %12, align 8
  %19 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %13, align 8
  %21 = load %struct.hinic_cmdq_buf*, %struct.hinic_cmdq_buf** %10, align 8
  %22 = call i32 @cmdq_params_valid(%struct.hinic_cmdq_buf* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %6, align 4
  br label %41

30:                                               ; preds = %5
  %31 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %7, align 8
  %32 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @HINIC_CMDQ_SYNC, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.hinic_cmdq_buf*, %struct.hinic_cmdq_buf** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @cmdq_sync_cmd_direct_resp(i32* %35, i32 %36, i32 %37, %struct.hinic_cmdq_buf* %38, i32* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %30, %25
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @cmdq_params_valid(%struct.hinic_cmdq_buf*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cmdq_sync_cmd_direct_resp(i32*, i32, i32, %struct.hinic_cmdq_buf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
