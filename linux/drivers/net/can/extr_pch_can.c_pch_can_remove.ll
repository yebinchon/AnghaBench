; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.pch_can_priv = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pch_can_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_can_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pch_can_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.pch_can_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.pch_can_priv* %8, %struct.pch_can_priv** %4, align 8
  %9 = load %struct.pch_can_priv*, %struct.pch_can_priv** %4, align 8
  %10 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @unregister_candev(i32 %11)
  %13 = load %struct.pch_can_priv*, %struct.pch_can_priv** %4, align 8
  %14 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.pch_can_priv*, %struct.pch_can_priv** %4, align 8
  %19 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pci_disable_msi(i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @pci_release_regions(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = call i32 @pci_disable_device(%struct.pci_dev* %25)
  %27 = load %struct.pch_can_priv*, %struct.pch_can_priv** %4, align 8
  %28 = call i32 @pch_can_reset(%struct.pch_can_priv* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load %struct.pch_can_priv*, %struct.pch_can_priv** %4, align 8
  %31 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pci_iounmap(%struct.pci_dev* %29, i32 %32)
  %34 = load %struct.pch_can_priv*, %struct.pch_can_priv** %4, align 8
  %35 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @free_candev(i32 %36)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.pch_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_candev(i32) #1

declare dso_local i32 @pci_disable_msi(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pch_can_reset(%struct.pch_can_priv*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @free_candev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
