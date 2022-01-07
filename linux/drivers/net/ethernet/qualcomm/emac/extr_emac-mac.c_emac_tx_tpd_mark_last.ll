; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tx_tpd_mark_last.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tx_tpd_mark_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32 }
%struct.emac_tx_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EMAC_TPD_LAST_FRAGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*, %struct.emac_tx_queue*)* @emac_tx_tpd_mark_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_tx_tpd_mark_last(%struct.emac_adapter* %0, %struct.emac_tx_queue* %1) #0 {
  %3 = alloca %struct.emac_adapter*, align 8
  %4 = alloca %struct.emac_tx_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %3, align 8
  store %struct.emac_tx_queue* %1, %struct.emac_tx_queue** %4, align 8
  %7 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %8 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %12 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @EMAC_TPD(%struct.emac_tx_queue* %7, i32 %10, i32 %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @EMAC_TPD_LAST_FRAGMENT, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32* @EMAC_TPD(%struct.emac_tx_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
