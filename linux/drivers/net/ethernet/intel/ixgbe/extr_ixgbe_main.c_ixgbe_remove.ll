; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__**, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i64, i32, %struct.net_device* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.net_device = type { i64 }

@__IXGBE_REMOVING = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"complete\0A\00", align 1
@IXGBE_MAX_LINK_HANDLE = common dso_local global i32 0, align 4
@__IXGBE_DISABLED = common dso_local global i32 0, align 4
@IXGBE_DCA_CTRL = common dso_local global i32 0, align 4
@IXGBE_DCA_CTRL_DCA_DISABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG_DCA_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ixgbe_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.ixgbe_adapter* %8, %struct.ixgbe_adapter** %3, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %10 = icmp ne %struct.ixgbe_adapter* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %134

12:                                               ; preds = %1
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 12
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %17 = call i32 @ixgbe_dbg_adapter_exit(%struct.ixgbe_adapter* %16)
  %18 = load i32, i32* @__IXGBE_REMOVING, align 4
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 11
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %12
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 10
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @mdiobus_unregister(i64 %32)
  br label %34

34:                                               ; preds = %29, %12
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @ixgbe_del_sanmac_netdev(%struct.net_device* %35)
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NETREG_REGISTERED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @unregister_netdev(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %47 = call i32 @ixgbe_stop_ipsec_offload(%struct.ixgbe_adapter* %46)
  %48 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %49 = call i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter* %48)
  %50 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %51 = call i32 @ixgbe_release_hw_control(%struct.ixgbe_adapter* %50)
  %52 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @iounmap(i32 %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %57 = call i32 @pci_release_mem_regions(%struct.pci_dev* %56)
  %58 = call i32 @e_dev_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %102, %45
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @IXGBE_MAX_LINK_HANDLE, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %105

63:                                               ; preds = %59
  %64 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %64, i32 0, i32 5
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = icmp ne %struct.TYPE_2__* %70, null
  br i1 %71, label %72, label %93

72:                                               ; preds = %63
  %73 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %73, i32 0, i32 5
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %77
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = call i32 @kfree(%struct.TYPE_2__* %81)
  %83 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %83, i32 0, i32 5
  %85 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %85, i64 %87
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = call i32 @kfree(%struct.TYPE_2__* %91)
  br label %93

93:                                               ; preds = %72, %63
  %94 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %94, i32 0, i32 5
  %96 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %96, i64 %98
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = call i32 @kfree(%struct.TYPE_2__* %100)
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %59

105:                                              ; preds = %59
  %106 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %106, i32 0, i32 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = call i32 @kfree(%struct.TYPE_2__* %108)
  %110 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %110, i32 0, i32 3
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = call i32 @kfree(%struct.TYPE_2__* %112)
  %114 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @bitmap_free(i32 %116)
  %118 = load i32, i32* @__IXGBE_DISABLED, align 4
  %119 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %119, i32 0, i32 1
  %121 = call i32 @test_and_set_bit(i32 %118, i32* %120)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %5, align 4
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = call i32 @free_netdev(%struct.net_device* %125)
  %127 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %128 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %127)
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %105
  %132 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %133 = call i32 @pci_disable_device(%struct.pci_dev* %132)
  br label %134

134:                                              ; preds = %11, %131, %105
  ret void
}

declare dso_local %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ixgbe_dbg_adapter_exit(%struct.ixgbe_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mdiobus_unregister(i64) #1

declare dso_local i32 @ixgbe_del_sanmac_netdev(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @ixgbe_stop_ipsec_offload(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_release_hw_control(%struct.ixgbe_adapter*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @e_dev_info(i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
