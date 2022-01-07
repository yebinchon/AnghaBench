; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, %struct.ixgbevf_ring**, %struct.TYPE_6__*, i32, %struct.net_device*, %struct.ixgbe_hw }
%struct.ixgbevf_ring = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i64 }
%struct.ixgbe_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*, i64)* }
%struct.ixgbe_hw.0 = type opaque

@ixgbe_mac_X550_vf = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed to set MTU at %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_configure_rx(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbevf_ring*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 5
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 4
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %14 = call i32 @ixgbevf_setup_psrtype(%struct.ixgbevf_adapter* %13)
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ixgbe_mac_X550_vf, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %23 = call i32 @ixgbevf_setup_vfmrqc(%struct.ixgbevf_adapter* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %25, i32 0, i32 3
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ixgbe_hw.0*, i64)*, i32 (%struct.ixgbe_hw.0*, i64)** %31, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = bitcast %struct.ixgbe_hw* %33 to %struct.ixgbe_hw.0*
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ETH_HLEN, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* @ETH_FCS_LEN, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 %32(%struct.ixgbe_hw.0* %34, i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %43, i32 0, i32 3
  %45 = call i32 @spin_unlock_bh(i32* %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %24
  %49 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %48, %24
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %65, i32 0, i32 1
  %67 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %67, i64 %69
  %71 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %70, align 8
  store %struct.ixgbevf_ring* %71, %struct.ixgbevf_ring** %7, align 8
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %73 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %74 = call i32 @ixgbevf_set_rx_buffer_len(%struct.ixgbevf_adapter* %72, %struct.ixgbevf_ring* %73)
  %75 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %76 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %77 = call i32 @ixgbevf_configure_rx_ring(%struct.ixgbevf_adapter* %75, %struct.ixgbevf_ring* %76)
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %58

81:                                               ; preds = %58
  ret void
}

declare dso_local i32 @ixgbevf_setup_psrtype(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_setup_vfmrqc(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @ixgbevf_set_rx_buffer_len(%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*) #1

declare dso_local i32 @ixgbevf_configure_rx_ring(%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
