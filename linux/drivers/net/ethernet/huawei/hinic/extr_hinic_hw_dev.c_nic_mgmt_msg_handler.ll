; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_nic_mgmt_msg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_nic_mgmt_msg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pfhwdev = type { %struct.hinic_nic_cb*, %struct.hinic_hwdev }
%struct.hinic_nic_cb = type { i32, i32, i32 (i32, i8*, i32, i8*, i32*)* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@HINIC_MGMT_MSG_CMD_BASE = common dso_local global i64 0, align 8
@HINIC_MGMT_MSG_CMD_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"unknown L2NIC event, cmd = %d\0A\00", align 1
@HINIC_CB_ENABLED = common dso_local global i32 0, align 4
@HINIC_CB_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unhandled NIC Event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i32, i8*, i32*)* @nic_mgmt_msg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_mgmt_msg_handler(i8* %0, i64 %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hinic_pfhwdev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hinic_nic_cb*, align 8
  %16 = alloca %struct.hinic_hwdev*, align 8
  %17 = alloca %struct.hinic_hwif*, align 8
  %18 = alloca %struct.pci_dev*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.hinic_pfhwdev*
  store %struct.hinic_pfhwdev* %21, %struct.hinic_pfhwdev** %13, align 8
  %22 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %13, align 8
  %23 = getelementptr inbounds %struct.hinic_pfhwdev, %struct.hinic_pfhwdev* %22, i32 0, i32 1
  store %struct.hinic_hwdev* %23, %struct.hinic_hwdev** %16, align 8
  %24 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %16, align 8
  %25 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %24, i32 0, i32 0
  %26 = load %struct.hinic_hwif*, %struct.hinic_hwif** %25, align 8
  store %struct.hinic_hwif* %26, %struct.hinic_hwif** %17, align 8
  %27 = load %struct.hinic_hwif*, %struct.hinic_hwif** %17, align 8
  %28 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %18, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @HINIC_MGMT_MSG_CMD_BASE, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %6
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @HINIC_MGMT_MSG_CMD_MAX, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33, %6
  %38 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %90

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @HINIC_MGMT_MSG_CMD_BASE, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %19, align 8
  %46 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %13, align 8
  %47 = getelementptr inbounds %struct.hinic_pfhwdev, %struct.hinic_pfhwdev* %46, i32 0, i32 0
  %48 = load %struct.hinic_nic_cb*, %struct.hinic_nic_cb** %47, align 8
  %49 = load i64, i64* %19, align 8
  %50 = getelementptr inbounds %struct.hinic_nic_cb, %struct.hinic_nic_cb* %48, i64 %49
  store %struct.hinic_nic_cb* %50, %struct.hinic_nic_cb** %15, align 8
  %51 = load %struct.hinic_nic_cb*, %struct.hinic_nic_cb** %15, align 8
  %52 = getelementptr inbounds %struct.hinic_nic_cb, %struct.hinic_nic_cb* %51, i32 0, i32 0
  %53 = load i32, i32* @HINIC_CB_ENABLED, align 4
  %54 = load i32, i32* @HINIC_CB_ENABLED, align 4
  %55 = load i32, i32* @HINIC_CB_RUNNING, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @cmpxchg(i32* %52, i32 %53, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @HINIC_CB_ENABLED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %42
  %62 = load %struct.hinic_nic_cb*, %struct.hinic_nic_cb** %15, align 8
  %63 = getelementptr inbounds %struct.hinic_nic_cb, %struct.hinic_nic_cb* %62, i32 0, i32 2
  %64 = load i32 (i32, i8*, i32, i8*, i32*)*, i32 (i32, i8*, i32, i8*, i32*)** %63, align 8
  %65 = icmp ne i32 (i32, i8*, i32, i8*, i32*)* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.hinic_nic_cb*, %struct.hinic_nic_cb** %15, align 8
  %68 = getelementptr inbounds %struct.hinic_nic_cb, %struct.hinic_nic_cb* %67, i32 0, i32 2
  %69 = load i32 (i32, i8*, i32, i8*, i32*)*, i32 (i32, i8*, i32, i8*, i32*)** %68, align 8
  %70 = load %struct.hinic_nic_cb*, %struct.hinic_nic_cb** %15, align 8
  %71 = getelementptr inbounds %struct.hinic_nic_cb, %struct.hinic_nic_cb* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 %69(i32 %72, i8* %73, i32 %74, i8* %75, i32* %76)
  br label %83

78:                                               ; preds = %61, %42
  %79 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %78, %66
  %84 = load i32, i32* @HINIC_CB_RUNNING, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.hinic_nic_cb*, %struct.hinic_nic_cb** %15, align 8
  %87 = getelementptr inbounds %struct.hinic_nic_cb, %struct.hinic_nic_cb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %83, %37
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
