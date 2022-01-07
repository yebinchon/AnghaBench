; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunbmac.c_bigmac_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunbmac.c_bigmac_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bigmac = type { %struct.TYPE_4__*, %struct.sk_buff**, i64, i64, i64, i64, %struct.bmac_init_block* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.bmac_init_block = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@RX_BUF_ALLOC_SIZE = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RXD_OWN = common dso_local global i32 0, align 4
@RXD_LENGTH = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bigmac*, i32)* @bigmac_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bigmac_init_rings(%struct.bigmac* %0, i32 %1) #0 {
  %3 = alloca %struct.bigmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmac_init_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.bigmac* %0, %struct.bigmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %10 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %9, i32 0, i32 6
  %11 = load %struct.bmac_init_block*, %struct.bmac_init_block** %10, align 8
  store %struct.bmac_init_block* %11, %struct.bmac_init_block** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = call i64 (...) @in_interrupt()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %22 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %24 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %26 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %28 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %30 = call i32 @bigmac_clean_rings(%struct.bigmac* %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %86, %20
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RX_RING_SIZE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %31
  %36 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.sk_buff* @big_mac_alloc_skb(i32 %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %8, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %86

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %45 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %44, i32 0, i32 1
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %46, i64 %48
  store %struct.sk_buff* %43, %struct.sk_buff** %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load i32, i32* @ETH_FRAME_LEN, align 4
  %52 = call i32 @skb_put(%struct.sk_buff* %50, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = call i32 @skb_reserve(%struct.sk_buff* %53, i32 34)
  %55 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %56 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %63 = sub nsw i32 %62, 34
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i32 @dma_map_single(i32* %58, i32 %61, i32 %63, i32 %64)
  %66 = load %struct.bmac_init_block*, %struct.bmac_init_block** %5, align 8
  %67 = getelementptr inbounds %struct.bmac_init_block, %struct.bmac_init_block* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %65, i32* %72, align 4
  %73 = load i32, i32* @RXD_OWN, align 4
  %74 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %75 = sub nsw i32 %74, 34
  %76 = load i32, i32* @RXD_LENGTH, align 4
  %77 = and i32 %75, %76
  %78 = or i32 %73, %77
  %79 = load %struct.bmac_init_block*, %struct.bmac_init_block** %5, align 8
  %80 = getelementptr inbounds %struct.bmac_init_block, %struct.bmac_init_block* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  br label %86

86:                                               ; preds = %42, %41
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %31

89:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %109, %89
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @TX_RING_SIZE, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load %struct.bmac_init_block*, %struct.bmac_init_block** %5, align 8
  %96 = getelementptr inbounds %struct.bmac_init_block, %struct.bmac_init_block* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.bmac_init_block*, %struct.bmac_init_block** %5, align 8
  %103 = getelementptr inbounds %struct.bmac_init_block, %struct.bmac_init_block* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %94
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %90

112:                                              ; preds = %90
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @bigmac_clean_rings(%struct.bigmac*) #1

declare dso_local %struct.sk_buff* @big_mac_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
