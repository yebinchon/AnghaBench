; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmac_flowctl_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmac_flowctl_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_enet_pdata*, i32)* }

@TX_FLOW_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*, i32)* @xgene_sgmac_flowctl_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_sgmac_flowctl_tx(%struct.xgene_enet_pdata* %0, i32 %1) #0 {
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %6 = load i32, i32* @TX_FLOW_EN, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @xgene_sgmac_rxtx(%struct.xgene_enet_pdata* %5, i32 %6, i32 %7)
  %9 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %10 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.xgene_enet_pdata*, i32)*, i32 (%struct.xgene_enet_pdata*, i32)** %12, align 8
  %14 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 %13(%struct.xgene_enet_pdata* %14, i32 %15)
  ret void
}

declare dso_local i32 @xgene_sgmac_rxtx(%struct.xgene_enet_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
