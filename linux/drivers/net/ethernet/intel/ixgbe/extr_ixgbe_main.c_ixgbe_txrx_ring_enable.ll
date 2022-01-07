; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_txrx_ring_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_txrx_ring_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_ring**, %struct.ixgbe_ring**, %struct.ixgbe_ring** }
%struct.ixgbe_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@__IXGBE_TX_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_txrx_ring_enable(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %struct.ixgbe_ring*, align 8
  %7 = alloca %struct.ixgbe_ring*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 2
  %10 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %10, i64 %12
  %14 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %13, align 8
  store %struct.ixgbe_ring* %14, %struct.ixgbe_ring** %5, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 1
  %17 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %17, i64 %19
  %21 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %20, align 8
  store %struct.ixgbe_ring* %21, %struct.ixgbe_ring** %6, align 8
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 0
  %24 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %24, i64 %26
  %28 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %27, align 8
  store %struct.ixgbe_ring* %28, %struct.ixgbe_ring** %7, align 8
  %29 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %30 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @napi_enable(i32* %32)
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %35 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %36 = call i32 @ixgbe_configure_tx_ring(%struct.ixgbe_adapter* %34, %struct.ixgbe_ring* %35)
  %37 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %38 = icmp ne %struct.ixgbe_ring* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %41 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %42 = call i32 @ixgbe_configure_tx_ring(%struct.ixgbe_adapter* %40, %struct.ixgbe_ring* %41)
  br label %43

43:                                               ; preds = %39, %2
  %44 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %45 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %46 = call i32 @ixgbe_configure_rx_ring(%struct.ixgbe_adapter* %44, %struct.ixgbe_ring* %45)
  %47 = load i32, i32* @__IXGBE_TX_DISABLED, align 4
  %48 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %49 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %48, i32 0, i32 0
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %52 = icmp ne %struct.ixgbe_ring* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load i32, i32* @__IXGBE_TX_DISABLED, align 4
  %55 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %56 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %55, i32 0, i32 0
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %53, %43
  ret void
}

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @ixgbe_configure_tx_ring(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_configure_rx_ring(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
