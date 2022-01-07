; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_dma_err_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_dma_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nixge_priv = type { i64, i64, i64, i64, i64, %struct.nixge_hw_dma_bd*, %struct.nixge_tx_skb*, %struct.nixge_hw_dma_bd* }
%struct.nixge_tx_skb = type { i32 }
%struct.nixge_hw_dma_bd = type { i64, i64 }

@XAXIDMA_TX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_RX_CR_OFFSET = common dso_local global i32 0, align 4
@TX_BD_NUM = common dso_local global i64 0, align 8
@RX_BD_NUM = common dso_local global i64 0, align 8
@XAXIDMA_COALESCE_MASK = common dso_local global i64 0, align 8
@XAXIDMA_DFT_RX_THRESHOLD = common dso_local global i64 0, align 8
@XAXIDMA_COALESCE_SHIFT = common dso_local global i64 0, align 8
@XAXIDMA_DELAY_MASK = common dso_local global i64 0, align 8
@XAXIDMA_DFT_RX_WAITBOUND = common dso_local global i64 0, align 8
@XAXIDMA_DELAY_SHIFT = common dso_local global i64 0, align 8
@XAXIDMA_IRQ_ALL_MASK = common dso_local global i64 0, align 8
@XAXIDMA_DFT_TX_THRESHOLD = common dso_local global i64 0, align 8
@XAXIDMA_DFT_TX_WAITBOUND = common dso_local global i64 0, align 8
@XAXIDMA_RX_CDESC_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_CR_RUNSTOP_MASK = common dso_local global i64 0, align 8
@XAXIDMA_RX_TDESC_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_TX_CDESC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @nixge_dma_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nixge_dma_err_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nixge_priv*, align 8
  %4 = alloca %struct.nixge_hw_dma_bd*, align 8
  %5 = alloca %struct.nixge_tx_skb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.nixge_priv*
  store %struct.nixge_priv* %9, %struct.nixge_priv** %3, align 8
  %10 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %11 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %12 = call i32 @__nixge_device_reset(%struct.nixge_priv* %10, i32 %11)
  %13 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %14 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %15 = call i32 @__nixge_device_reset(%struct.nixge_priv* %13, i32 %14)
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %42, %1
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @TX_BD_NUM, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %22 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %21, i32 0, i32 7
  %23 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %23, i64 %24
  store %struct.nixge_hw_dma_bd* %25, %struct.nixge_hw_dma_bd** %4, align 8
  %26 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %27 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %26, i32 0, i32 6
  %28 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %28, i64 %29
  store %struct.nixge_tx_skb* %30, %struct.nixge_tx_skb** %5, align 8
  %31 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %32 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %5, align 8
  %33 = call i32 @nixge_tx_skb_unmap(%struct.nixge_priv* %31, %struct.nixge_tx_skb* %32)
  %34 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %4, align 8
  %35 = call i32 @nixge_hw_dma_bd_set_phys(%struct.nixge_hw_dma_bd* %34, i32 0)
  %36 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %4, align 8
  %37 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %4, align 8
  %39 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %4, align 8
  %41 = call i32 @nixge_hw_dma_bd_set_offset(%struct.nixge_hw_dma_bd* %40, i32 0)
  br label %42

42:                                               ; preds = %20
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %16

45:                                               ; preds = %16
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %58, %45
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @RX_BD_NUM, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %52 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %51, i32 0, i32 5
  %53 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %53, i64 %54
  store %struct.nixge_hw_dma_bd* %55, %struct.nixge_hw_dma_bd** %4, align 8
  %56 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %4, align 8
  %57 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %46

61:                                               ; preds = %46
  %62 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %63 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %65 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %67 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %69 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %70 = call i64 @nixge_dma_read_reg(%struct.nixge_priv* %68, i32 %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @XAXIDMA_COALESCE_MASK, align 8
  %73 = xor i64 %72, -1
  %74 = and i64 %71, %73
  %75 = load i64, i64* @XAXIDMA_DFT_RX_THRESHOLD, align 8
  %76 = load i64, i64* @XAXIDMA_COALESCE_SHIFT, align 8
  %77 = shl i64 %75, %76
  %78 = or i64 %74, %77
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @XAXIDMA_DELAY_MASK, align 8
  %81 = xor i64 %80, -1
  %82 = and i64 %79, %81
  %83 = load i64, i64* @XAXIDMA_DFT_RX_WAITBOUND, align 8
  %84 = load i64, i64* @XAXIDMA_DELAY_SHIFT, align 8
  %85 = shl i64 %83, %84
  %86 = or i64 %82, %85
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* @XAXIDMA_IRQ_ALL_MASK, align 8
  %88 = load i64, i64* %6, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %6, align 8
  %90 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %91 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %90, i32 %91, i64 %92)
  %94 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %95 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %96 = call i64 @nixge_dma_read_reg(%struct.nixge_priv* %94, i32 %95)
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @XAXIDMA_COALESCE_MASK, align 8
  %99 = xor i64 %98, -1
  %100 = and i64 %97, %99
  %101 = load i64, i64* @XAXIDMA_DFT_TX_THRESHOLD, align 8
  %102 = load i64, i64* @XAXIDMA_COALESCE_SHIFT, align 8
  %103 = shl i64 %101, %102
  %104 = or i64 %100, %103
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @XAXIDMA_DELAY_MASK, align 8
  %107 = xor i64 %106, -1
  %108 = and i64 %105, %107
  %109 = load i64, i64* @XAXIDMA_DFT_TX_WAITBOUND, align 8
  %110 = load i64, i64* @XAXIDMA_DELAY_SHIFT, align 8
  %111 = shl i64 %109, %110
  %112 = or i64 %108, %111
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* @XAXIDMA_IRQ_ALL_MASK, align 8
  %114 = load i64, i64* %6, align 8
  %115 = or i64 %114, %113
  store i64 %115, i64* %6, align 8
  %116 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %117 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %116, i32 %117, i64 %118)
  %120 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %121 = load i32, i32* @XAXIDMA_RX_CDESC_OFFSET, align 4
  %122 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %123 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @nixge_dma_write_desc_reg(%struct.nixge_priv* %120, i32 %121, i64 %124)
  %126 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %127 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %128 = call i64 @nixge_dma_read_reg(%struct.nixge_priv* %126, i32 %127)
  store i64 %128, i64* %6, align 8
  %129 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %130 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* @XAXIDMA_CR_RUNSTOP_MASK, align 8
  %133 = or i64 %131, %132
  %134 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %129, i32 %130, i64 %133)
  %135 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %136 = load i32, i32* @XAXIDMA_RX_TDESC_OFFSET, align 4
  %137 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %138 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @RX_BD_NUM, align 8
  %141 = sub i64 %140, 1
  %142 = mul i64 16, %141
  %143 = add i64 %139, %142
  %144 = call i32 @nixge_dma_write_desc_reg(%struct.nixge_priv* %135, i32 %136, i64 %143)
  %145 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %146 = load i32, i32* @XAXIDMA_TX_CDESC_OFFSET, align 4
  %147 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %148 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @nixge_dma_write_desc_reg(%struct.nixge_priv* %145, i32 %146, i64 %149)
  %151 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %152 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %153 = call i64 @nixge_dma_read_reg(%struct.nixge_priv* %151, i32 %152)
  store i64 %153, i64* %6, align 8
  %154 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %155 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @XAXIDMA_CR_RUNSTOP_MASK, align 8
  %158 = or i64 %156, %157
  %159 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %154, i32 %155, i64 %158)
  ret void
}

declare dso_local i32 @__nixge_device_reset(%struct.nixge_priv*, i32) #1

declare dso_local i32 @nixge_tx_skb_unmap(%struct.nixge_priv*, %struct.nixge_tx_skb*) #1

declare dso_local i32 @nixge_hw_dma_bd_set_phys(%struct.nixge_hw_dma_bd*, i32) #1

declare dso_local i32 @nixge_hw_dma_bd_set_offset(%struct.nixge_hw_dma_bd*, i32) #1

declare dso_local i64 @nixge_dma_read_reg(%struct.nixge_priv*, i32) #1

declare dso_local i32 @nixge_dma_write_reg(%struct.nixge_priv*, i32, i64) #1

declare dso_local i32 @nixge_dma_write_desc_reg(%struct.nixge_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
