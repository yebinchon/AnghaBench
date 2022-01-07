; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_tgl_sgmii_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_tgl_sgmii_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i64 }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.plat_stmmacenet_data*)* @tgl_sgmii_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgl_sgmii_data(%struct.pci_dev* %0, %struct.plat_stmmacenet_data* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.plat_stmmacenet_data* %1, %struct.plat_stmmacenet_data** %4, align 8
  %5 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %10 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %11 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %14 = call i32 @tgl_common_data(%struct.pci_dev* %12, %struct.plat_stmmacenet_data* %13)
  ret i32 %14
}

declare dso_local i32 @tgl_common_data(%struct.pci_dev*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
