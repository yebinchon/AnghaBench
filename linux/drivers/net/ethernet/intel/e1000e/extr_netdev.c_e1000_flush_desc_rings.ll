; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_flush_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_flush_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@FEXTNVM11 = common dso_local global i32 0, align 4
@E1000_FEXTNVM11_DISABLE_MULR_FIX = common dso_local global i32 0, align 4
@PCICFG_DESC_RING_STATUS = common dso_local global i32 0, align 4
@FLUSH_DESC_REQUIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_flush_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_flush_desc_rings(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 1
  store %struct.e1000_hw* %8, %struct.e1000_hw** %6, align 8
  %9 = load i32, i32* @FEXTNVM11, align 4
  %10 = call i32 @er32(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @E1000_FEXTNVM11_DISABLE_MULR_FIX, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @FEXTNVM11, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ew32(i32 %14, i32 %15)
  %17 = call i32 @TDLEN(i32 0)
  %18 = call i32 @er32(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCICFG_DESC_RING_STATUS, align 4
  %23 = call i32 @pci_read_config_word(i32 %21, i32 %22, i32* %3)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @FLUSH_DESC_REQUIRED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %1
  br label %47

32:                                               ; preds = %28
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %34 = call i32 @e1000_flush_tx_ring(%struct.e1000_adapter* %33)
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PCICFG_DESC_RING_STATUS, align 4
  %39 = call i32 @pci_read_config_word(i32 %37, i32 %38, i32* %3)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @FLUSH_DESC_REQUIRED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %46 = call i32 @e1000_flush_rx_ring(%struct.e1000_adapter* %45)
  br label %47

47:                                               ; preds = %31, %44, %32
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @TDLEN(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @e1000_flush_tx_ring(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_flush_rx_ring(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
