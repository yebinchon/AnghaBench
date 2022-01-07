; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.enetc_si = type { i32 }
%struct.enetc_pf = type { i64 }
%struct.enetc_ndev_priv = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s v%s remove\0A\00", align 1
@enetc_drv_name = common dso_local global i32 0, align 4
@enetc_drv_ver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @enetc_pf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_pf_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.enetc_si*, align 8
  %4 = alloca %struct.enetc_pf*, align 8
  %5 = alloca %struct.enetc_ndev_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.enetc_si* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.enetc_si* %7, %struct.enetc_si** %3, align 8
  %8 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %9 = call %struct.enetc_pf* @enetc_si_priv(%struct.enetc_si* %8)
  store %struct.enetc_pf* %9, %struct.enetc_pf** %4, align 8
  %10 = load %struct.enetc_pf*, %struct.enetc_pf** %4, align 8
  %11 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @enetc_sriov_configure(%struct.pci_dev* %15, i32 0)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %19 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.enetc_ndev_priv* @netdev_priv(i32 %20)
  store %struct.enetc_ndev_priv* %21, %struct.enetc_ndev_priv** %5, align 8
  %22 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %23 = load i32, i32* @drv, align 4
  %24 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %25 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @enetc_drv_name, align 4
  %28 = load i32, i32* @enetc_drv_ver, align 4
  %29 = call i32 @netif_info(%struct.enetc_ndev_priv* %22, i32 %23, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %31 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @unregister_netdev(i32 %32)
  %34 = load %struct.enetc_pf*, %struct.enetc_pf** %4, align 8
  %35 = call i32 @enetc_mdio_remove(%struct.enetc_pf* %34)
  %36 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %37 = call i32 @enetc_of_put_phy(%struct.enetc_ndev_priv* %36)
  %38 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %39 = call i32 @enetc_free_msix(%struct.enetc_ndev_priv* %38)
  %40 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %41 = call i32 @enetc_free_si_resources(%struct.enetc_ndev_priv* %40)
  %42 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %43 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @free_netdev(i32 %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = call i32 @enetc_pci_remove(%struct.pci_dev* %46)
  ret void
}

declare dso_local %struct.enetc_si* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.enetc_pf* @enetc_si_priv(%struct.enetc_si*) #1

declare dso_local i32 @enetc_sriov_configure(%struct.pci_dev*, i32) #1

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(i32) #1

declare dso_local i32 @netif_info(%struct.enetc_ndev_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @enetc_mdio_remove(%struct.enetc_pf*) #1

declare dso_local i32 @enetc_of_put_phy(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_free_msix(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_free_si_resources(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @enetc_pci_remove(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
