; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.ns83820 = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DESC_SIZE = common dso_local global i32 0, align 4
@NR_TX_DESC = common dso_local global i32 0, align 4
@NR_RX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ns83820_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns83820_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ns83820*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ns83820* @PRIV(%struct.net_device* %7)
  store %struct.ns83820* %8, %struct.ns83820** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %14 = call i32 @ns83820_disable_interrupts(%struct.ns83820* %13)
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @unregister_netdev(%struct.net_device* %15)
  %17 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %18 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.net_device* %22)
  %24 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %25 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iounmap(i32 %26)
  %28 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %29 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* @DESC_SIZE, align 4
  %32 = mul nsw i32 4, %31
  %33 = load i32, i32* @NR_TX_DESC, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %36 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %39 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pci_free_consistent(%struct.TYPE_5__* %30, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %43 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* @DESC_SIZE, align 4
  %46 = mul nsw i32 4, %45
  %47 = load i32, i32* @NR_RX_DESC, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %50 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %54 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pci_free_consistent(%struct.TYPE_5__* %44, i32 %48, i32 %52, i32 %56)
  %58 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %59 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call i32 @pci_disable_device(%struct.TYPE_5__* %60)
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @free_netdev(%struct.net_device* %62)
  br label %64

64:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.ns83820* @PRIV(%struct.net_device*) #1

declare dso_local i32 @ns83820_disable_interrupts(%struct.ns83820*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_5__*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
