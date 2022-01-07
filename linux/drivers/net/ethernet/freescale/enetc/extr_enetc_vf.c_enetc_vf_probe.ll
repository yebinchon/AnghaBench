; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_vf.c_enetc_vf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_vf.c_enetc_vf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.enetc_ndev_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.enetc_si = type { i32* }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"PCI probing failed\0A\00", align 1
@ENETC_MAX_NUM_TXQS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"netdev creation failed\0A\00", align 1
@enetc_ndev_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"SI resource alloc failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"MSIX alloc failed\0A\00", align 1
@probe = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"%s v%s\0A\00", align 1
@enetc_drv_name = common dso_local global i32 0, align 4
@enetc_drv_ver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @enetc_vf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_vf_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.enetc_ndev_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.enetc_si*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @KBUILD_MODNAME, align 4
  %12 = call i32 @enetc_pci_probe(%struct.pci_dev* %10, i32 %11, i32 0)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %90

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call %struct.enetc_si* @pci_get_drvdata(%struct.pci_dev* %21)
  store %struct.enetc_si* %22, %struct.enetc_si** %8, align 8
  %23 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %24 = call i32 @enetc_get_si_caps(%struct.enetc_si* %23)
  %25 = load i32, i32* @ENETC_MAX_NUM_TXQS, align 4
  %26 = call %struct.net_device* @alloc_etherdev_mq(i32 4, i32 %25)
  store %struct.net_device* %26, %struct.net_device** %7, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %86

35:                                               ; preds = %20
  %36 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = call i32 @enetc_vf_netdev_setup(%struct.enetc_si* %36, %struct.net_device* %37, i32* @enetc_ndev_ops)
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %39)
  store %struct.enetc_ndev_priv* %40, %struct.enetc_ndev_priv** %6, align 8
  %41 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %42 = call i32 @enetc_init_si_rings_params(%struct.enetc_ndev_priv* %41)
  %43 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %44 = call i32 @enetc_alloc_si_resources(%struct.enetc_ndev_priv* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %81

51:                                               ; preds = %35
  %52 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %53 = call i32 @enetc_alloc_msix(%struct.enetc_ndev_priv* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %78

60:                                               ; preds = %51
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = call i32 @register_netdev(%struct.net_device* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %75

66:                                               ; preds = %60
  %67 = load %struct.net_device*, %struct.net_device** %7, align 8
  %68 = call i32 @netif_carrier_off(%struct.net_device* %67)
  %69 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %70 = load i32, i32* @probe, align 4
  %71 = load %struct.net_device*, %struct.net_device** %7, align 8
  %72 = load i32, i32* @enetc_drv_name, align 4
  %73 = load i32, i32* @enetc_drv_ver, align 4
  %74 = call i32 @netif_info(%struct.enetc_ndev_priv* %69, i32 %70, %struct.net_device* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %73)
  store i32 0, i32* %3, align 4
  br label %90

75:                                               ; preds = %65
  %76 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %77 = call i32 @enetc_free_msix(%struct.enetc_ndev_priv* %76)
  br label %78

78:                                               ; preds = %75, %56
  %79 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %80 = call i32 @enetc_free_si_resources(%struct.enetc_ndev_priv* %79)
  br label %81

81:                                               ; preds = %78, %47
  %82 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %83 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  %84 = load %struct.net_device*, %struct.net_device** %7, align 8
  %85 = call i32 @free_netdev(%struct.net_device* %84)
  br label %86

86:                                               ; preds = %81, %29
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = call i32 @enetc_pci_remove(%struct.pci_dev* %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %66, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @enetc_pci_probe(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.enetc_si* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @enetc_get_si_caps(%struct.enetc_si*) #1

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @enetc_vf_netdev_setup(%struct.enetc_si*, %struct.net_device*, i32*) #1

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enetc_init_si_rings_params(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_alloc_si_resources(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_alloc_msix(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.enetc_ndev_priv*, i32, %struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @enetc_free_msix(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_free_si_resources(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @enetc_pci_remove(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
