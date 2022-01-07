; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_check_winner_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_check_winner_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PCI-E is the winner\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"PCI-E is not the winner <%#x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_check_winner_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_check_winner_status(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcie_service_card*, align 8
  %6 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 1
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %8, align 8
  store %struct.pcie_service_card* %9, %struct.pcie_service_card** %5, align 8
  %10 = load %struct.pcie_service_card*, %struct.pcie_service_card** %5, align 8
  %11 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %12, align 8
  store %struct.mwifiex_pcie_card_reg* %13, %struct.mwifiex_pcie_card_reg** %6, align 8
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %15 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %16 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %14, i32 %17, i64* %3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %26 = load i32, i32* @INFO, align 4
  %27 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %25, i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i64, i64* %3, align 8
  %34 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %31, i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %30, %24
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i64*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
