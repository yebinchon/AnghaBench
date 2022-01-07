; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_txrx_ring_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_txrx_ring_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_ring**, %struct.ixgbe_ring**, %struct.ixgbe_ring** }
%struct.ixgbe_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_txrx_ring_disable(%struct.ixgbe_adapter* %0, i32 %1) #0 {
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
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %30 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %31 = call i32 @ixgbe_disable_txr(%struct.ixgbe_adapter* %29, %struct.ixgbe_ring* %30)
  %32 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %33 = icmp ne %struct.ixgbe_ring* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %36 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %37 = call i32 @ixgbe_disable_txr(%struct.ixgbe_adapter* %35, %struct.ixgbe_ring* %36)
  br label %38

38:                                               ; preds = %34, %2
  %39 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %40 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %41 = call i32 @ixgbe_disable_rxr_hw(%struct.ixgbe_adapter* %39, %struct.ixgbe_ring* %40)
  %42 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %43 = icmp ne %struct.ixgbe_ring* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 (...) @synchronize_rcu()
  br label %46

46:                                               ; preds = %44, %38
  %47 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %48 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @napi_disable(i32* %50)
  %52 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %53 = call i32 @ixgbe_clean_tx_ring(%struct.ixgbe_ring* %52)
  %54 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %55 = icmp ne %struct.ixgbe_ring* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %58 = call i32 @ixgbe_clean_tx_ring(%struct.ixgbe_ring* %57)
  br label %59

59:                                               ; preds = %56, %46
  %60 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %61 = call i32 @ixgbe_clean_rx_ring(%struct.ixgbe_ring* %60)
  %62 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %63 = call i32 @ixgbe_reset_txr_stats(%struct.ixgbe_ring* %62)
  %64 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %65 = icmp ne %struct.ixgbe_ring* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %68 = call i32 @ixgbe_reset_txr_stats(%struct.ixgbe_ring* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %71 = call i32 @ixgbe_reset_rxr_stats(%struct.ixgbe_ring* %70)
  ret void
}

declare dso_local i32 @ixgbe_disable_txr(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_disable_rxr_hw(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @ixgbe_clean_tx_ring(%struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_clean_rx_ring(%struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_reset_txr_stats(%struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_reset_rxr_stats(%struct.ixgbe_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
