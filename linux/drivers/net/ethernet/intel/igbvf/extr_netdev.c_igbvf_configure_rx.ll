; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { %struct.igbvf_ring*, %struct.e1000_hw }
%struct.igbvf_ring = type { i32, i32, i32, i32 }
%struct.e1000_hw = type { i32 }

@E1000_RXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4
@IGBVF_RX_PTHRESH = common dso_local global i32 0, align 4
@IGBVF_RX_HTHRESH = common dso_local global i32 0, align 4
@IGBVF_RX_WTHRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*)* @igbvf_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_configure_rx(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca %struct.igbvf_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.igbvf_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %2, align 8
  %7 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %7, i32 0, i32 1
  store %struct.e1000_hw* %8, %struct.e1000_hw** %3, align 8
  %9 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %9, i32 0, i32 0
  %11 = load %struct.igbvf_ring*, %struct.igbvf_ring** %10, align 8
  store %struct.igbvf_ring* %11, %struct.igbvf_ring** %4, align 8
  %12 = call i32 @RXDCTL(i32 0)
  %13 = call i32 @er32(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = call i32 @RXDCTL(i32 0)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @E1000_RXDCTL_QUEUE_ENABLE, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @ew32(i32 %14, i32 %18)
  %20 = call i32 (...) @e1e_flush()
  %21 = call i32 @msleep(i32 10)
  %22 = load %struct.igbvf_ring*, %struct.igbvf_ring** %4, align 8
  %23 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = call i32 @RDBAL(i32 0)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @DMA_BIT_MASK(i32 32)
  %28 = and i32 %26, %27
  %29 = call i32 @ew32(i32 %25, i32 %28)
  %30 = call i32 @RDBAH(i32 0)
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 32
  %33 = call i32 @ew32(i32 %30, i32 %32)
  %34 = call i32 @RDLEN(i32 0)
  %35 = load %struct.igbvf_ring*, %struct.igbvf_ring** %4, align 8
  %36 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ew32(i32 %34, i32 %40)
  %42 = call i32 @E1000_RDH(i32 0)
  %43 = load %struct.igbvf_ring*, %struct.igbvf_ring** %4, align 8
  %44 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = call i32 @E1000_RDT(i32 0)
  %46 = load %struct.igbvf_ring*, %struct.igbvf_ring** %4, align 8
  %47 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = call i32 @RDH(i32 0)
  %49 = call i32 @ew32(i32 %48, i32 0)
  %50 = call i32 @RDT(i32 0)
  %51 = call i32 @ew32(i32 %50, i32 0)
  %52 = load i32, i32* @E1000_RXDCTL_QUEUE_ENABLE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, -1048576
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @IGBVF_RX_PTHRESH, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @IGBVF_RX_HTHRESH, align 4
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @IGBVF_RX_WTHRESH, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %69 = call i32 @igbvf_set_rlpml(%struct.igbvf_adapter* %68)
  %70 = call i32 @RXDCTL(i32 0)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @ew32(i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @RXDCTL(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @RDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @RDBAH(i32) #1

declare dso_local i32 @RDLEN(i32) #1

declare dso_local i32 @E1000_RDH(i32) #1

declare dso_local i32 @E1000_RDT(i32) #1

declare dso_local i32 @RDH(i32) #1

declare dso_local i32 @RDT(i32) #1

declare dso_local i32 @igbvf_set_rlpml(%struct.igbvf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
