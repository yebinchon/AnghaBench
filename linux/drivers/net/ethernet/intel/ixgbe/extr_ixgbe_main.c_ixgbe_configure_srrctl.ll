; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_srrctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_srrctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_4__*, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ixgbe_ring = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@RING_F_RSS = common dso_local global i64 0, align 8
@IXGBE_RX_HDR_SIZE = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT = common dso_local global i32 0, align 4
@XDP_PACKET_HEADROOM = common dso_local global i32 0, align 4
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@__IXGBE_RX_3K_BUFFER = common dso_local global i32 0, align 4
@IXGBE_RXBUFFER_3K = common dso_local global i32 0, align 4
@IXGBE_RXBUFFER_2K = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, %struct.ixgbe_ring*)* @ixgbe_configure_srrctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_configure_srrctl(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %4, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 1
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %5, align 8
  %12 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* @RING_F_RSS, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %21, %2
  %33 = load i32, i32* @IXGBE_RX_HDR_SIZE, align 4
  %34 = load i32, i32* @IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %37 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %67

40:                                               ; preds = %32
  %41 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @XDP_PACKET_HEADROOM, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %40
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %66

60:                                               ; preds = %40
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %54
  br label %86

67:                                               ; preds = %32
  %68 = load i32, i32* @__IXGBE_RX_3K_BUFFER, align 4
  %69 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %70 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %69, i32 0, i32 0
  %71 = call i64 @test_bit(i32 %68, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @IXGBE_RXBUFFER_3K, align 4
  %75 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %76 = ashr i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %85

79:                                               ; preds = %67
  %80 = load i32, i32* @IXGBE_RXBUFFER_2K, align 4
  %81 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %82 = ashr i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %79, %73
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i32, i32* @IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @IXGBE_SRRCTL(i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %90, i32 %92, i32 %93)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_SRRCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
