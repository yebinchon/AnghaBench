; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_configure_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_configure_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i64, %struct.igc_hw }
%struct.igc_hw = type { i32 }
%struct.igc_ring = type { i32, i32, i32, i64 }

@IGC_TX_PTHRESH = common dso_local global i32 0, align 4
@IGC_TX_HTHRESH = common dso_local global i32 0, align 4
@IGC_TX_WTHRESH = common dso_local global i32 0, align 4
@IGC_TXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*, %struct.igc_ring*)* @igc_configure_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_configure_tx_ring(%struct.igc_adapter* %0, %struct.igc_ring* %1) #0 {
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca %struct.igc_ring*, align 8
  %5 = alloca %struct.igc_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %3, align 8
  store %struct.igc_ring* %1, %struct.igc_ring** %4, align 8
  %9 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %9, i32 0, i32 1
  store %struct.igc_hw* %10, %struct.igc_hw** %5, align 8
  %11 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %12 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %15 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @IGC_TXDCTL(i32 %17)
  %19 = call i32 @wr32(i32 %18, i32 0)
  %20 = call i32 (...) @wrfl()
  %21 = call i32 @mdelay(i32 10)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @IGC_TDLEN(i32 %22)
  %24 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %25 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @wr32(i32 %23, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @IGC_TDBAL(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = and i64 %34, 4294967295
  %36 = trunc i64 %35 to i32
  %37 = call i32 @wr32(i32 %32, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @IGC_TDBAH(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 32
  %42 = call i32 @wr32(i32 %39, i32 %41)
  %43 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @IGC_TDT(i32 %46)
  %48 = add nsw i64 %45, %47
  %49 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %50 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @IGC_TDH(i32 %51)
  %53 = call i32 @wr32(i32 %52, i32 0)
  %54 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %55 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @writel(i32 0, i64 %56)
  %58 = load i32, i32* @IGC_TX_PTHRESH, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @IGC_TX_HTHRESH, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @IGC_TX_WTHRESH, align 4
  %66 = shl i32 %65, 16
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @IGC_TXDCTL_QUEUE_ENABLE, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @IGC_TXDCTL(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @wr32(i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @IGC_TXDCTL(i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @IGC_TDLEN(i32) #1

declare dso_local i32 @IGC_TDBAL(i32) #1

declare dso_local i32 @IGC_TDBAH(i32) #1

declare dso_local i64 @IGC_TDT(i32) #1

declare dso_local i32 @IGC_TDH(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
