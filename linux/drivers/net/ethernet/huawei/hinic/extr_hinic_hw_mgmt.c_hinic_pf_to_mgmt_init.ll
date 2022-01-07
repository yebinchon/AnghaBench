; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_hinic_pf_to_mgmt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_hinic_pf_to_mgmt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pf_to_mgmt = type { i32, i64, i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_pfhwdev = type { %struct.hinic_hwdev }
%struct.hinic_hwdev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate msg buffers\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to initialize cmd chains\0A\00", align 1
@HINIC_MSG_FROM_MGMT_CPU = common dso_local global i32 0, align 4
@mgmt_msg_aeqe_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_pf_to_mgmt_init(%struct.hinic_pf_to_mgmt* %0, %struct.hinic_hwif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_pf_to_mgmt*, align 8
  %5 = alloca %struct.hinic_hwif*, align 8
  %6 = alloca %struct.hinic_pfhwdev*, align 8
  %7 = alloca %struct.hinic_hwdev*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.hinic_pf_to_mgmt* %0, %struct.hinic_pf_to_mgmt** %4, align 8
  store %struct.hinic_hwif* %1, %struct.hinic_hwif** %5, align 8
  %10 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %4, align 8
  %11 = call %struct.hinic_pfhwdev* @mgmt_to_pfhwdev(%struct.hinic_pf_to_mgmt* %10)
  store %struct.hinic_pfhwdev* %11, %struct.hinic_pfhwdev** %6, align 8
  %12 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %6, align 8
  %13 = getelementptr inbounds %struct.hinic_pfhwdev, %struct.hinic_pfhwdev* %12, i32 0, i32 0
  store %struct.hinic_hwdev* %13, %struct.hinic_hwdev** %7, align 8
  %14 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %15 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %18 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %4, align 8
  %19 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %18, i32 0, i32 3
  store %struct.hinic_hwif* %17, %struct.hinic_hwif** %19, align 8
  %20 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %4, align 8
  %21 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %20, i32 0, i32 2
  %22 = call i32 @sema_init(i32* %21, i32 1)
  %23 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %4, align 8
  %24 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %4, align 8
  %26 = call i32 @alloc_msg_buf(%struct.hinic_pf_to_mgmt* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %54

34:                                               ; preds = %2
  %35 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %4, align 8
  %36 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %39 = call i32 @hinic_api_cmd_init(i32 %37, %struct.hinic_hwif* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %54

47:                                               ; preds = %34
  %48 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %49 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %48, i32 0, i32 0
  %50 = load i32, i32* @HINIC_MSG_FROM_MGMT_CPU, align 4
  %51 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %4, align 8
  %52 = load i32, i32* @mgmt_msg_aeqe_handler, align 4
  %53 = call i32 @hinic_aeq_register_hw_cb(i32* %49, i32 %50, %struct.hinic_pf_to_mgmt* %51, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %42, %29
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.hinic_pfhwdev* @mgmt_to_pfhwdev(%struct.hinic_pf_to_mgmt*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @alloc_msg_buf(%struct.hinic_pf_to_mgmt*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hinic_api_cmd_init(i32, %struct.hinic_hwif*) #1

declare dso_local i32 @hinic_aeq_register_hw_cb(i32*, i32, %struct.hinic_pf_to_mgmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
