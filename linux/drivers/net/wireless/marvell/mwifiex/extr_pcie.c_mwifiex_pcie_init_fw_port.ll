; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_init_fw_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_init_fw_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"RECV DATA: failed to write reg->rx_rdptr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_init_fw_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_init_fw_port(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 0
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %8, align 8
  store %struct.pcie_service_card* %9, %struct.pcie_service_card** %4, align 8
  %10 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %11 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %12, align 8
  store %struct.mwifiex_pcie_card_reg* %13, %struct.mwifiex_pcie_card_reg** %5, align 8
  %14 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %15 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %18 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %22 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %23 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %26 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %21, i32 %24, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %34 = load i32, i32* @ERROR, align 4
  %35 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %33, i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %37

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
