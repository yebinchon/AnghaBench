; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_configure_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_configure_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i64, i64, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.igb_ring = type { i32, i32, i32, i32, i64 }
%union.e1000_adv_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@IGB_RX_HDR_LEN = common dso_local global i32 0, align 4
@E1000_SRRCTL_BSIZEHDRSIZE_SHIFT = common dso_local global i32 0, align 4
@IGB_RXBUFFER_3072 = common dso_local global i32 0, align 4
@E1000_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@IGB_RXBUFFER_2048 = common dso_local global i32 0, align 4
@E1000_SRRCTL_DESCTYPE_ADV_ONEBUF = common dso_local global i32 0, align 4
@e1000_82580 = common dso_local global i64 0, align 8
@E1000_SRRCTL_TIMESTAMP = common dso_local global i32 0, align 4
@E1000_SRRCTL_DROP_EN = common dso_local global i32 0, align 4
@IGB_RX_PTHRESH = common dso_local global i32 0, align 4
@IGB_RX_HTHRESH = common dso_local global i32 0, align 4
@IGB_RX_WTHRESH = common dso_local global i32 0, align 4
@E1000_RXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_configure_rx_ring(%struct.igb_adapter* %0, %struct.igb_ring* %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %union.e1000_adv_rx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store %struct.igb_ring* %1, %struct.igb_ring** %4, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 3
  store %struct.e1000_hw* %12, %struct.e1000_hw** %5, align 8
  %13 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %14 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %17 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @E1000_RXDCTL(i32 %19)
  %21 = call i32 @wr32(i32 %20, i32 0)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @E1000_RDBAL(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, 4294967295
  %27 = trunc i64 %26 to i32
  %28 = call i32 @wr32(i32 %23, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @E1000_RDBAH(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 32
  %33 = call i32 @wr32(i32 %30, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @E1000_RDLEN(i32 %34)
  %36 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %37 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @wr32(i32 %35, i32 %41)
  %43 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @E1000_RDT(i32 %46)
  %48 = add nsw i64 %45, %47
  %49 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %50 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @E1000_RDH(i32 %51)
  %53 = call i32 @wr32(i32 %52, i32 0)
  %54 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %55 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @writel(i32 0, i64 %56)
  %58 = load i32, i32* @IGB_RX_HDR_LEN, align 4
  %59 = load i32, i32* @E1000_SRRCTL_BSIZEHDRSIZE_SHIFT, align 4
  %60 = shl i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %62 = call i64 @ring_uses_large_buffer(%struct.igb_ring* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %2
  %65 = load i32, i32* @IGB_RXBUFFER_3072, align 4
  %66 = load i32, i32* @E1000_SRRCTL_BSIZEPKT_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %76

70:                                               ; preds = %2
  %71 = load i32, i32* @IGB_RXBUFFER_2048, align 4
  %72 = load i32, i32* @E1000_SRRCTL_BSIZEPKT_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %70, %64
  %77 = load i32, i32* @E1000_SRRCTL_DESCTYPE_ADV_ONEBUF, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @e1000_82580, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load i32, i32* @E1000_SRRCTL_TIMESTAMP, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %86, %76
  %91 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %95, %90
  %101 = load i32, i32* @E1000_SRRCTL_DROP_EN, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @E1000_SRRCTL(i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @wr32(i32 %106, i32 %107)
  %109 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, 7
  %112 = call i32 @igb_set_vmolr(%struct.igb_adapter* %109, i32 %111, i32 1)
  %113 = load i32, i32* @IGB_RX_PTHRESH, align 4
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* @IGB_RX_HTHRESH, align 4
  %117 = shl i32 %116, 8
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* @IGB_RX_WTHRESH, align 4
  %121 = shl i32 %120, 16
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %125 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %128 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = mul i64 4, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memset(i32 %126, i32 0, i32 %132)
  %134 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %135 = call %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring* %134, i32 0)
  store %union.e1000_adv_rx_desc* %135, %union.e1000_adv_rx_desc** %6, align 8
  %136 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %6, align 8
  %137 = bitcast %union.e1000_adv_rx_desc* %136 to %struct.TYPE_6__*
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  %140 = load i32, i32* @E1000_RXDCTL_QUEUE_ENABLE, align 4
  %141 = load i32, i32* %10, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @E1000_RXDCTL(i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @wr32(i32 %144, i32 %145)
  ret void
}

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @E1000_RXDCTL(i32) #1

declare dso_local i32 @E1000_RDBAL(i32) #1

declare dso_local i32 @E1000_RDBAH(i32) #1

declare dso_local i32 @E1000_RDLEN(i32) #1

declare dso_local i64 @E1000_RDT(i32) #1

declare dso_local i32 @E1000_RDH(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @ring_uses_large_buffer(%struct.igb_ring*) #1

declare dso_local i32 @E1000_SRRCTL(i32) #1

declare dso_local i32 @igb_set_vmolr(%struct.igb_adapter*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
