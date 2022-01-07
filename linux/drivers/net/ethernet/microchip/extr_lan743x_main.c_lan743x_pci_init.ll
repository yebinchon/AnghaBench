; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.pci_dev*, i32 }
%struct.pci_dev = type { i32, i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"PCI: Vendor ID = 0x%04X, Device ID = 0x%04X\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*, %struct.pci_dev*)* @lan743x_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_pci_init(%struct.lan743x_adapter* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lan743x_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %9 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %9, i32 0, i32 0
  store %struct.pci_dev* %8, %struct.pci_dev** %10, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call i32 @pci_enable_device_mem(%struct.pci_dev* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %18 = load i32, i32* @probe, align 4
  %19 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_info(%struct.lan743x_adapter* %17, i32 %18, i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call i64 @pci_select_bars(%struct.pci_dev* %29, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = call i32 @test_bit(i32 0, i64* %6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %16
  br label %46

35:                                               ; preds = %16
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @DRIVER_NAME, align 4
  %39 = call i32 @pci_request_selected_regions(%struct.pci_dev* %36, i64 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %46

43:                                               ; preds = %35
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = call i32 @pci_set_master(%struct.pci_dev* %44)
  store i32 0, i32* %3, align 4
  br label %53

46:                                               ; preds = %42, %34
  %47 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %47, i32 0, i32 0
  %49 = load %struct.pci_dev*, %struct.pci_dev** %48, align 8
  %50 = call i32 @pci_disable_device(%struct.pci_dev* %49)
  br label %51

51:                                               ; preds = %46, %15
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %43
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @netif_info(%struct.lan743x_adapter*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @pci_select_bars(%struct.pci_dev*, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @pci_request_selected_regions(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
