; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_test_msi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_test_msi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.TYPE_3__*, i32, %struct.e1000_hw, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_hw = type { i32 }
%struct.net_device = type { i32 }

@ICR = common dso_local global i32 0, align 4
@FLAG_MSI_TEST_FAILED = common dso_local global i32 0, align 4
@e1000_intr_msi_test = common dso_local global i32 0, align 4
@ICS = common dso_local global i32 0, align 4
@E1000_ICS_RXSEQ = common dso_local global i32 0, align 4
@E1000E_INT_MODE_LEGACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"MSI interrupt test failed, using legacy interrupt.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"MSI interrupt test succeeded!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_test_msi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_test_msi_interrupt(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 4
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 3
  store %struct.e1000_hw* %10, %struct.e1000_hw** %4, align 8
  %11 = load i32, i32* @ICR, align 4
  %12 = call i32 @er32(i32 %11)
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %14 = call i32 @e1000_free_irq(%struct.e1000_adapter* %13)
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %16 = call i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter* %15)
  %17 = load i32, i32* @FLAG_MSI_TEST_FAILED, align 4
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @pci_enable_msi(%struct.TYPE_3__* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %85

29:                                               ; preds = %1
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @e1000_intr_msi_test, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @request_irq(i32 %34, i32 %35, i32 0, i32 %38, %struct.net_device* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = call i32 @pci_disable_msi(%struct.TYPE_3__* %46)
  br label %85

48:                                               ; preds = %29
  %49 = call i32 (...) @wmb()
  %50 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %51 = call i32 @e1000_irq_enable(%struct.e1000_adapter* %50)
  %52 = load i32, i32* @ICS, align 4
  %53 = load i32, i32* @E1000_ICS_RXSEQ, align 4
  %54 = call i32 @ew32(i32 %52, i32 %53)
  %55 = call i32 (...) @e1e_flush()
  %56 = call i32 @msleep(i32 100)
  %57 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %58 = call i32 @e1000_irq_disable(%struct.e1000_adapter* %57)
  %59 = call i32 (...) @rmb()
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FLAG_MSI_TEST_FAILED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %48
  %67 = load i32, i32* @E1000E_INT_MODE_LEGACY, align 4
  %68 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = call i32 @e_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %73

71:                                               ; preds = %48
  %72 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i32 @free_irq(i32 %78, %struct.net_device* %79)
  %81 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = call i32 @pci_disable_msi(%struct.TYPE_3__* %83)
  br label %85

85:                                               ; preds = %73, %43, %28
  %86 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %87 = call i32 @e1000e_set_interrupt_capability(%struct.e1000_adapter* %86)
  %88 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %89 = call i32 @e1000_request_irq(%struct.e1000_adapter* %88)
  ret i32 %89
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_free_irq(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter*) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @e1000_irq_enable(%struct.e1000_adapter*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1000_irq_disable(%struct.e1000_adapter*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @e_info(i8*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @e1000e_set_interrupt_capability(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_request_irq(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
