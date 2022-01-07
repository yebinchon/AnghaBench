; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_tx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_tx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.arc_emac_priv = type { i32, %struct.buffer_state*, %struct.arc_emac_bd* }
%struct.buffer_state = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.arc_emac_bd = type { i32, i64 }

@TX_BD_NUM = common dso_local global i32 0, align 4
@FOR_EMAC = common dso_local global i32 0, align 4
@DROP = common dso_local global i32 0, align 4
@DEFR = common dso_local global i32 0, align 4
@LTCL = common dso_local global i32 0, align 4
@UFLO = common dso_local global i32 0, align 4
@FIRST_OR_LAST_MASK = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @arc_emac_tx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_emac_tx_clean(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.arc_emac_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.arc_emac_bd*, align 8
  %8 = alloca %struct.buffer_state*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.arc_emac_priv* %12, %struct.arc_emac_priv** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  store %struct.net_device_stats* %14, %struct.net_device_stats** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %153, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TX_BD_NUM, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %156

19:                                               ; preds = %15
  %20 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %21 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %20, i32 0, i32 0
  store i32* %21, i32** %6, align 8
  %22 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %23 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %22, i32 0, i32 2
  %24 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %23, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %24, i64 %27
  store %struct.arc_emac_bd* %28, %struct.arc_emac_bd** %7, align 8
  %29 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %30 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %29, i32 0, i32 1
  %31 = load %struct.buffer_state*, %struct.buffer_state** %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %31, i64 %34
  store %struct.buffer_state* %35, %struct.buffer_state** %8, align 8
  %36 = load %struct.buffer_state*, %struct.buffer_state** %8, align 8
  %37 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %36, i32 0, i32 0
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %9, align 8
  %39 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %7, align 8
  %40 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @FOR_EMAC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %19
  %48 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %7, align 8
  %49 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %47, %19
  br label %156

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @DROP, align 4
  %59 = load i32, i32* @DEFR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @LTCL, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @UFLO, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %57, %64
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %107

68:                                               ; preds = %56
  %69 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %70 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %74 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @DEFR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %68
  %82 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %83 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %68
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @LTCL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %93 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @UFLO, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %103 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %96
  br label %128

107:                                              ; preds = %56
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @FIRST_OR_LAST_MASK, align 4
  %110 = and i32 %108, %109
  %111 = call i64 @likely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %115 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %122 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  br label %127

127:                                              ; preds = %113, %107
  br label %128

128:                                              ; preds = %127, %106
  %129 = load %struct.net_device*, %struct.net_device** %2, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 0
  %131 = load %struct.buffer_state*, %struct.buffer_state** %8, align 8
  %132 = load i32, i32* @addr, align 4
  %133 = call i32 @dma_unmap_addr(%struct.buffer_state* %131, i32 %132)
  %134 = load %struct.buffer_state*, %struct.buffer_state** %8, align 8
  %135 = load i32, i32* @len, align 4
  %136 = call i32 @dma_unmap_len(%struct.buffer_state* %134, i32 %135)
  %137 = load i32, i32* @DMA_TO_DEVICE, align 4
  %138 = call i32 @dma_unmap_single(i32* %130, i32 %133, i32 %136, i32 %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %140 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %139)
  %141 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %7, align 8
  %142 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %7, align 8
  %144 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  %145 = load %struct.buffer_state*, %struct.buffer_state** %8, align 8
  %146 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %145, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %146, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %148, 1
  %150 = load i32, i32* @TX_BD_NUM, align 4
  %151 = urem i32 %149, %150
  %152 = load i32*, i32** %6, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %128
  %154 = load i32, i32* %5, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %15

156:                                              ; preds = %55, %15
  %157 = call i32 (...) @smp_mb()
  %158 = load %struct.net_device*, %struct.net_device** %2, align 8
  %159 = call i64 @netif_queue_stopped(%struct.net_device* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %163 = call i64 @arc_emac_tx_avail(%struct.arc_emac_priv* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load %struct.net_device*, %struct.net_device** %2, align 8
  %167 = call i32 @netif_wake_queue(%struct.net_device* %166)
  br label %168

168:                                              ; preds = %165, %161, %156
  ret void
}

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.buffer_state*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.buffer_state*, i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @arc_emac_tx_avail(%struct.arc_emac_priv*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
