; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_configure_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_configure_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i32, %struct.igbvf_ring*, %struct.e1000_hw }
%struct.igbvf_ring = type { i32, i32, i32, i32 }
%struct.e1000_hw = type { i32 }

@E1000_TXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4
@E1000_DCA_TXCTRL_TX_WB_RO_EN = common dso_local global i32 0, align 4
@E1000_ADVTXD_DCMD_EOP = common dso_local global i32 0, align 4
@E1000_ADVTXD_DCMD_IFCS = common dso_local global i32 0, align 4
@E1000_ADVTXD_DCMD_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*)* @igbvf_configure_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_configure_tx(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca %struct.igbvf_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.igbvf_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %2, align 8
  %8 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %8, i32 0, i32 2
  store %struct.e1000_hw* %9, %struct.e1000_hw** %3, align 8
  %10 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %10, i32 0, i32 1
  %12 = load %struct.igbvf_ring*, %struct.igbvf_ring** %11, align 8
  store %struct.igbvf_ring* %12, %struct.igbvf_ring** %4, align 8
  %13 = call i32 @TXDCTL(i32 0)
  %14 = call i32 @er32(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = call i32 @TXDCTL(i32 0)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @E1000_TXDCTL_QUEUE_ENABLE, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 @ew32(i32 %15, i32 %19)
  %21 = call i32 (...) @e1e_flush()
  %22 = call i32 @msleep(i32 10)
  %23 = call i32 @TDLEN(i32 0)
  %24 = load %struct.igbvf_ring*, %struct.igbvf_ring** %4, align 8
  %25 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @ew32(i32 %23, i32 %29)
  %31 = load %struct.igbvf_ring*, %struct.igbvf_ring** %4, align 8
  %32 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = call i32 @TDBAL(i32 0)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @DMA_BIT_MASK(i32 32)
  %37 = and i32 %35, %36
  %38 = call i32 @ew32(i32 %34, i32 %37)
  %39 = call i32 @TDBAH(i32 0)
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 32
  %42 = call i32 @ew32(i32 %39, i32 %41)
  %43 = call i32 @TDH(i32 0)
  %44 = call i32 @ew32(i32 %43, i32 0)
  %45 = call i32 @TDT(i32 0)
  %46 = call i32 @ew32(i32 %45, i32 0)
  %47 = call i32 @E1000_TDH(i32 0)
  %48 = load %struct.igbvf_ring*, %struct.igbvf_ring** %4, align 8
  %49 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = call i32 @E1000_TDT(i32 0)
  %51 = load %struct.igbvf_ring*, %struct.igbvf_ring** %4, align 8
  %52 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = call i32 @DCA_TXCTRL(i32 0)
  %54 = call i32 @er32(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @E1000_DCA_TXCTRL_TX_WB_RO_EN, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = call i32 @DCA_TXCTRL(i32 0)
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ew32(i32 %59, i32 %60)
  %62 = load i32, i32* @E1000_TXDCTL_QUEUE_ENABLE, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = call i32 @TXDCTL(i32 0)
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @ew32(i32 %65, i32 %66)
  %68 = load i32, i32* @E1000_ADVTXD_DCMD_EOP, align 4
  %69 = load i32, i32* @E1000_ADVTXD_DCMD_IFCS, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @E1000_ADVTXD_DCMD_RS, align 4
  %74 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @TXDCTL(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @TDLEN(i32) #1

declare dso_local i32 @TDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @TDBAH(i32) #1

declare dso_local i32 @TDH(i32) #1

declare dso_local i32 @TDT(i32) #1

declare dso_local i32 @E1000_TDH(i32) #1

declare dso_local i32 @E1000_TDT(i32) #1

declare dso_local i32 @DCA_TXCTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
