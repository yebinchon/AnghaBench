; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_msg_to_mgmt_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_msg_to_mgmt_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pf_to_mgmt = type { i32, %struct.hinic_recv_msg, %struct.hinic_hwif* }
%struct.hinic_recv_msg = type { i64, i64, i32, %struct.completion }
%struct.completion = type { i32 }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@MSG_NOT_RESP = common dso_local global i64 0, align 8
@MSG_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to send sync msg to mgmt\0A\00", align 1
@MGMT_MSG_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MGMT timeout, MSG id = %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"incorrect MSG for id = %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@MAX_PF_MGMT_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_pf_to_mgmt*, i32, i32, i32*, i64, i32*, i64*, i32, i64)* @msg_to_mgmt_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_to_mgmt_sync(%struct.hinic_pf_to_mgmt* %0, i32 %1, i32 %2, i32* %3, i64 %4, i32* %5, i64* %6, i32 %7, i64 %8) #0 {
  %10 = alloca %struct.hinic_pf_to_mgmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.hinic_hwif*, align 8
  %20 = alloca %struct.pci_dev*, align 8
  %21 = alloca %struct.hinic_recv_msg*, align 8
  %22 = alloca %struct.completion*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.hinic_pf_to_mgmt* %0, %struct.hinic_pf_to_mgmt** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32 %7, i32* %17, align 4
  store i64 %8, i64* %18, align 8
  %25 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %10, align 8
  %26 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %25, i32 0, i32 2
  %27 = load %struct.hinic_hwif*, %struct.hinic_hwif** %26, align 8
  store %struct.hinic_hwif* %27, %struct.hinic_hwif** %19, align 8
  %28 = load %struct.hinic_hwif*, %struct.hinic_hwif** %19, align 8
  %29 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %28, i32 0, i32 0
  %30 = load %struct.pci_dev*, %struct.pci_dev** %29, align 8
  store %struct.pci_dev* %30, %struct.pci_dev** %20, align 8
  %31 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %10, align 8
  %32 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %31, i32 0, i32 0
  %33 = call i32 @down(i32* %32)
  %34 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %10, align 8
  %35 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %34, i32 0, i32 1
  store %struct.hinic_recv_msg* %35, %struct.hinic_recv_msg** %21, align 8
  %36 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %21, align 8
  %37 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %36, i32 0, i32 3
  store %struct.completion* %37, %struct.completion** %22, align 8
  %38 = load i64, i64* %18, align 8
  %39 = load i64, i64* @MSG_NOT_RESP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %9
  %42 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %10, align 8
  %43 = call i64 @SYNC_MSG_ID(%struct.hinic_pf_to_mgmt* %42)
  store i64 %43, i64* %23, align 8
  br label %46

44:                                               ; preds = %9
  %45 = load i64, i64* %18, align 8
  store i64 %45, i64* %23, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load %struct.completion*, %struct.completion** %22, align 8
  %48 = call i32 @init_completion(%struct.completion* %47)
  %49 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* @MSG_ACK, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i64, i64* %18, align 8
  %57 = call i32 @send_msg_to_mgmt(%struct.hinic_pf_to_mgmt* %49, i32 %50, i32 %51, i32* %52, i64 %53, i32 %54, i32 %55, i64 %56)
  store i32 %57, i32* %24, align 4
  %58 = load i32, i32* %24, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %113

64:                                               ; preds = %46
  %65 = load %struct.completion*, %struct.completion** %22, align 8
  %66 = load i32, i32* @MGMT_MSG_TIMEOUT, align 4
  %67 = call i32 @wait_for_completion_timeout(%struct.completion* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %23, align 8
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %24, align 4
  br label %113

76:                                               ; preds = %64
  %77 = call i32 (...) @smp_rmb()
  %78 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %21, align 8
  %79 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %23, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load i64, i64* %23, align 8
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @EFAULT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %24, align 4
  br label %113

90:                                               ; preds = %76
  %91 = load i32*, i32** %15, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %21, align 8
  %95 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MAX_PF_MGMT_BUF_SIZE, align 8
  %98 = icmp sle i64 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load i32*, i32** %15, align 8
  %101 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %21, align 8
  %102 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %21, align 8
  %105 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @memcpy(i32* %100, i32 %103, i64 %106)
  %108 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %21, align 8
  %109 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %16, align 8
  store i64 %110, i64* %111, align 8
  br label %112

112:                                              ; preds = %99, %93, %90
  br label %113

113:                                              ; preds = %112, %83, %69, %60
  %114 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %10, align 8
  %115 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %114, i32 0, i32 0
  %116 = call i32 @up(i32* %115)
  %117 = load i32, i32* %24, align 4
  ret i32 %117
}

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @SYNC_MSG_ID(%struct.hinic_pf_to_mgmt*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @send_msg_to_mgmt(%struct.hinic_pf_to_mgmt*, i32, i32, i32*, i64, i32, i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
