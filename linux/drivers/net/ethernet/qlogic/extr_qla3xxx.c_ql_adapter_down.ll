; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_adapter_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_adapter_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.net_device*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@QL_ADAPTER_UP = common dso_local global i32 0, align 4
@QL_LINK_MASTER = common dso_local global i32 0, align 4
@QL_MSI_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"calling pci_disable_msi()\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"ql_adapter_reset(%d) FAILED!\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Releasing driver lock via chip reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Could not acquire driver lock to do reset!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*, i32)* @ql_adapter_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_adapter_down(%struct.ql3_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %9, i32 0, i32 6
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @netif_carrier_off(%struct.net_device* %14)
  %16 = load i32, i32* @QL_ADAPTER_UP, align 4
  %17 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %17, i32 0, i32 5
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load i32, i32* @QL_LINK_MASTER, align 4
  %21 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %21, i32 0, i32 5
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  %24 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %25 = call i32 @ql_disable_interrupts(%struct.ql3_adapter* %24)
  %26 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i32 @free_irq(i32 %30, %struct.net_device* %31)
  %33 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %2
  %38 = load i32, i32* @QL_MSI_ENABLED, align 4
  %39 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %39, i32 0, i32 5
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %44, i32 0, i32 6
  %46 = load %struct.net_device*, %struct.net_device** %45, align 8
  %47 = call i32 @netdev_info(%struct.net_device* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @QL_MSI_ENABLED, align 4
  %49 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %49, i32 0, i32 5
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  %52 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = call i32 @pci_disable_msi(%struct.TYPE_2__* %54)
  br label %56

56:                                               ; preds = %43, %37, %2
  %57 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %57, i32 0, i32 3
  %59 = call i32 @del_timer_sync(i32* %58)
  %60 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %60, i32 0, i32 2
  %62 = call i32 @napi_disable(i32* %61)
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %56
  %66 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %66, i32 0, i32 0
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %71 = call i64 @ql_wait_for_drvr_lock(%struct.ql3_adapter* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %65
  %74 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %75 = call i32 @ql_adapter_reset(%struct.ql3_adapter* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %73
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %90

87:                                               ; preds = %65
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %91, i32 0, i32 0
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %90, %56
  %96 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %97 = call i32 @ql_free_mem_resources(%struct.ql3_adapter* %96)
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ql_disable_interrupts(%struct.ql3_adapter*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_2__*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ql_wait_for_drvr_lock(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_adapter_reset(%struct.ql3_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ql_free_mem_resources(%struct.ql3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
