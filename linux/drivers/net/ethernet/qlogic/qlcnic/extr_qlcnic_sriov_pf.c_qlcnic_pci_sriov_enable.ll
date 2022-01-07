; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_pci_sriov_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_pci_sriov_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"SR-IOV cannot be enabled, when legacy interrupts are enabled\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"SR-IOV is enabled successfully on port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to enable SR-IOV on port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32)* @qlcnic_pci_sriov_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_pci_sriov_enable(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call i32 @netdev_err(%struct.net_device* %18, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %91

22:                                               ; preds = %2
  %23 = call i32 (...) @rtnl_lock()
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i64 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = call i32 @__qlcnic_down(%struct.qlcnic_adapter* %28, %struct.net_device* %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @__qlcnic_pci_sriov_enable(%struct.qlcnic_adapter* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %70

38:                                               ; preds = %31
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = call i64 @netif_running(%struct.net_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = call i32 @__qlcnic_up(%struct.qlcnic_adapter* %43, %struct.net_device* %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = call i32 (...) @rtnl_unlock()
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @qlcnic_sriov_pf_enable(%struct.qlcnic_adapter* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @netdev_info(%struct.net_device* %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %3, align 4
  br label %91

60:                                               ; preds = %46
  %61 = call i32 (...) @rtnl_lock()
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = call i64 @netif_running(%struct.net_device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call i32 @__qlcnic_down(%struct.qlcnic_adapter* %66, %struct.net_device* %67)
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %37
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %72 = call i32 @qlcnic_83xx_configure_opmode(%struct.qlcnic_adapter* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = call i64 @netif_running(%struct.net_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = call i32 @__qlcnic_up(%struct.qlcnic_adapter* %79, %struct.net_device* %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %70
  %84 = call i32 (...) @rtnl_unlock()
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @netdev_info(%struct.net_device* %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %83, %53, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__qlcnic_down(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @__qlcnic_pci_sriov_enable(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @__qlcnic_up(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qlcnic_sriov_pf_enable(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @qlcnic_83xx_configure_opmode(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
