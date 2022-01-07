; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_hinic_set_arm_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_hinic_set_arm_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdqs = type { %struct.hinic_hwif*, %struct.hinic_cmdq* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_cmdq = type { i32 }
%struct.hinic_cmdq_arm_bit = type { i32, i32 }

@HINIC_CMDQ_SYNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to set arm for qid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_set_arm_bit(%struct.hinic_cmdqs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_cmdqs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hinic_cmdq*, align 8
  %9 = alloca %struct.hinic_hwif*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.hinic_cmdq_arm_bit, align 4
  %12 = alloca i32, align 4
  store %struct.hinic_cmdqs* %0, %struct.hinic_cmdqs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %5, align 8
  %14 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %13, i32 0, i32 1
  %15 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %14, align 8
  %16 = load i64, i64* @HINIC_CMDQ_SYNC, align 8
  %17 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %15, i64 %16
  store %struct.hinic_cmdq* %17, %struct.hinic_cmdq** %8, align 8
  %18 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %5, align 8
  %19 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %18, i32 0, i32 0
  %20 = load %struct.hinic_hwif*, %struct.hinic_hwif** %19, align 8
  store %struct.hinic_hwif* %20, %struct.hinic_hwif** %9, align 8
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %22 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.hinic_cmdq_arm_bit, %struct.hinic_cmdq_arm_bit* %11, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.hinic_cmdq_arm_bit, %struct.hinic_cmdq_arm_bit* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %8, align 8
  %29 = call i32 @cmdq_set_arm_bit(%struct.hinic_cmdq* %28, %struct.hinic_cmdq_arm_bit* %11, i32 8)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @cmdq_set_arm_bit(%struct.hinic_cmdq*, %struct.hinic_cmdq_arm_bit*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
