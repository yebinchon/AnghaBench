; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { i32, %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@IRQF_SHARED = common dso_local global i32 0, align 4
@atl2_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl2_adapter*)* @atl2_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_request_irq(%struct.atl2_adapter* %0) #0 {
  %2 = alloca %struct.atl2_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atl2_adapter* %0, %struct.atl2_adapter** %2, align 8
  %6 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %6, i32 0, i32 2
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @IRQF_SHARED, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @pci_enable_msi(%struct.TYPE_2__* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @IRQF_SHARED, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @atl2_intr, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @request_irq(i32 %36, i32 %37, i32 %38, i32 %41, %struct.net_device* %42)
  ret i32 %43
}

declare dso_local i32 @pci_enable_msi(%struct.TYPE_2__*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
