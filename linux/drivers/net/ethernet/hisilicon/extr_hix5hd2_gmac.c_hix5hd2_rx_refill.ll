; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { i64, %struct.sk_buff**, %struct.TYPE_2__, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { %struct.hix5hd2_desc* }
%struct.hix5hd2_desc = type { i8*, i8* }

@MAC_MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@RX_FQ_WR_ADDR = common dso_local global i64 0, align 8
@RX_FQ_RD_ADDR = common dso_local global i64 0, align 8
@RX_DESC_NUM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DESC_VLD_FREE = common dso_local global i64 0, align 8
@DESC_BUFF_LEN_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_priv*)* @hix5hd2_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_rx_refill(%struct.hix5hd2_priv* %0) #0 {
  %2 = alloca %struct.hix5hd2_priv*, align 8
  %3 = alloca %struct.hix5hd2_desc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %2, align 8
  %12 = load i64, i64* @MAC_MAX_FRAME_SIZE, align 8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %14 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RX_FQ_WR_ADDR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  %19 = call i64 @dma_cnt(i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %21 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RX_FQ_RD_ADDR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  %26 = call i64 @dma_cnt(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* @RX_DESC_NUM, align 4
  %30 = call i64 @CIRC_SPACE(i64 %27, i64 %28, i32 %29)
  store i64 %30, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %106, %1
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %109

36:                                               ; preds = %32
  %37 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %38 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %37, i32 0, i32 1
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %39, i64 %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %109

45:                                               ; preds = %36
  %46 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %47 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %10, align 8
  %50 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %48, i64 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = icmp eq %struct.sk_buff* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %109

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %60 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %67 = call i64 @dma_map_single(i32 %61, i32 %64, i64 %65, i32 %66)
  store i64 %67, i64* %11, align 8
  %68 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %69 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @dma_mapping_error(i32 %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %75)
  br label %109

77:                                               ; preds = %58
  %78 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %79 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %81, i64 %82
  store %struct.hix5hd2_desc* %83, %struct.hix5hd2_desc** %3, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i8* @cpu_to_le32(i64 %84)
  %86 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %3, align 8
  %87 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %90 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %89, i32 0, i32 1
  %91 = load %struct.sk_buff**, %struct.sk_buff*** %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %91, i64 %92
  store %struct.sk_buff* %88, %struct.sk_buff** %93, align 8
  %94 = load i64, i64* @DESC_VLD_FREE, align 8
  %95 = load i64, i64* %10, align 8
  %96 = sub nsw i64 %95, 1
  %97 = load i64, i64* @DESC_BUFF_LEN_OFF, align 8
  %98 = shl i64 %96, %97
  %99 = or i64 %94, %98
  %100 = call i8* @cpu_to_le32(i64 %99)
  %101 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %3, align 8
  %102 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i32, i32* @RX_DESC_NUM, align 4
  %105 = call i64 @dma_ring_incr(i64 %103, i32 %104)
  store i64 %105, i64* %8, align 8
  br label %106

106:                                              ; preds = %77
  %107 = load i64, i64* %9, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %9, align 8
  br label %32

109:                                              ; preds = %74, %56, %44, %32
  %110 = call i32 (...) @wmb()
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %5, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @dma_byte(i64 %115)
  %117 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %118 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @RX_FQ_WR_ADDR, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel_relaxed(i32 %116, i64 %121)
  br label %123

123:                                              ; preds = %114, %109
  ret void
}

declare dso_local i64 @dma_cnt(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @CIRC_SPACE(i64, i64, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @dma_ring_incr(i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @dma_byte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
