; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_rxdesc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_rxdesc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ave_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i64, i32 }

@AVE_MAX_ETHFRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"can't allocate skb for Rx\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVE_FRAME_HEADROOM = common dso_local global i64 0, align 8
@AVE_DESCID_RX = common dso_local global i32 0, align 4
@AVE_STS_INTR = common dso_local global i32 0, align 4
@AVE_STS_OWN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"can't map skb for Rx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ave_rxdesc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_rxdesc_prepare(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ave_private*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ave_private* @netdev_priv(%struct.net_device* %10)
  store %struct.ave_private* %11, %struct.ave_private** %6, align 8
  %12 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %13 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = load i32, i32* @AVE_MAX_ETHFRAME, align 4
  %26 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %7, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @netdev_err(%struct.net_device* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %105

34:                                               ; preds = %23
  %35 = load i64, i64* @AVE_FRAME_HEADROOM, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i64, i64* @AVE_FRAME_HEADROOM, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  br label %47

47:                                               ; preds = %34, %2
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load i32, i32* @AVE_DESCID_RX, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @AVE_STS_INTR, align 4
  %52 = load i32, i32* @AVE_STS_OWN, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @ave_desc_write_cmdsts(%struct.net_device* %48, i32 %49, i32 %50, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %57 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AVE_FRAME_HEADROOM, align 8
  %67 = sub nsw i64 %65, %66
  %68 = load i32, i32* @AVE_MAX_ETHFRAME, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @AVE_FRAME_HEADROOM, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %73 = call i32 @ave_dma_map(%struct.net_device* %55, %struct.TYPE_4__* %62, i64 %67, i64 %71, i32 %72, i32* %8)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %47
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = call i32 @netdev_err(%struct.net_device* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %105

82:                                               ; preds = %47
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %85 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store %struct.sk_buff* %83, %struct.sk_buff** %91, align 8
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = load i32, i32* @AVE_DESCID_RX, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @ave_desc_write_addr(%struct.net_device* %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = load i32, i32* @AVE_DESCID_RX, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @AVE_STS_INTR, align 4
  %101 = load i32, i32* @AVE_MAX_ETHFRAME, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @ave_desc_write_cmdsts(%struct.net_device* %97, i32 %98, i32 %99, i32 %102)
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %82, %76, %29
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @ave_desc_write_cmdsts(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @ave_dma_map(%struct.net_device*, %struct.TYPE_4__*, i64, i64, i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ave_desc_write_addr(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
