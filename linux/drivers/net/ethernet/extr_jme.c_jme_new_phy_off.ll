; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_new_phy_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_new_phy_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@JME_PHY_PWR = common dso_local global i32 0, align 4
@PHY_PWR_DWN1SEL = common dso_local global i32 0, align 4
@PHY_PWR_DWN1SW = common dso_local global i32 0, align 4
@PHY_PWR_DWN2 = common dso_local global i32 0, align 4
@PHY_PWR_CLKSEL = common dso_local global i32 0, align 4
@PCI_PRIV_PE1 = common dso_local global i32 0, align 4
@PE1_GPREG0_PBG = common dso_local global i32 0, align 4
@PE1_GPREG0_PDD3COLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_new_phy_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_new_phy_off(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %4 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %5 = load i32, i32* @JME_PHY_PWR, align 4
  %6 = call i32 @jread32(%struct.jme_adapter* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @PHY_PWR_DWN1SEL, align 4
  %8 = load i32, i32* @PHY_PWR_DWN1SW, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PHY_PWR_DWN2, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PHY_PWR_CLKSEL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %17 = load i32, i32* @JME_PHY_PWR, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @jwrite32(%struct.jme_adapter* %16, i32 %17, i32 %18)
  %20 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PCI_PRIV_PE1, align 4
  %24 = call i32 @pci_read_config_dword(i32 %22, i32 %23, i32* %3)
  %25 = load i32, i32* @PE1_GPREG0_PBG, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @PE1_GPREG0_PDD3COLD, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PCI_PRIV_PE1, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @pci_write_config_dword(i32 %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
