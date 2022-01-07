; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.pci_device_id = type { i32 }
%struct.enetc_ndev_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.enetc_si = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.enetc_pf = type { i32, %struct.enetc_si* }

@.str = private unnamed_addr constant [30 x i8] c"device is disabled, skipping\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"PCI probing failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"could not map PF space, probing a VF?\0A\00", align 1
@ENETC_MAX_NUM_TXQS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"netdev creation failed\0A\00", align 1
@enetc_ndev_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"SI resource alloc failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"MSIX alloc failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Fallback to PHY-less operation\0A\00", align 1
@probe = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"%s v%s\0A\00", align 1
@enetc_drv_name = common dso_local global i32 0, align 4
@enetc_drv_ver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @enetc_pf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_pf_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.enetc_ndev_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.enetc_si*, align 8
  %9 = alloca %struct.enetc_pf*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @of_device_is_available(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @dev_info(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %151

29:                                               ; preds = %16, %2
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load i32, i32* @KBUILD_MODNAME, align 4
  %32 = call i32 @enetc_pci_probe(%struct.pci_dev* %30, i32 %31, i32 16)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.TYPE_6__* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %151

40:                                               ; preds = %29
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call %struct.enetc_si* @pci_get_drvdata(%struct.pci_dev* %41)
  store %struct.enetc_si* %42, %struct.enetc_si** %8, align 8
  %43 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %44 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %50 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48, %40
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_6__* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %147

60:                                               ; preds = %48
  %61 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %62 = call %struct.enetc_pf* @enetc_si_priv(%struct.enetc_si* %61)
  store %struct.enetc_pf* %62, %struct.enetc_pf** %9, align 8
  %63 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %64 = load %struct.enetc_pf*, %struct.enetc_pf** %9, align 8
  %65 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %64, i32 0, i32 1
  store %struct.enetc_si* %63, %struct.enetc_si** %65, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %66)
  %68 = load %struct.enetc_pf*, %struct.enetc_pf** %9, align 8
  %69 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.enetc_pf*, %struct.enetc_pf** %9, align 8
  %71 = call i32 @enetc_configure_port(%struct.enetc_pf* %70)
  %72 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %73 = call i32 @enetc_get_si_caps(%struct.enetc_si* %72)
  %74 = load i32, i32* @ENETC_MAX_NUM_TXQS, align 4
  %75 = call %struct.net_device* @alloc_etherdev_mq(i32 4, i32 %74)
  store %struct.net_device* %75, %struct.net_device** %7, align 8
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = icmp ne %struct.net_device* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %60
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = call i32 @dev_err(%struct.TYPE_6__* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %146

84:                                               ; preds = %60
  %85 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %86 = load %struct.net_device*, %struct.net_device** %7, align 8
  %87 = call i32 @enetc_pf_netdev_setup(%struct.enetc_si* %85, %struct.net_device* %86, i32* @enetc_ndev_ops)
  %88 = load %struct.net_device*, %struct.net_device** %7, align 8
  %89 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %88)
  store %struct.enetc_ndev_priv* %89, %struct.enetc_ndev_priv** %6, align 8
  %90 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %91 = call i32 @enetc_init_si_rings_params(%struct.enetc_ndev_priv* %90)
  %92 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %93 = call i32 @enetc_alloc_si_resources(%struct.enetc_ndev_priv* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = call i32 @dev_err(%struct.TYPE_6__* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %141

100:                                              ; preds = %84
  %101 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %102 = call i32 @enetc_alloc_msix(%struct.enetc_ndev_priv* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 0
  %108 = call i32 @dev_err(%struct.TYPE_6__* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %138

109:                                              ; preds = %100
  %110 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %111 = call i32 @enetc_of_get_phy(%struct.enetc_ndev_priv* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 0
  %117 = call i32 @dev_warn(%struct.TYPE_6__* %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.net_device*, %struct.net_device** %7, align 8
  %120 = call i32 @register_netdev(%struct.net_device* %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %133

124:                                              ; preds = %118
  %125 = load %struct.net_device*, %struct.net_device** %7, align 8
  %126 = call i32 @netif_carrier_off(%struct.net_device* %125)
  %127 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %128 = load i32, i32* @probe, align 4
  %129 = load %struct.net_device*, %struct.net_device** %7, align 8
  %130 = load i32, i32* @enetc_drv_name, align 4
  %131 = load i32, i32* @enetc_drv_ver, align 4
  %132 = call i32 @netif_info(%struct.enetc_ndev_priv* %127, i32 %128, %struct.net_device* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %130, i32 %131)
  store i32 0, i32* %3, align 4
  br label %151

133:                                              ; preds = %123
  %134 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %135 = call i32 @enetc_of_put_phy(%struct.enetc_ndev_priv* %134)
  %136 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %137 = call i32 @enetc_free_msix(%struct.enetc_ndev_priv* %136)
  br label %138

138:                                              ; preds = %133, %105
  %139 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %140 = call i32 @enetc_free_si_resources(%struct.enetc_ndev_priv* %139)
  br label %141

141:                                              ; preds = %138, %96
  %142 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %143 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %142, i32 0, i32 0
  store i32* null, i32** %143, align 8
  %144 = load %struct.net_device*, %struct.net_device** %7, align 8
  %145 = call i32 @free_netdev(%struct.net_device* %144)
  br label %146

146:                                              ; preds = %141, %78
  br label %147

147:                                              ; preds = %146, %54
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = call i32 @enetc_pci_remove(%struct.pci_dev* %148)
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %124, %35, %23
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @of_device_is_available(i64) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @enetc_pci_probe(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.enetc_si* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.enetc_pf* @enetc_si_priv(%struct.enetc_si*) #1

declare dso_local i32 @pci_sriov_get_totalvfs(%struct.pci_dev*) #1

declare dso_local i32 @enetc_configure_port(%struct.enetc_pf*) #1

declare dso_local i32 @enetc_get_si_caps(%struct.enetc_si*) #1

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @enetc_pf_netdev_setup(%struct.enetc_si*, %struct.net_device*, i32*) #1

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enetc_init_si_rings_params(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_alloc_si_resources(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_alloc_msix(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @enetc_of_get_phy(%struct.enetc_ndev_priv*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.enetc_ndev_priv*, i32, %struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @enetc_of_put_phy(%struct.enetc_ndev_priv*) #1

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
