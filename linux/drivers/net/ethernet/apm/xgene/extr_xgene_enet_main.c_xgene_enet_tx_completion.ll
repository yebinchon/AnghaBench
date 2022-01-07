; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_tx_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_tx_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i32, i32, i32, i32*, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.xgene_enet_raw_desc = type { i32, i32, i32 }
%struct.xgene_enet_pdata = type { i32, i32* }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@USERINFO = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@DATAADDR = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ET = common dso_local global i32 0, align 4
@MSS = common dso_local global i32 0, align 4
@LERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"completion skb is NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_desc_ring*, %struct.xgene_enet_raw_desc*)* @xgene_enet_tx_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_tx_completion(%struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_raw_desc* %1) #0 {
  %3 = alloca %struct.xgene_enet_desc_ring*, align 8
  %4 = alloca %struct.xgene_enet_raw_desc*, align 8
  %5 = alloca %struct.xgene_enet_pdata*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %3, align 8
  store %struct.xgene_enet_raw_desc* %1, %struct.xgene_enet_raw_desc** %4, align 8
  %14 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %15 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.xgene_enet_pdata* @netdev_priv(i32 %16)
  store %struct.xgene_enet_pdata* %17, %struct.xgene_enet_pdata** %5, align 8
  %18 = load i32, i32* @USERINFO, align 4
  %19 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %4, align 8
  %20 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le64_to_cpu(i32 %21)
  %23 = call i64 @GET_VAL(i32 %18, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %25 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %24, i32 0, i32 4
  %26 = load %struct.sk_buff**, %struct.sk_buff*** %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %26, i64 %27
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  %30 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %31 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %35 = mul i64 %33, %34
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32* %36, i32** %9, align 8
  %37 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %38 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.device* @ndev_to_dev(i32 %39)
  store %struct.device* %40, %struct.device** %7, align 8
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = load i32, i32* @DATAADDR, align 4
  %43 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %4, align 8
  %44 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le64_to_cpu(i32 %45)
  %47 = call i64 @GET_VAL(i32 %42, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @skb_headlen(%struct.sk_buff* %48)
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i32 @dma_unmap_single(%struct.device* %41, i64 %47, i32 %49, i32 %50)
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %77, %2
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %52
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %8, align 8
  %67 = load %struct.device*, %struct.device** %7, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @skb_frag_size(i32* %73)
  %75 = load i32, i32* @DMA_TO_DEVICE, align 4
  %76 = call i32 @dma_unmap_page(%struct.device* %67, i32 %72, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load i32, i32* @ET, align 4
  %82 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %4, align 8
  %83 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le64_to_cpu(i32 %84)
  %86 = call i64 @GET_BIT(i32 %81, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %80
  %89 = load i32, i32* @MSS, align 4
  %90 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %4, align 8
  %91 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le64_to_cpu(i32 %92)
  %94 = call i64 @GET_VAL(i32 %89, i32 %93)
  store i64 %94, i64* %11, align 8
  %95 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %96 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %95, i32 0, i32 0
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %99 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %106 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock(i32* %106)
  br label %108

108:                                              ; preds = %88, %80
  %109 = load i32, i32* @LERR, align 4
  %110 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %4, align 8
  %111 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le64_to_cpu(i32 %112)
  %114 = call i64 @GET_VAL(i32 %109, i32 %113)
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* %12, align 8
  %116 = icmp ugt i64 %115, 2
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %108
  %121 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %122 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %126 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %120, %108
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = call i64 @likely(%struct.sk_buff* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %134)
  br label %141

136:                                              ; preds = %129
  %137 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %138 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @netdev_err(i32 %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %141

141:                                              ; preds = %136, %133
  ret i32 0
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(i32) #1

declare dso_local i64 @GET_VAL(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.device* @ndev_to_dev(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @GET_BIT(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
