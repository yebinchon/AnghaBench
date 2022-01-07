; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ltq_etop_priv = type { %struct.TYPE_6__*, %struct.ltq_etop_chan*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.ltq_etop_chan = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@PMU_PPE = common dso_local global i32 0, align 4
@ETOP_MII_MASK = common dso_local global i32 0, align 4
@ETOP_MII_REVERSE = common dso_local global i32 0, align 4
@LTQ_ETOP_CFG = common dso_local global i32 0, align 4
@ETOP_MII_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown mii mode %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@PPE32_CGEN = common dso_local global i32 0, align 4
@LQ_PPE32_ENET_MAC_CFG = common dso_local global i32 0, align 4
@DMA_PORT_ETOP = common dso_local global i32 0, align 4
@MAX_DMA_CHAN = common dso_local global i32 0, align 4
@LTQ_DMA_CH0_INT = common dso_local global i32 0, align 4
@ltq_etop_dma_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"etop_tx\00", align 1
@LTQ_DESC_NUM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"etop_rx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ltq_etop_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_etop_hw_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ltq_etop_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ltq_etop_chan*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ltq_etop_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ltq_etop_priv* %9, %struct.ltq_etop_priv** %4, align 8
  %10 = load i32, i32* @PMU_PPE, align 4
  %11 = call i32 @ltq_pmu_enable(i32 %10)
  %12 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %27 [
    i32 128, label %17
    i32 129, label %22
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @ETOP_MII_MASK, align 4
  %19 = load i32, i32* @ETOP_MII_REVERSE, align 4
  %20 = load i32, i32* @LTQ_ETOP_CFG, align 4
  %21 = call i32 @ltq_etop_w32_mask(i32 %18, i32 %19, i32 %20)
  br label %37

22:                                               ; preds = %1
  %23 = load i32, i32* @ETOP_MII_MASK, align 4
  %24 = load i32, i32* @ETOP_MII_NORMAL, align 4
  %25 = load i32, i32* @LTQ_ETOP_CFG, align 4
  %26 = call i32 @ltq_etop_w32_mask(i32 %23, i32 %24, i32 %25)
  br label %37

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %30 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netdev_err(%struct.net_device* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %131

37:                                               ; preds = %22, %17
  %38 = load i32, i32* @PPE32_CGEN, align 4
  %39 = load i32, i32* @LQ_PPE32_ENET_MAC_CFG, align 4
  %40 = call i32 @ltq_etop_w32(i32 %38, i32 %39)
  %41 = load i32, i32* @DMA_PORT_ETOP, align 4
  %42 = call i32 @ltq_dma_init_port(i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %127, %37
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MAX_DMA_CHAN, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %130

47:                                               ; preds = %43
  %48 = load i32, i32* @LTQ_DMA_CH0_INT, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %52 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %51, i32 0, i32 1
  %53 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %53, i64 %55
  store %struct.ltq_etop_chan* %56, %struct.ltq_etop_chan** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %7, align 8
  %59 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %7, align 8
  %62 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 8
  %63 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %64 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %7, align 8
  %68 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  store i32* %66, i32** %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @IS_TX(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %47
  %74 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %7, align 8
  %75 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %74, i32 0, i32 1
  %76 = call i32 @ltq_dma_alloc_tx(%struct.TYPE_7__* %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @ltq_etop_dma_irq, align 4
  %79 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %80 = call i32 @request_irq(i32 %77, i32 %78, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.ltq_etop_priv* %79)
  br label %122

81:                                               ; preds = %47
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @IS_RX(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %121

85:                                               ; preds = %81
  %86 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %7, align 8
  %87 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %86, i32 0, i32 1
  %88 = call i32 @ltq_dma_alloc_rx(%struct.TYPE_7__* %87)
  %89 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %7, align 8
  %90 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %107, %85
  %93 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %7, align 8
  %94 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LTQ_DESC_NUM, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %92
  %100 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %7, align 8
  %101 = call i64 @ltq_etop_alloc_skb(%struct.ltq_etop_chan* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %131

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %7, align 8
  %109 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %110, align 8
  br label %92

113:                                              ; preds = %92
  %114 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %7, align 8
  %115 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @ltq_etop_dma_irq, align 4
  %119 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %120 = call i32 @request_irq(i32 %117, i32 %118, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.ltq_etop_priv* %119)
  br label %121

121:                                              ; preds = %113, %81
  br label %122

122:                                              ; preds = %121, %73
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %7, align 8
  %125 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  br label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %43

130:                                              ; preds = %43
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %103, %27
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.ltq_etop_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ltq_pmu_enable(i32) #1

declare dso_local i32 @ltq_etop_w32_mask(i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ltq_etop_w32(i32, i32) #1

declare dso_local i32 @ltq_dma_init_port(i32) #1

declare dso_local i64 @IS_TX(i32) #1

declare dso_local i32 @ltq_dma_alloc_tx(%struct.TYPE_7__*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ltq_etop_priv*) #1

declare dso_local i64 @IS_RX(i32) #1

declare dso_local i32 @ltq_dma_alloc_rx(%struct.TYPE_7__*) #1

declare dso_local i64 @ltq_etop_alloc_skb(%struct.ltq_etop_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
