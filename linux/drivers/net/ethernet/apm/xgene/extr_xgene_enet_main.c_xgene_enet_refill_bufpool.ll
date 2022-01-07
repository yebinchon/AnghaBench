; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_refill_bufpool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_refill_bufpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i32, i32, %struct.sk_buff**, %struct.xgene_enet_raw_desc16*, %struct.net_device* }
%struct.sk_buff = type { i32 }
%struct.xgene_enet_raw_desc16 = type { i32 }
%struct.net_device = type { i32 }
%struct.xgene_enet_pdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_enet_desc_ring*, i32)* }
%struct.device = type { i32 }

@BUF_LEN_CODE_2K = common dso_local global i32 0, align 4
@SKB_BUFFER_SIZE = common dso_local global i32 0, align 4
@XGENE_ENET_STD_MTU = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DATAADDR = common dso_local global i32 0, align 4
@BUFDATALEN = common dso_local global i32 0, align 4
@COHERENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_desc_ring*, i32)* @xgene_enet_refill_bufpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_refill_bufpool(%struct.xgene_enet_desc_ring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_enet_desc_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xgene_enet_raw_desc16*, align 8
  %8 = alloca %struct.xgene_enet_pdata*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %18 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %21 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %13, align 4
  %24 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %25 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %24, i32 0, i32 4
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %9, align 8
  %27 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %28 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %27, i32 0, i32 4
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = call %struct.device* @ndev_to_dev(%struct.net_device* %29)
  store %struct.device* %30, %struct.device** %10, align 8
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %31)
  store %struct.xgene_enet_pdata* %32, %struct.xgene_enet_pdata** %8, align 8
  %33 = load i32, i32* @BUF_LEN_CODE_2K, align 4
  %34 = load i32, i32* @SKB_BUFFER_SIZE, align 4
  %35 = call i32 @GENMASK(i32 11, i32 0)
  %36 = and i32 %34, %35
  %37 = or i32 %33, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* @XGENE_ENET_STD_MTU, align 4
  store i32 %38, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %106, %2
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %109

43:                                               ; preds = %39
  %44 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %45 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %44, i32 0, i32 3
  %46 = load %struct.xgene_enet_raw_desc16*, %struct.xgene_enet_raw_desc16** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.xgene_enet_raw_desc16, %struct.xgene_enet_raw_desc16* %46, i64 %48
  store %struct.xgene_enet_raw_desc16* %49, %struct.xgene_enet_raw_desc16** %7, align 8
  %50 = load %struct.net_device*, %struct.net_device** %9, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %50, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %6, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %121

62:                                               ; preds = %43
  %63 = load %struct.device*, %struct.device** %10, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %69 = call i32 @dma_map_single(%struct.device* %63, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.device*, %struct.device** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @dma_mapping_error(%struct.device* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %62
  %75 = load %struct.net_device*, %struct.net_device** %9, align 8
  %76 = call i32 @netdev_err(%struct.net_device* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %121

81:                                               ; preds = %62
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %84 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %83, i32 0, i32 2
  %85 = load %struct.sk_buff**, %struct.sk_buff*** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %85, i64 %87
  store %struct.sk_buff* %82, %struct.sk_buff** %88, align 8
  %89 = load i32, i32* @DATAADDR, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @SET_VAL(i32 %89, i32 %90)
  %92 = load i32, i32* @BUFDATALEN, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @SET_VAL(i32 %92, i32 %93)
  %95 = or i32 %91, %94
  %96 = load i32, i32* @COHERENT, align 4
  %97 = call i32 @SET_BIT(i32 %96)
  %98 = or i32 %95, %97
  %99 = call i32 @cpu_to_le64(i32 %98)
  %100 = load %struct.xgene_enet_raw_desc16*, %struct.xgene_enet_raw_desc16** %7, align 8
  %101 = getelementptr inbounds %struct.xgene_enet_raw_desc16, %struct.xgene_enet_raw_desc16* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  %104 = load i32, i32* %13, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %81
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %39

109:                                              ; preds = %39
  %110 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %8, align 8
  %111 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32 (%struct.xgene_enet_desc_ring*, i32)*, i32 (%struct.xgene_enet_desc_ring*, i32)** %113, align 8
  %115 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 %114(%struct.xgene_enet_desc_ring* %115, i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %120 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %109, %74, %59
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.device* @ndev_to_dev(%struct.net_device*) #1

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @SET_VAL(i32, i32) #1

declare dso_local i32 @SET_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
