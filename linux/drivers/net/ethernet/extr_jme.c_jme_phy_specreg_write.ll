; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_phy_specreg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_phy_specreg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@JM_PHY_SPEC_REG_WRITE = common dso_local global i32 0, align 4
@JM_PHY_SPEC_DATA_REG = common dso_local global i32 0, align 4
@JM_PHY_SPEC_ADDR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*, i32, i32)* @jme_phy_specreg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_phy_specreg_write(%struct.jme_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @JM_PHY_SPEC_REG_WRITE, align 4
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @JM_PHY_SPEC_DATA_REG, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @jme_mdio_write(i32 %13, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @JM_PHY_SPEC_ADDR_REG, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @jme_mdio_write(i32 %23, i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @jme_mdio_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
