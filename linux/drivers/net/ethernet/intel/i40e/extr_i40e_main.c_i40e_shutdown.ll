; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.i40e_pf = type { i64, i32, i32, i64, %struct.TYPE_2__*, i32, i32*, i32, i32, %struct.i40e_hw }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }

@__I40E_SUSPENDED = common dso_local global i32 0, align 4
@__I40E_DOWN = common dso_local global i32 0, align 4
@I40E_HW_WOL_MC_MAGIC_PKT_WAKE = common dso_local global i32 0, align 4
@I40E_PFPM_APM = common dso_local global i32 0, align 4
@I40E_PFPM_APM_APME_MASK = common dso_local global i32 0, align 4
@I40E_PFPM_WUFC = common dso_local global i32 0, align 4
@I40E_PFPM_WUFC_MAG_MASK = common dso_local global i32 0, align 4
@__I40E_RECOVERY_MODE = common dso_local global i32 0, align 4
@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@system_state = common dso_local global i64 0, align 8
@SYSTEM_POWER_OFF = common dso_local global i64 0, align 8
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @i40e_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.i40e_pf* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.i40e_pf* %6, %struct.i40e_pf** %3, align 8
  %7 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %7, i32 0, i32 9
  store %struct.i40e_hw* %8, %struct.i40e_hw** %4, align 8
  %9 = load i32, i32* @__I40E_SUSPENDED, align 4
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @set_bit(i32 %9, i32 %12)
  %14 = load i32, i32* @__I40E_DOWN, align 4
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @set_bit(i32 %14, i32 %17)
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 8
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 7
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %26 = call i32 @i40e_cloud_filter_exit(%struct.i40e_pf* %25)
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %28 = call i32 @i40e_fdir_teardown(%struct.i40e_pf* %27)
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %30 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @i40e_notify_client_of_netdev_close(i32 %36, i32 0)
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %39 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %1
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %44 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @I40E_HW_WOL_MC_MAGIC_PKT_WAKE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %51 = call i32 @i40e_enable_mc_magic_wake(%struct.i40e_pf* %50)
  br label %52

52:                                               ; preds = %49, %42, %1
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %54 = call i32 @i40e_prep_for_reset(%struct.i40e_pf* %53, i32 0)
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %56 = load i32, i32* @I40E_PFPM_APM, align 4
  %57 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %58 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @I40E_PFPM_APM_APME_MASK, align 4
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = call i32 @wr32(%struct.i40e_hw* %55, i32 %56, i32 %65)
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %68 = load i32, i32* @I40E_PFPM_WUFC, align 4
  %69 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %70 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @I40E_PFPM_WUFC_MAG_MASK, align 4
  br label %76

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = call i32 @wr32(%struct.i40e_hw* %67, i32 %68, i32 %77)
  %79 = load i32, i32* @__I40E_RECOVERY_MODE, align 4
  %80 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %81 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @test_bit(i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %76
  %86 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %87 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %85
  %93 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %94 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %93, i32 0, i32 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %99 = call i32 @free_irq(i32 %97, %struct.i40e_pf* %98)
  br label %100

100:                                              ; preds = %92, %85, %76
  %101 = call i32 (...) @rtnl_lock()
  %102 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %103 = call i32 @i40e_clear_interrupt_scheme(%struct.i40e_pf* %102)
  %104 = call i32 (...) @rtnl_unlock()
  %105 = load i64, i64* @system_state, align 8
  %106 = load i64, i64* @SYSTEM_POWER_OFF, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %110 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %111 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @pci_wake_from_d3(%struct.pci_dev* %109, i64 %112)
  %114 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %115 = load i32, i32* @PCI_D3hot, align 4
  %116 = call i32 @pci_set_power_state(%struct.pci_dev* %114, i32 %115)
  br label %117

117:                                              ; preds = %108, %100
  ret void
}

declare dso_local %struct.i40e_pf* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @i40e_cloud_filter_exit(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_fdir_teardown(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_notify_client_of_netdev_close(i32, i32) #1

declare dso_local i32 @i40e_enable_mc_magic_wake(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_prep_for_reset(%struct.i40e_pf*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.i40e_pf*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @i40e_clear_interrupt_scheme(%struct.i40e_pf*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @pci_wake_from_d3(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
