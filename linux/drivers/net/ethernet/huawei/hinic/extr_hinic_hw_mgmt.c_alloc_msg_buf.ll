; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_alloc_msg_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_alloc_msg_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pf_to_mgmt = type { i32, i32, i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate recv msg\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate resp recv msg\0A\00", align 1
@MAX_PF_MGMT_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_pf_to_mgmt*)* @alloc_msg_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_msg_buf(%struct.hinic_pf_to_mgmt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_pf_to_mgmt*, align 8
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.hinic_pf_to_mgmt* %0, %struct.hinic_pf_to_mgmt** %3, align 8
  %7 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %3, align 8
  %8 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %7, i32 0, i32 3
  %9 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  store %struct.hinic_hwif* %9, %struct.hinic_hwif** %4, align 8
  %10 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %11 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %3, align 8
  %14 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %3, align 8
  %15 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %14, i32 0, i32 2
  %16 = call i32 @alloc_recv_msg(%struct.hinic_pf_to_mgmt* %13, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %1
  %25 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %3, align 8
  %26 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %3, align 8
  %27 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %26, i32 0, i32 1
  %28 = call i32 @alloc_recv_msg(%struct.hinic_pf_to_mgmt* %25, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %24
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* @MAX_PF_MGMT_BUF_SIZE, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @devm_kzalloc(i32* %38, i32 %39, i32 %40)
  %42 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %3, align 8
  %43 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %3, align 8
  %45 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48, %31, %19
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @alloc_recv_msg(%struct.hinic_pf_to_mgmt*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_kzalloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
