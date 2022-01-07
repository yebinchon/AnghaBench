; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_refill_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_refill_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xge_pdata = type { %struct.TYPE_3__*, %struct.xge_desc_ring* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.xge_desc_ring = type { i64, %struct.TYPE_4__*, %struct.xge_raw_desc* }
%struct.TYPE_4__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.xge_raw_desc = type { i8*, i8* }

@XGENE_ENET_NUM_DESC = common dso_local global i64 0, align 8
@XGENE_ENET_STD_MTU = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NEXT_DESC_ADDRH = common dso_local global i32 0, align 4
@NEXT_DESC_ADDRL = common dso_local global i32 0, align 4
@PKT_ADDRH = common dso_local global i32 0, align 4
@PKT_ADDRL = common dso_local global i32 0, align 4
@E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @xge_refill_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xge_refill_buffers(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xge_pdata*, align 8
  %7 = alloca %struct.xge_desc_ring*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.xge_raw_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %18)
  store %struct.xge_pdata* %19, %struct.xge_pdata** %6, align 8
  %20 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %21 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %20, i32 0, i32 1
  %22 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %21, align 8
  store %struct.xge_desc_ring* %22, %struct.xge_desc_ring** %7, align 8
  %23 = load i64, i64* @XGENE_ENET_NUM_DESC, align 8
  %24 = sub i64 %23, 1
  store i64 %24, i64* %8, align 8
  %25 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %26 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.device* %28, %struct.device** %9, align 8
  %29 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %7, align 8
  %30 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  store i32 0, i32* %17, align 4
  br label %32

32:                                               ; preds = %130, %2
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %133

36:                                               ; preds = %32
  %37 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %7, align 8
  %38 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %37, i32 0, i32 2
  %39 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %39, i64 %40
  store %struct.xge_raw_desc* %41, %struct.xge_raw_desc** %10, align 8
  %42 = load i32, i32* @XGENE_ENET_STD_MTU, align 4
  store i32 %42, i32* %16, align 4
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %43, i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %14, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %137

55:                                               ; preds = %36
  %56 = load %struct.device*, %struct.device** %9, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %62 = call i32 @dma_map_single(%struct.device* %56, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load %struct.device*, %struct.device** %9, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i64 @dma_mapping_error(%struct.device* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %55
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @netdev_err(%struct.net_device* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %71 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %137

74:                                               ; preds = %55
  %75 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %76 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %7, align 8
  %77 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store %struct.sk_buff* %75, %struct.sk_buff** %81, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %7, align 8
  %84 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %82, i32* %88, align 8
  %89 = load i32, i32* @NEXT_DESC_ADDRH, align 4
  %90 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %10, align 8
  %91 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @le64_to_cpu(i8* %92)
  %94 = call i32 @GET_BITS(i32 %89, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* @NEXT_DESC_ADDRL, align 4
  %96 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %10, align 8
  %97 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @le64_to_cpu(i8* %98)
  %100 = call i32 @GET_BITS(i32 %95, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* @NEXT_DESC_ADDRL, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @SET_BITS(i32 %101, i32 %102)
  %104 = load i32, i32* @NEXT_DESC_ADDRH, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @SET_BITS(i32 %104, i32 %105)
  %107 = or i32 %103, %106
  %108 = load i32, i32* @PKT_ADDRH, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @upper_32_bits(i32 %109)
  %111 = call i32 @SET_BITS(i32 %108, i32 %110)
  %112 = or i32 %107, %111
  %113 = call i8* @cpu_to_le64(i32 %112)
  %114 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %10, align 8
  %115 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = call i32 (...) @dma_wmb()
  %117 = load i32, i32* @PKT_ADDRL, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @SET_BITS(i32 %117, i32 %118)
  %120 = load i32, i32* @E, align 4
  %121 = call i32 @SET_BITS(i32 %120, i32 1)
  %122 = or i32 %119, %121
  %123 = call i8* @cpu_to_le64(i32 %122)
  %124 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %10, align 8
  %125 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load i64, i64* %13, align 8
  %127 = add i64 %126, 1
  %128 = load i64, i64* %8, align 8
  %129 = and i64 %127, %128
  store i64 %129, i64* %13, align 8
  br label %130

130:                                              ; preds = %74
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  br label %32

133:                                              ; preds = %32
  %134 = load i64, i64* %13, align 8
  %135 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %7, align 8
  %136 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %67, %52
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @GET_BITS(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @SET_BITS(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @dma_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
