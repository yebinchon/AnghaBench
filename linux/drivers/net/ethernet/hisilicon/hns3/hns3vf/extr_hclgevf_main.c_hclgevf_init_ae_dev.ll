; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_ae_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_ae_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { %struct.hclgevf_dev*, %struct.pci_dev* }
%struct.hclgevf_dev = type { i32, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"hclge device allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"hclge device initialization failed\0A\00", align 1
@hclgevf_keep_alive_timer = common dso_local global i32 0, align 4
@hclgevf_keep_alive_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_ae_dev*)* @hclgevf_init_ae_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_init_ae_dev(%struct.hnae3_ae_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_ae_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.hclgevf_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.hnae3_ae_dev* %0, %struct.hnae3_ae_dev** %3, align 8
  %7 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %11 = call i32 @hclgevf_alloc_hdev(%struct.hnae3_ae_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %20, i32 0, i32 0
  %22 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %21, align 8
  %23 = call i32 @hclgevf_init_hdev(%struct.hclgevf_dev* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %43

31:                                               ; preds = %19
  %32 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %32, i32 0, i32 0
  %34 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %33, align 8
  store %struct.hclgevf_dev* %34, %struct.hclgevf_dev** %5, align 8
  %35 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %36 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %35, i32 0, i32 1
  %37 = load i32, i32* @hclgevf_keep_alive_timer, align 4
  %38 = call i32 @timer_setup(i32* %36, i32 %37, i32 0)
  %39 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %40 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %39, i32 0, i32 0
  %41 = load i32, i32* @hclgevf_keep_alive_task, align 4
  %42 = call i32 @INIT_WORK(i32* %40, i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %31, %26, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @hclgevf_alloc_hdev(%struct.hnae3_ae_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hclgevf_init_hdev(%struct.hclgevf_dev*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
