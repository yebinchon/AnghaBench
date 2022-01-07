; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_wait_for_db_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_wait_for_db_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@DB_STATE_TIMEOUT = common dso_local global i32 0, align 4
@HINIC_DB_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Wait for DB - Timeout\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_hwdev*)* @wait_for_db_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_db_state(%struct.hinic_hwdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_hwdev*, align 8
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hinic_hwdev* %0, %struct.hinic_hwdev** %3, align 8
  %8 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %9 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %8, i32 0, i32 0
  %10 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  store %struct.hinic_hwif* %10, %struct.hinic_hwif** %4, align 8
  %11 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %12 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i32, i32* @DB_STATE_TIMEOUT, align 4
  %16 = call i64 @msecs_to_jiffies(i32 %15)
  %17 = add i64 %14, %16
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %27, %1
  %19 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %20 = call i32 @hinic_db_state_get(%struct.hinic_hwif* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @HINIC_DB_ENABLE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %38

25:                                               ; preds = %18
  %26 = call i32 @msleep(i32 20)
  br label %27

27:                                               ; preds = %25
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @time_before(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %18, label %32

32:                                               ; preds = %27
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %32, %24
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @hinic_db_state_get(%struct.hinic_hwif*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
