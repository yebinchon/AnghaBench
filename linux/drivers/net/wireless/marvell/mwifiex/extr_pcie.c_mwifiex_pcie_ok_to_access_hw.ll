; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_ok_to_access_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_ok_to_access_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"info: ACCESS_HW: sleep cookie=0x%x\0A\00", align 1
@FW_AWAKE_COOKIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_ok_to_access_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pcie_service_card*, align 8
  %6 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 0
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %8, align 8
  store %struct.pcie_service_card* %9, %struct.pcie_service_card** %5, align 8
  %10 = load %struct.pcie_service_card*, %struct.pcie_service_card** %5, align 8
  %11 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %12, align 8
  store %struct.mwifiex_pcie_card_reg* %13, %struct.mwifiex_pcie_card_reg** %6, align 8
  %14 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %15 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.pcie_service_card*, %struct.pcie_service_card** %5, align 8
  %21 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.pcie_service_card*, %struct.pcie_service_card** %5, align 8
  %26 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @get_unaligned_le32(i64 %27)
  store i64 %28, i64* %4, align 8
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %30 = load i32, i32* @INFO, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %29, i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @FW_AWAKE_COOKIE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %39

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %19
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %36, %18
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @get_unaligned_le32(i64) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
