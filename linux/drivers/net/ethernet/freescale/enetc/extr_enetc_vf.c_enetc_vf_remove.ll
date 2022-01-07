; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_vf.c_enetc_vf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_vf.c_enetc_vf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.enetc_si = type { i32 }
%struct.enetc_ndev_priv = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s v%s remove\0A\00", align 1
@enetc_drv_name = common dso_local global i32 0, align 4
@enetc_drv_ver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @enetc_vf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_vf_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.enetc_si*, align 8
  %4 = alloca %struct.enetc_ndev_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.enetc_si* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.enetc_si* %6, %struct.enetc_si** %3, align 8
  %7 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %8 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.enetc_ndev_priv* @netdev_priv(i32 %9)
  store %struct.enetc_ndev_priv* %10, %struct.enetc_ndev_priv** %4, align 8
  %11 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %12 = load i32, i32* @drv, align 4
  %13 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %14 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @enetc_drv_name, align 4
  %17 = load i32, i32* @enetc_drv_ver, align 4
  %18 = call i32 @netif_info(%struct.enetc_ndev_priv* %11, i32 %12, i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %20 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @unregister_netdev(i32 %21)
  %23 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %24 = call i32 @enetc_free_msix(%struct.enetc_ndev_priv* %23)
  %25 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %4, align 8
  %26 = call i32 @enetc_free_si_resources(%struct.enetc_ndev_priv* %25)
  %27 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %28 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @free_netdev(i32 %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = call i32 @enetc_pci_remove(%struct.pci_dev* %31)
  ret void
}

declare dso_local %struct.enetc_si* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(i32) #1

declare dso_local i32 @netif_info(%struct.enetc_ndev_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @unregister_netdev(i32) #1

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
