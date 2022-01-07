; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_quark_default_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_quark_default_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.plat_stmmacenet_data = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@quark_pci_dmi = common dso_local global i32 0, align 4
@DMI_BOARD_NAME = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.plat_stmmacenet_data*)* @quark_default_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quark_default_data(%struct.pci_dev* %0, %struct.plat_stmmacenet_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.plat_stmmacenet_data*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.plat_stmmacenet_data* %1, %struct.plat_stmmacenet_data** %5, align 8
  %7 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %8 = call i32 @common_default_data(%struct.plat_stmmacenet_data* %7)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @quark_pci_dmi, align 4
  %11 = call i32 @stmmac_pci_find_phy_addr(%struct.pci_dev* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @DMI_BOARD_NAME, align 4
  %16 = call i64 @dmi_get_system_info(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_dev_id(%struct.pci_dev* %22)
  %24 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %25 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %28 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @PHY_INTERFACE_MODE_RMII, align 4
  %30 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %31 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %33 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 16, i32* %35, align 4
  %36 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %37 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %41 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %21, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @common_default_data(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @stmmac_pci_find_phy_addr(%struct.pci_dev*, i32) #1

declare dso_local i64 @dmi_get_system_info(i32) #1

declare dso_local i32 @pci_dev_id(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
