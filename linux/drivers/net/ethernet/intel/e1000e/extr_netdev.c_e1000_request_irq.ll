; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.TYPE_2__*, i32, i64, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@E1000E_INT_MODE_MSI = common dso_local global i32 0, align 4
@FLAG_MSI_ENABLED = common dso_local global i32 0, align 4
@e1000_intr_msi = common dso_local global i32 0, align 4
@E1000E_INT_MODE_LEGACY = common dso_local global i32 0, align 4
@e1000_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to allocate interrupt, Error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_request_irq(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 4
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %15 = call i32 @e1000_request_msix(%struct.e1000_adapter* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %77

20:                                               ; preds = %13
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %22 = call i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter* %21)
  %23 = load i32, i32* @E1000E_INT_MODE_MSI, align 4
  %24 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %27 = call i32 @e1000e_set_interrupt_capability(%struct.e1000_adapter* %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FLAG_MSI_ENABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  %36 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @e1000_intr_msi, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @request_irq(i32 %40, i32 %41, i32 0, i32 %44, %struct.net_device* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %77

51:                                               ; preds = %35
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %53 = call i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter* %52)
  %54 = load i32, i32* @E1000E_INT_MODE_LEGACY, align 4
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %28
  %58 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @e1000_intr, align 4
  %64 = load i32, i32* @IRQF_SHARED, align 4
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @request_irq(i32 %62, i32 %63, i32 %64, i32 %67, %struct.net_device* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @e_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %57
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %49, %18
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @e1000_request_msix(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_set_interrupt_capability(%struct.e1000_adapter*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @e_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
