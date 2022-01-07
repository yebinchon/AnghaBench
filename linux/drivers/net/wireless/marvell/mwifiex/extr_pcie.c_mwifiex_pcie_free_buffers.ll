; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_pcie_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_pcie_free_buffers(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.pcie_service_card*, align 8
  %4 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %5 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %5, i32 0, i32 0
  %7 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  store %struct.pcie_service_card* %7, %struct.pcie_service_card** %3, align 8
  %8 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %9 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %10, align 8
  store %struct.mwifiex_pcie_card_reg* %11, %struct.mwifiex_pcie_card_reg** %4, align 8
  %12 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %13 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %18 = call i32 @mwifiex_pcie_delete_sleep_cookie_buf(%struct.mwifiex_adapter* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %21 = call i32 @mwifiex_pcie_delete_cmdrsp_buf(%struct.mwifiex_adapter* %20)
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = call i32 @mwifiex_pcie_delete_evtbd_ring(%struct.mwifiex_adapter* %22)
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %25 = call i32 @mwifiex_pcie_delete_rxbd_ring(%struct.mwifiex_adapter* %24)
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %27 = call i32 @mwifiex_pcie_delete_txbd_ring(%struct.mwifiex_adapter* %26)
  ret void
}

declare dso_local i32 @mwifiex_pcie_delete_sleep_cookie_buf(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_delete_cmdrsp_buf(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_delete_evtbd_ring(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_delete_rxbd_ring(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_delete_txbd_ring(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
