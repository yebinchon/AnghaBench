; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring* }
%struct.bgmac_dma_ring = type { i32*, i64, i64, i64, i32, i64 }

@BGMAC_MAX_TX_RINGS = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_RINGLO = common dso_local global i64 0, align 8
@BGMAC_DMA_TX_RINGHI = common dso_local global i64 0, align 8
@BGMAC_MAX_RX_RINGS = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_RINGLO = common dso_local global i64 0, align 8
@BGMAC_DMA_RX_RINGHI = common dso_local global i64 0, align 8
@BGMAC_RX_RING_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgmac*)* @bgmac_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgmac_dma_init(%struct.bgmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.bgmac_dma_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %63, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @BGMAC_MAX_TX_RINGS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  %13 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %14 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %13, i32 0, i32 1
  %15 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %15, i64 %17
  store %struct.bgmac_dma_ring* %18, %struct.bgmac_dma_ring** %4, align 8
  %19 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %20 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %25 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %26 = call i32 @bgmac_dma_tx_enable(%struct.bgmac* %24, %struct.bgmac_dma_ring* %25)
  br label %27

27:                                               ; preds = %23, %12
  %28 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %29 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %30 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BGMAC_DMA_TX_RINGLO, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %35 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @lower_32_bits(i32 %36)
  %38 = call i32 @bgmac_write(%struct.bgmac* %28, i64 %33, i32 %37)
  %39 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %40 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %41 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BGMAC_DMA_TX_RINGHI, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %46 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @upper_32_bits(i32 %47)
  %49 = call i32 @bgmac_write(%struct.bgmac* %39, i64 %44, i32 %48)
  %50 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %51 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %27
  %55 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %56 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %57 = call i32 @bgmac_dma_tx_enable(%struct.bgmac* %55, %struct.bgmac_dma_ring* %56)
  br label %58

58:                                               ; preds = %54, %27
  %59 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %60 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %62 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %8

66:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %150, %66
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @BGMAC_MAX_RX_RINGS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %153

71:                                               ; preds = %67
  %72 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %73 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %72, i32 0, i32 0
  %74 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %74, i64 %76
  store %struct.bgmac_dma_ring* %77, %struct.bgmac_dma_ring** %4, align 8
  %78 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %79 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %71
  %83 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %84 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %85 = call i32 @bgmac_dma_rx_enable(%struct.bgmac* %83, %struct.bgmac_dma_ring* %84)
  br label %86

86:                                               ; preds = %82, %71
  %87 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %88 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %89 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BGMAC_DMA_RX_RINGLO, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %94 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @lower_32_bits(i32 %95)
  %97 = call i32 @bgmac_write(%struct.bgmac* %87, i64 %92, i32 %96)
  %98 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %99 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %100 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @BGMAC_DMA_RX_RINGHI, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %105 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @upper_32_bits(i32 %106)
  %108 = call i32 @bgmac_write(%struct.bgmac* %98, i64 %103, i32 %107)
  %109 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %110 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %86
  %114 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %115 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %116 = call i32 @bgmac_dma_rx_enable(%struct.bgmac* %114, %struct.bgmac_dma_ring* %115)
  br label %117

117:                                              ; preds = %113, %86
  %118 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %119 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %121 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %143, %117
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @BGMAC_RX_RING_SLOTS, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %122
  %127 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %128 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %129 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = call i32 @bgmac_dma_rx_skb_for_slot(%struct.bgmac* %127, i32* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %154

138:                                              ; preds = %126
  %139 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %140 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @bgmac_dma_rx_setup_desc(%struct.bgmac* %139, %struct.bgmac_dma_ring* %140, i32 %141)
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %122

146:                                              ; preds = %122
  %147 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %148 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %149 = call i32 @bgmac_dma_rx_update_index(%struct.bgmac* %147, %struct.bgmac_dma_ring* %148)
  br label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %67

153:                                              ; preds = %67
  store i32 0, i32* %2, align 4
  br label %158

154:                                              ; preds = %137
  %155 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %156 = call i32 @bgmac_dma_cleanup(%struct.bgmac* %155)
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %153
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @bgmac_dma_tx_enable(%struct.bgmac*, %struct.bgmac_dma_ring*) #1

declare dso_local i32 @bgmac_write(%struct.bgmac*, i64, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @bgmac_dma_rx_enable(%struct.bgmac*, %struct.bgmac_dma_ring*) #1

declare dso_local i32 @bgmac_dma_rx_skb_for_slot(%struct.bgmac*, i32*) #1

declare dso_local i32 @bgmac_dma_rx_setup_desc(%struct.bgmac*, %struct.bgmac_dma_ring*, i32) #1

declare dso_local i32 @bgmac_dma_rx_update_index(%struct.bgmac*, %struct.bgmac_dma_ring*) #1

declare dso_local i32 @bgmac_dma_cleanup(%struct.bgmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
