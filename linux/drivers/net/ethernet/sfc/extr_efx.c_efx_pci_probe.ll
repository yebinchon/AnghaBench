; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.net_device = type { i32 }
%struct.efx_nic = type { i32, %struct.efx_nic_type*, i64, i32 }
%struct.efx_nic_type = type { i32 (%struct.efx_nic.0*)*, i32 }
%struct.efx_nic.0 = type opaque

@EFX_MAX_CORE_TX_QUEUES = common dso_local global i32 0, align 4
@EFX_MAX_RX_QUEUES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Solarflare NIC detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"initialisation successful\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to create MTDs (%d)\0A\00", align 1
@drv = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"initialisation failed. rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @efx_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.efx_nic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load i32, i32* @EFX_MAX_CORE_TX_QUEUES, align 4
  %11 = load i32, i32* @EFX_MAX_RX_QUEUES, align 4
  %12 = call %struct.net_device* @alloc_etherdev_mqs(i32 32, i32 %10, i32 %11)
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %161

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %19)
  store %struct.efx_nic* %20, %struct.efx_nic** %7, align 8
  %21 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.efx_nic_type*
  %25 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 1
  store %struct.efx_nic_type* %24, %struct.efx_nic_type** %26, align 8
  %27 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %28 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %29 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %34 = call i32 @pci_set_drvdata(%struct.pci_dev* %32, %struct.efx_nic* %33)
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i32 @SET_NETDEV_DEV(%struct.net_device* %35, i32* %37)
  %39 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i32 @efx_init_struct(%struct.efx_nic* %39, %struct.pci_dev* %40, %struct.net_device* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %18
  br label %146

46:                                               ; preds = %18
  %47 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %48 = load i32, i32* @probe, align 4
  %49 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netif_info(%struct.efx_nic* %47, i32 %48, i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %54 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %53, i32 0, i32 1
  %55 = load %struct.efx_nic_type*, %struct.efx_nic_type** %54, align 8
  %56 = getelementptr inbounds %struct.efx_nic_type, %struct.efx_nic_type* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %46
  %60 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %61 = call i32 @efx_probe_vpd_strings(%struct.efx_nic* %60)
  br label %62

62:                                               ; preds = %59, %46
  %63 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %64 = call i32 @efx_init_io(%struct.efx_nic* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %143

68:                                               ; preds = %62
  %69 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %70 = call i32 @efx_pci_probe_post_io(%struct.efx_nic* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %68
  %74 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %75 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %77 = call i32 @efx_pci_probe_post_io(%struct.efx_nic* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = call i32 @get_random_bytes(i8* %9, i32 1)
  %82 = load i8, i8* %9, align 1
  %83 = zext i8 %82 to i32
  %84 = add i32 %83, 50
  %85 = call i32 @msleep(i32 %84)
  %86 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %87 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %89 = call i32 @efx_pci_probe_post_io(%struct.efx_nic* %88)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %80, %73
  br label %91

91:                                               ; preds = %90, %68
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %140

95:                                               ; preds = %91
  %96 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %97 = load i32, i32* @probe, align 4
  %98 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %99 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %96, i32 %97, i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %102 = call i32 (...) @rtnl_lock()
  %103 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %104 = call i32 @efx_mtd_probe(%struct.efx_nic* %103)
  store i32 %104, i32* %8, align 4
  %105 = call i32 (...) @rtnl_unlock()
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %95
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @EPERM, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %115 = load i32, i32* @probe, align 4
  %116 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %117 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @netif_warn(%struct.efx_nic* %114, i32 %115, i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %113, %108, %95
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %122)
  %124 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %125 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %124, i32 0, i32 1
  %126 = load %struct.efx_nic_type*, %struct.efx_nic_type** %125, align 8
  %127 = getelementptr inbounds %struct.efx_nic_type, %struct.efx_nic_type* %126, i32 0, i32 0
  %128 = load i32 (%struct.efx_nic.0*)*, i32 (%struct.efx_nic.0*)** %127, align 8
  %129 = icmp ne i32 (%struct.efx_nic.0*)* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %121
  %131 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %132 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %131, i32 0, i32 1
  %133 = load %struct.efx_nic_type*, %struct.efx_nic_type** %132, align 8
  %134 = getelementptr inbounds %struct.efx_nic_type, %struct.efx_nic_type* %133, i32 0, i32 0
  %135 = load i32 (%struct.efx_nic.0*)*, i32 (%struct.efx_nic.0*)** %134, align 8
  %136 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %137 = bitcast %struct.efx_nic* %136 to %struct.efx_nic.0*
  %138 = call i32 %135(%struct.efx_nic.0* %137)
  br label %139

139:                                              ; preds = %130, %121
  store i32 0, i32* %3, align 4
  br label %161

140:                                              ; preds = %94
  %141 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %142 = call i32 @efx_fini_io(%struct.efx_nic* %141)
  br label %143

143:                                              ; preds = %140, %67
  %144 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %145 = call i32 @efx_fini_struct(%struct.efx_nic* %144)
  br label %146

146:                                              ; preds = %143, %45
  %147 = load i32, i32* %8, align 4
  %148 = icmp sgt i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @WARN_ON(i32 %149)
  %151 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %152 = load i32, i32* @drv, align 4
  %153 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %154 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %151, i32 %152, i32 %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load %struct.net_device*, %struct.net_device** %6, align 8
  %159 = call i32 @free_netdev(%struct.net_device* %158)
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %146, %139, %15
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.efx_nic*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @efx_init_struct(%struct.efx_nic*, %struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_probe_vpd_strings(%struct.efx_nic*) #1

declare dso_local i32 @efx_init_io(%struct.efx_nic*) #1

declare dso_local i32 @efx_pci_probe_post_io(%struct.efx_nic*) #1

declare dso_local i32 @get_random_bytes(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @efx_mtd_probe(%struct.efx_nic*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @efx_fini_io(%struct.efx_nic*) #1

declare dso_local i32 @efx_fini_struct(%struct.efx_nic*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
