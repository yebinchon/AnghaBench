; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xrx200_priv = type { %struct.xrx200_chan, i32, %struct.xrx200_chan }
%struct.xrx200_chan = type { %struct.TYPE_4__, i64*, %struct.xrx200_priv* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@DMA_PORT_ETOP = common dso_local global i32 0, align 4
@XRX200_DMA_RX = common dso_local global i32 0, align 4
@LTQ_DESC_NUM = common dso_local global i32 0, align 4
@xrx200_dma_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"xrx200_net_rx\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to request RX irq %d\0A\00", align 1
@XRX200_DMA_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"xrx200_net_tx\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to request TX irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xrx200_priv*)* @xrx200_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xrx200_dma_init(%struct.xrx200_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xrx200_priv*, align 8
  %4 = alloca %struct.xrx200_chan*, align 8
  %5 = alloca %struct.xrx200_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xrx200_priv* %0, %struct.xrx200_priv** %3, align 8
  %8 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %9 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %8, i32 0, i32 0
  store %struct.xrx200_chan* %9, %struct.xrx200_chan** %4, align 8
  %10 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %11 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %10, i32 0, i32 2
  store %struct.xrx200_chan* %11, %struct.xrx200_chan** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @DMA_PORT_ETOP, align 4
  %13 = call i32 @ltq_dma_init_port(i32 %12)
  %14 = load i32, i32* @XRX200_DMA_RX, align 4
  %15 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %16 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 4
  %18 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %19 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %22 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %25 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %26 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %25, i32 0, i32 2
  store %struct.xrx200_priv* %24, %struct.xrx200_priv** %26, align 8
  %27 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %28 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %27, i32 0, i32 0
  %29 = call i32 @ltq_dma_alloc_rx(%struct.TYPE_4__* %28)
  %30 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %31 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %47, %1
  %34 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %35 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @LTQ_DESC_NUM, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %42 = call i32 @xrx200_alloc_skb(%struct.xrx200_chan* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %154

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %49 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %33

53:                                               ; preds = %33
  %54 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %55 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %58 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %61 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @xrx200_dma_irq, align 4
  %65 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %66 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %65, i32 0, i32 0
  %67 = call i32 @devm_request_irq(i32 %59, i32 %63, i32 %64, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.xrx200_chan* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %53
  %71 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %72 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %75 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %124

79:                                               ; preds = %53
  %80 = load i32, i32* @XRX200_DMA_TX, align 4
  %81 = load %struct.xrx200_chan*, %struct.xrx200_chan** %5, align 8
  %82 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %85 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.xrx200_chan*, %struct.xrx200_chan** %5, align 8
  %88 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %91 = load %struct.xrx200_chan*, %struct.xrx200_chan** %5, align 8
  %92 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %91, i32 0, i32 2
  store %struct.xrx200_priv* %90, %struct.xrx200_priv** %92, align 8
  %93 = load %struct.xrx200_chan*, %struct.xrx200_chan** %5, align 8
  %94 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %93, i32 0, i32 0
  %95 = call i32 @ltq_dma_alloc_tx(%struct.TYPE_4__* %94)
  %96 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %97 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.xrx200_chan*, %struct.xrx200_chan** %5, align 8
  %100 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @xrx200_dma_irq, align 4
  %104 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %105 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %104, i32 0, i32 2
  %106 = call i32 @devm_request_irq(i32 %98, i32 %102, i32 %103, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.xrx200_chan* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %79
  %110 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %111 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.xrx200_chan*, %struct.xrx200_chan** %5, align 8
  %114 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %120

118:                                              ; preds = %79
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %159

120:                                              ; preds = %109
  %121 = load %struct.xrx200_chan*, %struct.xrx200_chan** %5, align 8
  %122 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %121, i32 0, i32 0
  %123 = call i32 @ltq_dma_free(%struct.TYPE_4__* %122)
  br label %124

124:                                              ; preds = %120, %70
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %150, %124
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @LTQ_DESC_NUM, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %125
  %130 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %131 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %129
  %140 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %141 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @dev_kfree_skb_any(i64 %147)
  br label %149

149:                                              ; preds = %139, %129
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %125

153:                                              ; preds = %125
  br label %154

154:                                              ; preds = %153, %45
  %155 = load %struct.xrx200_chan*, %struct.xrx200_chan** %4, align 8
  %156 = getelementptr inbounds %struct.xrx200_chan, %struct.xrx200_chan* %155, i32 0, i32 0
  %157 = call i32 @ltq_dma_free(%struct.TYPE_4__* %156)
  %158 = load i32, i32* %6, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %154, %118
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @ltq_dma_init_port(i32) #1

declare dso_local i32 @ltq_dma_alloc_rx(%struct.TYPE_4__*) #1

declare dso_local i32 @xrx200_alloc_skb(%struct.xrx200_chan*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.xrx200_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ltq_dma_alloc_tx(%struct.TYPE_4__*) #1

declare dso_local i32 @ltq_dma_free(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
