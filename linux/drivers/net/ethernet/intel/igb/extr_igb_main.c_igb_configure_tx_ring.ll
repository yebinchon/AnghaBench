; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_configure_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_configure_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i64, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }
%struct.igb_ring = type { i32, i32, i32, i32, i64 }

@IGB_TX_PTHRESH = common dso_local global i32 0, align 4
@IGB_TX_HTHRESH = common dso_local global i32 0, align 4
@IGB_TX_WTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_configure_tx_ring(%struct.igb_adapter* %0, %struct.igb_ring* %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store %struct.igb_ring* %1, %struct.igb_ring** %4, align 8
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 1
  store %struct.e1000_hw* %10, %struct.e1000_hw** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %12 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %15 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @E1000_TDLEN(i32 %17)
  %19 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %20 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32 @wr32(i32 %18, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @E1000_TDBAL(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 4294967295
  %31 = trunc i64 %30 to i32
  %32 = call i32 @wr32(i32 %27, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @E1000_TDBAH(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 32
  %37 = call i32 @wr32(i32 %34, i32 %36)
  %38 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @E1000_TDT(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %45 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @E1000_TDH(i32 %46)
  %48 = call i32 @wr32(i32 %47, i32 0)
  %49 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %50 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @writel(i32 0, i64 %51)
  %53 = load i32, i32* @IGB_TX_PTHRESH, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @IGB_TX_HTHRESH, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @IGB_TX_WTHRESH, align 4
  %61 = shl i32 %60, 16
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %65 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %68 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memset(i32 %66, i32 0, i32 %72)
  %74 = load i32, i32* @E1000_TXDCTL_QUEUE_ENABLE, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @E1000_TXDCTL(i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @wr32(i32 %78, i32 %79)
  ret void
}

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @E1000_TDLEN(i32) #1

declare dso_local i32 @E1000_TDBAL(i32) #1

declare dso_local i32 @E1000_TDBAH(i32) #1

declare dso_local i64 @E1000_TDT(i32) #1

declare dso_local i32 @E1000_TDH(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @E1000_TXDCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
