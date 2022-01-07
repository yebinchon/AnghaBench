; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_hinic_msg_to_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_hinic_msg_to_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pf_to_mgmt = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@HINIC_MGMT_MSG_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid MGMT msg type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid MGMT msg buffer size\0A\00", align 1
@MGMT_DIRECT_SEND = common dso_local global i32 0, align 4
@MSG_NOT_RESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_msg_to_mgmt(%struct.hinic_pf_to_mgmt* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.hinic_pf_to_mgmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.hinic_hwif*, align 8
  %19 = alloca %struct.pci_dev*, align 8
  store %struct.hinic_pf_to_mgmt* %0, %struct.hinic_pf_to_mgmt** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %10, align 8
  %21 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %20, i32 0, i32 0
  %22 = load %struct.hinic_hwif*, %struct.hinic_hwif** %21, align 8
  store %struct.hinic_hwif* %22, %struct.hinic_hwif** %18, align 8
  %23 = load %struct.hinic_hwif*, %struct.hinic_hwif** %18, align 8
  %24 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  store %struct.pci_dev* %25, %struct.pci_dev** %19, align 8
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* @HINIC_MGMT_MSG_SYNC, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %56

35:                                               ; preds = %8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @MSG_SZ_IS_VALID(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %56

45:                                               ; preds = %35
  %46 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i8*, i8** %15, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* @MGMT_DIRECT_SEND, align 4
  %54 = load i32, i32* @MSG_NOT_RESP, align 4
  %55 = call i32 @msg_to_mgmt_sync(%struct.hinic_pf_to_mgmt* %46, i32 %47, i32 %48, i8* %49, i32 %50, i8* %51, i32* %52, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %45, %39, %29
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @MSG_SZ_IS_VALID(i32) #1

declare dso_local i32 @msg_to_mgmt_sync(%struct.hinic_pf_to_mgmt*, i32, i32, i8*, i32, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
