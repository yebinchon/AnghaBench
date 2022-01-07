; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunhme.c_happy_meal_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunhme.c_happy_meal_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.happy_meal = type { i32, %struct.sk_buff**, i64, i64, i64, i64, %struct.hmeal_init_block* }
%struct.sk_buff = type { i32 }
%struct.hmeal_init_block = type { i32*, i32* }

@.str = private unnamed_addr constant [42 x i8] c"happy_meal_init_rings: counters to zero, \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"clean, \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"init rxring, \00", align 1
@RX_RING_SIZE = common dso_local global i32 0, align 4
@RX_BUF_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@RX_OFFSET = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RXFLAG_OWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"init txring, \00", align 1
@TX_RING_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.happy_meal*)* @happy_meal_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @happy_meal_init_rings(%struct.happy_meal* %0) #0 {
  %2 = alloca %struct.happy_meal*, align 8
  %3 = alloca %struct.hmeal_init_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.happy_meal* %0, %struct.happy_meal** %2, align 8
  %7 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %8 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %7, i32 0, i32 6
  %9 = load %struct.hmeal_init_block*, %struct.hmeal_init_block** %8, align 8
  store %struct.hmeal_init_block* %9, %struct.hmeal_init_block** %3, align 8
  %10 = call i32 @HMD(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %12 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %14 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %16 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %18 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = call i32 @HMD(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %21 = call i32 @happy_meal_clean_rings(%struct.happy_meal* %20)
  %22 = call i32 @HMD(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %101, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RX_RING_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %104

27:                                               ; preds = %23
  %28 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.sk_buff* @happy_meal_alloc_skb(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %35 = load %struct.hmeal_init_block*, %struct.hmeal_init_block** %3, align 8
  %36 = getelementptr inbounds %struct.hmeal_init_block, %struct.hmeal_init_block* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @hme_write_rxd(%struct.happy_meal* %34, i32* %40, i32 0, i32 0)
  br label %101

42:                                               ; preds = %27
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %45 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %44, i32 0, i32 1
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %46, i64 %48
  store %struct.sk_buff* %43, %struct.sk_buff** %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load i32, i32* @ETH_FRAME_LEN, align 4
  %52 = load i32, i32* @RX_OFFSET, align 4
  %53 = add nsw i32 %51, %52
  %54 = add nsw i32 %53, 4
  %55 = call i32 @skb_put(%struct.sk_buff* %50, i32 %54)
  %56 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %57 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %64 = call i32 @dma_map_single(i32 %58, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %66 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @dma_mapping_error(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %42
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %72)
  %74 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %75 = load %struct.hmeal_init_block*, %struct.hmeal_init_block** %3, align 8
  %76 = getelementptr inbounds %struct.hmeal_init_block, %struct.hmeal_init_block* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @hme_write_rxd(%struct.happy_meal* %74, i32* %80, i32 0, i32 0)
  br label %101

82:                                               ; preds = %42
  %83 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %84 = load %struct.hmeal_init_block*, %struct.hmeal_init_block** %3, align 8
  %85 = getelementptr inbounds %struct.hmeal_init_block, %struct.hmeal_init_block* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* @RXFLAG_OWN, align 4
  %91 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %92 = load i32, i32* @RX_OFFSET, align 4
  %93 = sub nsw i32 %91, %92
  %94 = shl i32 %93, 16
  %95 = or i32 %90, %94
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @hme_write_rxd(%struct.happy_meal* %83, i32* %89, i32 %95, i32 %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = load i32, i32* @RX_OFFSET, align 4
  %100 = call i32 @skb_reserve(%struct.sk_buff* %98, i32 %99)
  br label %101

101:                                              ; preds = %82, %71, %33
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %23

104:                                              ; preds = %23
  %105 = call i32 @HMD(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %119, %104
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @TX_RING_SIZE, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %112 = load %struct.hmeal_init_block*, %struct.hmeal_init_block** %3, align 8
  %113 = getelementptr inbounds %struct.hmeal_init_block, %struct.hmeal_init_block* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @hme_write_txd(%struct.happy_meal* %111, i32* %117, i32 0, i32 0)
  br label %119

119:                                              ; preds = %110
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %106

122:                                              ; preds = %106
  %123 = call i32 @HMD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @HMD(i8*) #1

declare dso_local i32 @happy_meal_clean_rings(%struct.happy_meal*) #1

declare dso_local %struct.sk_buff* @happy_meal_alloc_skb(i32, i32) #1

declare dso_local i32 @hme_write_rxd(%struct.happy_meal*, i32*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @hme_write_txd(%struct.happy_meal*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
