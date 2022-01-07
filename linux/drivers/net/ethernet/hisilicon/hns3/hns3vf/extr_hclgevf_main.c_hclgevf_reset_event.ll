; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hnae3_handle = type { i32 }
%struct.hnae3_ae_dev = type { %struct.hclgevf_dev* }
%struct.hclgevf_dev = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"received reset request from VF enet\0A\00", align 1
@HNAE3_VF_FUNC_RESET = common dso_local global i32 0, align 4
@HCLGEVF_RESET_REQUESTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.hnae3_handle*)* @hclgevf_reset_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_reset_event(%struct.pci_dev* %0, %struct.hnae3_handle* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hnae3_ae_dev*, align 8
  %6 = alloca %struct.hclgevf_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.hnae3_handle* %1, %struct.hnae3_handle** %4, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.hnae3_ae_dev* %8, %struct.hnae3_ae_dev** %5, align 8
  %9 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %10 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %9, i32 0, i32 0
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  store %struct.hclgevf_dev* %11, %struct.hclgevf_dev** %6, align 8
  %12 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %13 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @dev_info(i32* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %18 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %23 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %24 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %23, i32 0, i32 3
  %25 = call i32 @hclgevf_get_reset_level(%struct.hclgevf_dev* %22, i64* %24)
  %26 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %27 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  br label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @HNAE3_VF_FUNC_RESET, align 4
  %30 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %31 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i32, i32* @HCLGEVF_RESET_REQUESTED, align 4
  %34 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %35 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %34, i32 0, i32 1
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %38 = call i32 @hclgevf_reset_task_schedule(%struct.hclgevf_dev* %37)
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %41 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  ret void
}

declare dso_local %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @hclgevf_get_reset_level(%struct.hclgevf_dev*, i64*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hclgevf_reset_task_schedule(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
