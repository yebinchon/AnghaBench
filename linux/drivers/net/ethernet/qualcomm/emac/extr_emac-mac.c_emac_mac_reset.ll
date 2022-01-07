; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i64 }

@EMAC_DMA_MAS_CTRL = common dso_local global i64 0, align 8
@SOFT_RST = common dso_local global i32 0, align 4
@INT_RD_CLR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emac_mac_reset(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %3 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %4 = call i32 @emac_mac_stop(%struct.emac_adapter* %3)
  %5 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @EMAC_DMA_MAS_CTRL, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* @SOFT_RST, align 4
  %11 = call i32 @emac_reg_update32(i64 %9, i32 0, i32 %10)
  %12 = call i32 @usleep_range(i32 100, i32 150)
  %13 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EMAC_DMA_MAS_CTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @INT_RD_CLR_EN, align 4
  %19 = call i32 @emac_reg_update32(i64 %17, i32 0, i32 %18)
  ret void
}

declare dso_local i32 @emac_mac_stop(%struct.emac_adapter*) #1

declare dso_local i32 @emac_reg_update32(i64, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
