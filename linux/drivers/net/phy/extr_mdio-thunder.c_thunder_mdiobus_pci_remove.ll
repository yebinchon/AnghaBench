; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-thunder.c_thunder_mdiobus_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-thunder.c_thunder_mdiobus_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.thunder_mdiobus_nexus = type { %struct.cavium_mdiobus** }
%struct.cavium_mdiobus = type { i64, i32 }

@SMI_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @thunder_mdiobus_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunder_mdiobus_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thunder_mdiobus_nexus*, align 8
  %5 = alloca %struct.cavium_mdiobus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.thunder_mdiobus_nexus* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.thunder_mdiobus_nexus* %7, %struct.thunder_mdiobus_nexus** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %41, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.thunder_mdiobus_nexus*, %struct.thunder_mdiobus_nexus** %4, align 8
  %11 = getelementptr inbounds %struct.thunder_mdiobus_nexus, %struct.thunder_mdiobus_nexus* %10, i32 0, i32 0
  %12 = load %struct.cavium_mdiobus**, %struct.cavium_mdiobus*** %11, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.cavium_mdiobus** %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %8
  %16 = load %struct.thunder_mdiobus_nexus*, %struct.thunder_mdiobus_nexus** %4, align 8
  %17 = getelementptr inbounds %struct.thunder_mdiobus_nexus, %struct.thunder_mdiobus_nexus* %16, i32 0, i32 0
  %18 = load %struct.cavium_mdiobus**, %struct.cavium_mdiobus*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %18, i64 %20
  %22 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %21, align 8
  store %struct.cavium_mdiobus* %22, %struct.cavium_mdiobus** %5, align 8
  %23 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %5, align 8
  %24 = icmp ne %struct.cavium_mdiobus* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %41

26:                                               ; preds = %15
  %27 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %5, align 8
  %28 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mdiobus_unregister(i32 %29)
  %31 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %5, align 8
  %32 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mdiobus_free(i32 %33)
  %35 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %5, align 8
  %36 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SMI_EN, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @oct_mdio_writeq(i32 0, i64 %39)
  br label %41

41:                                               ; preds = %26, %25
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %8

44:                                               ; preds = %8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = call i32 @pci_set_drvdata(%struct.pci_dev* %45, i32* null)
  ret void
}

declare dso_local %struct.thunder_mdiobus_nexus* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cavium_mdiobus**) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i32 @oct_mdio_writeq(i32, i64) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
