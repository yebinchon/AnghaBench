; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_configure_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_configure_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i64, %struct.igc_hw }
%struct.igc_hw = type { i32 }
%struct.igc_ring = type { i32, i32, i32, i32, i64, i64, i64 }
%union.igc_adv_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IGC_RX_HDR_LEN = common dso_local global i32 0, align 4
@IGC_SRRCTL_BSIZEHDRSIZE_SHIFT = common dso_local global i32 0, align 4
@IGC_RXBUFFER_3072 = common dso_local global i32 0, align 4
@IGC_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@IGC_RXBUFFER_2048 = common dso_local global i32 0, align 4
@IGC_SRRCTL_DESCTYPE_ADV_ONEBUF = common dso_local global i32 0, align 4
@IGC_RX_PTHRESH = common dso_local global i32 0, align 4
@IGC_RX_HTHRESH = common dso_local global i32 0, align 4
@IGC_RX_WTHRESH = common dso_local global i32 0, align 4
@IGC_RXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*, %struct.igc_ring*)* @igc_configure_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_configure_rx_ring(%struct.igc_adapter* %0, %struct.igc_ring* %1) #0 {
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca %struct.igc_ring*, align 8
  %5 = alloca %struct.igc_hw*, align 8
  %6 = alloca %union.igc_adv_rx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %3, align 8
  store %struct.igc_ring* %1, %struct.igc_ring** %4, align 8
  %11 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %11, i32 0, i32 1
  store %struct.igc_hw* %12, %struct.igc_hw** %5, align 8
  %13 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %14 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %17 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @IGC_RXDCTL(i32 %19)
  %21 = call i32 @wr32(i32 %20, i32 0)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @IGC_RDBAL(i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, 4294967295
  %27 = trunc i64 %26 to i32
  %28 = call i32 @wr32(i32 %23, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @IGC_RDBAH(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = ashr i32 %31, 32
  %33 = call i32 @wr32(i32 %30, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @IGC_RDLEN(i32 %34)
  %36 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %37 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @wr32(i32 %35, i32 %41)
  %43 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @IGC_RDT(i32 %46)
  %48 = add nsw i64 %45, %47
  %49 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %50 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %49, i32 0, i32 6
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @IGC_RDH(i32 %51)
  %53 = call i32 @wr32(i32 %52, i32 0)
  %54 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %55 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @writel(i32 0, i64 %56)
  %58 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %59 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %61 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @IGC_RX_HDR_LEN, align 4
  %63 = load i32, i32* @IGC_SRRCTL_BSIZEHDRSIZE_SHIFT, align 4
  %64 = shl i32 %62, %63
  store i32 %64, i32* %8, align 4
  %65 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %66 = call i64 @ring_uses_large_buffer(%struct.igc_ring* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %2
  %69 = load i32, i32* @IGC_RXBUFFER_3072, align 4
  %70 = load i32, i32* @IGC_SRRCTL_BSIZEPKT_SHIFT, align 4
  %71 = ashr i32 %69, %70
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %80

74:                                               ; preds = %2
  %75 = load i32, i32* @IGC_RXBUFFER_2048, align 4
  %76 = load i32, i32* @IGC_SRRCTL_BSIZEPKT_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %74, %68
  %81 = load i32, i32* @IGC_SRRCTL_DESCTYPE_ADV_ONEBUF, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @IGC_SRRCTL(i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @wr32(i32 %85, i32 %86)
  %88 = load i32, i32* @IGC_RX_PTHRESH, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @IGC_RX_HTHRESH, align 4
  %92 = shl i32 %91, 8
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* @IGC_RX_WTHRESH, align 4
  %96 = shl i32 %95, 16
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %100 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %103 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memset(i32 %101, i32 0, i32 %107)
  %109 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %110 = call %union.igc_adv_rx_desc* @IGC_RX_DESC(%struct.igc_ring* %109, i32 0)
  store %union.igc_adv_rx_desc* %110, %union.igc_adv_rx_desc** %6, align 8
  %111 = load %union.igc_adv_rx_desc*, %union.igc_adv_rx_desc** %6, align 8
  %112 = bitcast %union.igc_adv_rx_desc* %111 to %struct.TYPE_4__*
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* @IGC_RXDCTL_QUEUE_ENABLE, align 4
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @IGC_RXDCTL(i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @wr32(i32 %119, i32 %120)
  ret void
}

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @IGC_RXDCTL(i32) #1

declare dso_local i32 @IGC_RDBAL(i32) #1

declare dso_local i32 @IGC_RDBAH(i32) #1

declare dso_local i32 @IGC_RDLEN(i32) #1

declare dso_local i64 @IGC_RDT(i32) #1

declare dso_local i32 @IGC_RDH(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @ring_uses_large_buffer(%struct.igc_ring*) #1

declare dso_local i32 @IGC_SRRCTL(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %union.igc_adv_rx_desc* @IGC_RX_DESC(%struct.igc_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
