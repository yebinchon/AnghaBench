; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_plx_pci.c_plx_pci_del_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_plx_pci.c_plx_pci_del_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.plx_pci_card = type { i64, i32 (%struct.pci_dev.0*)*, %struct.net_device** }
%struct.pci_dev.0 = type opaque
%struct.net_device = type { i32 }
%struct.sja1000_priv = type { i64 }

@PLX_PCI_MAX_CHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Removing %s\0A\00", align 1
@PCI_DEVICE_ID_PLX_9056 = common dso_local global i64 0, align 8
@MARATHON_PCIE_DEVICE_ID = common dso_local global i64 0, align 8
@PLX_INTCSR = common dso_local global i64 0, align 8
@PLX9056_INTCSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @plx_pci_del_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plx_pci_del_card(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.plx_pci_card*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sja1000_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.plx_pci_card* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.plx_pci_card* %8, %struct.plx_pci_card** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %48, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PLX_PCI_MAX_CHAN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %15 = getelementptr inbounds %struct.plx_pci_card, %struct.plx_pci_card* %14, i32 0, i32 2
  %16 = load %struct.net_device**, %struct.net_device*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %16, i64 %18
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %48

24:                                               ; preds = %13
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_info(i32* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @unregister_sja1000dev(%struct.net_device* %31)
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %33)
  store %struct.sja1000_priv* %34, %struct.sja1000_priv** %5, align 8
  %35 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %36 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %42 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pci_iounmap(%struct.pci_dev* %40, i64 %43)
  br label %45

45:                                               ; preds = %39, %24
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @free_sja1000dev(%struct.net_device* %46)
  br label %48

48:                                               ; preds = %45, %23
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %9

51:                                               ; preds = %9
  %52 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %53 = getelementptr inbounds %struct.plx_pci_card, %struct.plx_pci_card* %52, i32 0, i32 1
  %54 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %53, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = bitcast %struct.pci_dev* %55 to %struct.pci_dev.0*
  %57 = call i32 %54(%struct.pci_dev.0* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCI_DEVICE_ID_PLX_9056, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %51
  %64 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MARATHON_PCIE_DEVICE_ID, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %71 = getelementptr inbounds %struct.plx_pci_card, %struct.plx_pci_card* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PLX_INTCSR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @iowrite32(i32 0, i64 %74)
  br label %83

76:                                               ; preds = %63, %51
  %77 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %78 = getelementptr inbounds %struct.plx_pci_card, %struct.plx_pci_card* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PLX9056_INTCSR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @iowrite32(i32 0, i64 %81)
  br label %83

83:                                               ; preds = %76, %69
  %84 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %85 = getelementptr inbounds %struct.plx_pci_card, %struct.plx_pci_card* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %90 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %91 = getelementptr inbounds %struct.plx_pci_card, %struct.plx_pci_card* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @pci_iounmap(%struct.pci_dev* %89, i64 %92)
  br label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.plx_pci_card*, %struct.plx_pci_card** %3, align 8
  %96 = call i32 @kfree(%struct.plx_pci_card* %95)
  %97 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %98 = call i32 @pci_disable_device(%struct.pci_dev* %97)
  ret void
}

declare dso_local %struct.plx_pci_card* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @unregister_sja1000dev(%struct.net_device*) #1

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @free_sja1000dev(%struct.net_device*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @kfree(%struct.plx_pci_card*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
