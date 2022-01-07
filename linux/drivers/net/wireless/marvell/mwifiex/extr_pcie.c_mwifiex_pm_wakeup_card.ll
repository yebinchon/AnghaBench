; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pm_wakeup_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pm_wakeup_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i64, i32 }

@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"event: Wakeup device...\0A\00", align 1
@FIRMWARE_READY_PCIE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Writing fw_status register failed\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"PCIE wakeup: Setting PS_STATE_AWAKE\0A\00", align 1
@PS_STATE_AWAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pm_wakeup_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pm_wakeup_card(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 1
  %8 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  store %struct.pcie_service_card* %8, %struct.pcie_service_card** %4, align 8
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %10 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %11, align 8
  store %struct.mwifiex_pcie_card_reg* %12, %struct.mwifiex_pcie_card_reg** %5, align 8
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %14 = load i32, i32* @EVENT, align 4
  %15 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %13, i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %17 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %22 = call i32 @mwifiex_pcie_dev_wakeup_delay(%struct.mwifiex_adapter* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %25 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %26 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FIRMWARE_READY_PCIE, align 4
  %29 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %24, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %32, i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

35:                                               ; preds = %23
  %36 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %37 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %42 = call i32 @mwifiex_pcie_dev_wakeup_delay(%struct.mwifiex_adapter* %41)
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %44 = load i32, i32* @INFO, align 4
  %45 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %43, i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @PS_STATE_AWAKE, align 4
  %47 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %40, %35
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_pcie_dev_wakeup_delay(%struct.mwifiex_adapter*) #1

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
