; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c___bnx2x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c___bnx2x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnx2x = type { i32, i64, i64, i32, i32, i32, i32 }

@NETDEV_HW_ADDR_T_SAN = common dso_local global i32 0, align 4
@BC_SUPPORTS_RMMOD_CMD = common dso_local global i32 0, align 4
@DRV_MSG_CODE_RMMOD = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@OS_DRIVER_STATE_NOT_LOADED = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@system_state = common dso_local global i64 0, align 8
@SYSTEM_POWER_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.net_device*, %struct.bnx2x*, i32)* @__bnx2x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnx2x_remove(%struct.pci_dev* %0, %struct.net_device* %1, %struct.bnx2x* %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.bnx2x* %2, %struct.bnx2x** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %10 = call i32 @NO_FCOE(%struct.bnx2x* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  %13 = call i32 (...) @rtnl_lock()
  %14 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NETDEV_HW_ADDR_T_SAN, align 4
  %21 = call i32 @dev_addr_del(i32 %16, i32 %19, i32 %20)
  %22 = call i32 (...) @rtnl_unlock()
  br label %23

23:                                               ; preds = %12, %4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %25 = call i64 @IS_PF(%struct.bnx2x* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %29 = call i32 @BP_NOMCP(%struct.bnx2x* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BC_SUPPORTS_RMMOD_CMD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %40 = load i32, i32* @DRV_MSG_CODE_RMMOD, align 4
  %41 = call i32 @bnx2x_fw_command(%struct.bnx2x* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %38, %31, %27, %23
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = call i32 @unregister_netdev(%struct.net_device* %46)
  br label %53

48:                                               ; preds = %42
  %49 = call i32 (...) @rtnl_lock()
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = call i32 @dev_close(%struct.net_device* %50)
  %52 = call i32 (...) @rtnl_unlock()
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %55 = call i32 @bnx2x_iov_remove_one(%struct.bnx2x* %54)
  %56 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %57 = call i64 @IS_PF(%struct.bnx2x* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %61 = load i32, i32* @PCI_D0, align 4
  %62 = call i32 @bnx2x_set_power_state(%struct.bnx2x* %60, i32 %61)
  %63 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %64 = load i32, i32* @OS_DRIVER_STATE_NOT_LOADED, align 4
  %65 = call i32 @bnx2x_set_os_driver_state(%struct.bnx2x* %63, i32 %64)
  %66 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %67 = call i32 @bnx2x_reset_endianity(%struct.bnx2x* %66)
  br label %68

68:                                               ; preds = %59, %53
  %69 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %70 = call i32 @bnx2x_disable_msi(%struct.bnx2x* %69)
  %71 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %72 = call i64 @IS_PF(%struct.bnx2x* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %76 = load i32, i32* @PCI_D3hot, align 4
  %77 = call i32 @bnx2x_set_power_state(%struct.bnx2x* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %80 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %79, i32 0, i32 4
  %81 = call i32 @cancel_delayed_work_sync(i32* %80)
  %82 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %83 = call i64 @IS_VF(%struct.bnx2x* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %87 = call i32 @bnx2x_vfpf_release(%struct.bnx2x* %86)
  br label %88

88:                                               ; preds = %85, %78
  %89 = load i64, i64* @system_state, align 8
  %90 = load i64, i64* @SYSTEM_POWER_OFF, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %94 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %95 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @pci_wake_from_d3(%struct.pci_dev* %93, i32 %96)
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = load i32, i32* @PCI_D3hot, align 4
  %100 = call i32 @pci_set_power_state(%struct.pci_dev* %98, i32 %99)
  br label %101

101:                                              ; preds = %92, %88
  %102 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %103 = call i32 @bnx2x_disable_pcie_error_reporting(%struct.bnx2x* %102)
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %151

106:                                              ; preds = %101
  %107 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %108 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %113 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @iounmap(i64 %114)
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %118 = call i64 @IS_PF(%struct.bnx2x* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %122 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %127 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @iounmap(i64 %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %132 = call i32 @bnx2x_release_firmware(%struct.bnx2x* %131)
  br label %136

133:                                              ; preds = %116
  %134 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %135 = call i32 @bnx2x_vf_pci_dealloc(%struct.bnx2x* %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %138 = call i32 @bnx2x_free_mem_bp(%struct.bnx2x* %137)
  %139 = load %struct.net_device*, %struct.net_device** %6, align 8
  %140 = call i32 @free_netdev(%struct.net_device* %139)
  %141 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 0
  %143 = call i32 @atomic_read(i32* %142)
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %136
  %146 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %147 = call i32 @pci_release_regions(%struct.pci_dev* %146)
  br label %148

148:                                              ; preds = %145, %136
  %149 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %150 = call i32 @pci_disable_device(%struct.pci_dev* %149)
  br label %151

151:                                              ; preds = %148, %101
  ret void
}

declare dso_local i32 @NO_FCOE(%struct.bnx2x*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_addr_del(i32, i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @bnx2x_iov_remove_one(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_power_state(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_set_os_driver_state(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_reset_endianity(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_disable_msi(%struct.bnx2x*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_vfpf_release(%struct.bnx2x*) #1

declare dso_local i32 @pci_wake_from_d3(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @bnx2x_disable_pcie_error_reporting(%struct.bnx2x*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @bnx2x_release_firmware(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_vf_pci_dealloc(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_free_mem_bp(%struct.bnx2x*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
