; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_leave_82542_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_leave_82542_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)*, %struct.e1000_rx_ring*, %struct.net_device*, %struct.e1000_hw }
%struct.e1000_rx_ring = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_hw = type { i32 }

@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_RST = common dso_local global i32 0, align 4
@PCI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_leave_82542_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_leave_82542_rst(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_rx_ring*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 3
  store %struct.e1000_hw* %8, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load i32, i32* @RCTL, align 4
  %13 = call i32 @er32(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @E1000_RCTL_RST, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @RCTL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ew32(i32 %18, i32 %19)
  %21 = call i32 (...) @E1000_WRITE_FLUSH()
  %22 = call i32 @mdelay(i32 5)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PCI_COMMAND_INVALIDATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = call i32 @e1000_pci_set_mwi(%struct.e1000_hw* %30)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i64 @netif_running(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %37, i32 0, i32 1
  %39 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %38, align 8
  %40 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %39, i64 0
  store %struct.e1000_rx_ring* %40, %struct.e1000_rx_ring** %6, align 8
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %42 = call i32 @e1000_configure_rx(%struct.e1000_adapter* %41)
  %43 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %43, i32 0, i32 0
  %45 = load i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)*, i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)** %44, align 8
  %46 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %47 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %48 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %49 = call i32 @E1000_DESC_UNUSED(%struct.e1000_rx_ring* %48)
  %50 = call i32 %45(%struct.e1000_adapter* %46, %struct.e1000_rx_ring* %47, i32 %49)
  br label %51

51:                                               ; preds = %36, %32
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @e1000_pci_set_mwi(%struct.e1000_hw*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @e1000_configure_rx(%struct.e1000_adapter*) #1

declare dso_local i32 @E1000_DESC_UNUSED(%struct.e1000_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
