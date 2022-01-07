; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_clean_pcie_ring_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_clean_pcie_ring_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32, i32 }

@PCIE_CPU_INT_EVENT = common dso_local global i32 0, align 4
@CPU_INTR_DNLD_RDY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to assert dnld-rdy interrupt.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_clean_pcie_ring_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_clean_pcie_ring_buf(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %5 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %5, i32 0, i32 0
  %7 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  store %struct.pcie_service_card* %7, %struct.pcie_service_card** %4, align 8
  %8 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %10 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mwifiex_pcie_txbd_empty(%struct.pcie_service_card* %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %16 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %18 = load i32, i32* @PCIE_CPU_INT_EVENT, align 4
  %19 = load i32, i32* @CPU_INTR_DNLD_RDY, align 4
  %20 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %24 = load i32, i32* @ERROR, align 4
  %25 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %23, i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %28

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @mwifiex_pcie_txbd_empty(%struct.pcie_service_card*, i32) #1

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
