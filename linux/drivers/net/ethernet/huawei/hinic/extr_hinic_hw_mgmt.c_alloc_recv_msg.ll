; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_alloc_recv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_alloc_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pf_to_mgmt = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_recv_msg = type { i8*, i8* }

@MAX_PF_MGMT_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_pf_to_mgmt*, %struct.hinic_recv_msg*)* @alloc_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_recv_msg(%struct.hinic_pf_to_mgmt* %0, %struct.hinic_recv_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_pf_to_mgmt*, align 8
  %5 = alloca %struct.hinic_recv_msg*, align 8
  %6 = alloca %struct.hinic_hwif*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.hinic_pf_to_mgmt* %0, %struct.hinic_pf_to_mgmt** %4, align 8
  store %struct.hinic_recv_msg* %1, %struct.hinic_recv_msg** %5, align 8
  %8 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %4, align 8
  %9 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %8, i32 0, i32 0
  %10 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  store %struct.hinic_hwif* %10, %struct.hinic_hwif** %6, align 8
  %11 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %12 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* @MAX_PF_MGMT_BUF_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @devm_kzalloc(i32* %15, i32 %16, i32 %17)
  %19 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %5, align 8
  %20 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %5, align 8
  %22 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %2
  %29 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* @MAX_PF_MGMT_BUF_SIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @devm_kzalloc(i32* %30, i32 %31, i32 %32)
  %34 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %5, align 8
  %35 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %5, align 8
  %37 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40, %25
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
