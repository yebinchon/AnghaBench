; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.net_device = type { i32, i32, i32 }
%struct.ef4_nic = type { i32, i32, %struct.ef4_nic_type* }
%struct.ef4_nic_type = type { i32 }

@EF4_MAX_CORE_TX_QUEUES = common dso_local global i32 0, align 4
@EF4_MAX_RX_QUEUES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Solarflare NIC detected\0A\00", align 1
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"initialisation successful\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to create MTDs (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"PCIE error reporting unavailable (%d).\0A\00", align 1
@drv = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"initialisation failed. rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ef4_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ef4_nic*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load i32, i32* @EF4_MAX_CORE_TX_QUEUES, align 4
  %10 = load i32, i32* @EF4_MAX_RX_QUEUES, align 4
  %11 = call %struct.net_device* @alloc_etherdev_mqs(i32 16, i32 %9, i32 %10)
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %187

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %18)
  store %struct.ef4_nic* %19, %struct.ef4_nic** %7, align 8
  %20 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ef4_nic_type*
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %25 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %24, i32 0, i32 2
  store %struct.ef4_nic_type* %23, %struct.ef4_nic_type** %25, align 8
  %26 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %27 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %28 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %33 = call i32 @pci_set_drvdata(%struct.pci_dev* %31, %struct.ef4_nic* %32)
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @SET_NETDEV_DEV(%struct.net_device* %34, i32* %36)
  %38 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i32 @ef4_init_struct(%struct.ef4_nic* %38, %struct.pci_dev* %39, %struct.net_device* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %17
  br label %172

45:                                               ; preds = %17
  %46 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %47 = load i32, i32* @probe, align 4
  %48 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %49 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netif_info(%struct.ef4_nic* %46, i32 %47, i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %53 = call i32 @ef4_probe_vpd_strings(%struct.ef4_nic* %52)
  %54 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %55 = call i32 @ef4_init_io(%struct.ef4_nic* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %169

59:                                               ; preds = %45
  %60 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %61 = call i32 @ef4_pci_probe_main(%struct.ef4_nic* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %166

65:                                               ; preds = %59
  %66 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %67 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %66, i32 0, i32 2
  %68 = load %struct.ef4_nic_type*, %struct.ef4_nic_type** %67, align 8
  %69 = getelementptr inbounds %struct.ef4_nic_type, %struct.ef4_nic_type* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NETIF_F_SG, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %80 = load i32, i32* @NETIF_F_SG, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %94 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = xor i32 %95, -1
  %97 = and i32 %92, %96
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %107 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.net_device*, %struct.net_device** %6, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %114 = call i32 @ef4_register_netdev(%struct.ef4_nic* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %65
  br label %163

118:                                              ; preds = %65
  %119 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %120 = load i32, i32* @probe, align 4
  %121 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %122 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.ef4_nic* %119, i32 %120, i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %125 = call i32 (...) @rtnl_lock()
  %126 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %127 = call i32 @ef4_mtd_probe(%struct.ef4_nic* %126)
  store i32 %127, i32* %8, align 4
  %128 = call i32 (...) @rtnl_unlock()
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %118
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @EPERM, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %138 = load i32, i32* @probe, align 4
  %139 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %140 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @netif_warn(%struct.ef4_nic* %137, i32 %138, i32 %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %136, %131, %118
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %156 = load i32, i32* @probe, align 4
  %157 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %158 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @netif_notice(%struct.ef4_nic* %155, i32 %156, i32 %159, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %154, %149, %144
  store i32 0, i32* %3, align 4
  br label %187

163:                                              ; preds = %117
  %164 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %165 = call i32 @ef4_pci_remove_main(%struct.ef4_nic* %164)
  br label %166

166:                                              ; preds = %163, %64
  %167 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %168 = call i32 @ef4_fini_io(%struct.ef4_nic* %167)
  br label %169

169:                                              ; preds = %166, %58
  %170 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %171 = call i32 @ef4_fini_struct(%struct.ef4_nic* %170)
  br label %172

172:                                              ; preds = %169, %44
  %173 = load i32, i32* %8, align 4
  %174 = icmp sgt i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @WARN_ON(i32 %175)
  %177 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %178 = load i32, i32* @drv, align 4
  %179 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %180 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.ef4_nic* %177, i32 %178, i32 %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %182)
  %184 = load %struct.net_device*, %struct.net_device** %6, align 8
  %185 = call i32 @free_netdev(%struct.net_device* %184)
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %172, %162, %14
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ef4_nic*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @ef4_init_struct(%struct.ef4_nic*, %struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @ef4_probe_vpd_strings(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_init_io(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_pci_probe_main(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_register_netdev(%struct.ef4_nic*) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @ef4_mtd_probe(%struct.ef4_nic*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @netif_warn(%struct.ef4_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @netif_notice(%struct.ef4_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @ef4_pci_remove_main(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_fini_io(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_fini_struct(%struct.ef4_nic*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
