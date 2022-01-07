; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mmio.c_mt76x02_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mmio.c_mt76x02_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i64, i32, i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MT_INT_SOURCE_CSR = common dso_local global i32 0, align 4
@MT76_STATE_INITIALIZED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@MT_INT_PRE_TBTT = common dso_local global i32 0, align 4
@MT_INT_TBTT = common dso_local global i32 0, align 4
@MT_TXQ_PSD = common dso_local global i64 0, align 8
@MT_INT_TX_STAT = common dso_local global i32 0, align 4
@MT_INT_TX_DONE_ALL = common dso_local global i32 0, align 4
@MT_INT_GPTIMER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mt76x02_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mt76x02_dev*
  store %struct.mt76x02_dev* %9, %struct.mt76x02_dev** %6, align 8
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %11 = load i32, i32* @MT_INT_SOURCE_CSR, align 4
  %12 = call i32 @mt76_rr(%struct.mt76x02_dev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %14 = load i32, i32* @MT_INT_SOURCE_CSR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mt76_wr(%struct.mt76x02_dev* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @MT76_STATE_INITIALIZED, align 4
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %19 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 6
  %21 = call i32 @test_bit(i32 %17, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %145

25:                                               ; preds = %2
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %29 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @trace_dev_irq(%struct.mt76x02_dev* %26, i32 %27, i32 %32)
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %35 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @MT_INT_RX_DONE(i32 0)
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %25
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %47 = call i32 @MT_INT_RX_DONE(i32 0)
  %48 = call i32 @mt76x02_irq_disable(%struct.mt76x02_dev* %46, i32 %47)
  %49 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %50 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @napi_schedule(i32* %53)
  br label %55

55:                                               ; preds = %45, %25
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @MT_INT_RX_DONE(i32 1)
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %62 = call i32 @MT_INT_RX_DONE(i32 1)
  %63 = call i32 @mt76x02_irq_disable(%struct.mt76x02_dev* %61, i32 %62)
  %64 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %65 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = call i32 @napi_schedule(i32* %68)
  br label %70

70:                                               ; preds = %60, %55
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MT_INT_PRE_TBTT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %77 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = call i32 @tasklet_schedule(i32* %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @MT_INT_TBTT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %80
  %86 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %87 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %93 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %92, i32 0, i32 1
  %94 = call i32 @mt76_csa_finish(%struct.TYPE_8__* %93)
  br label %106

95:                                               ; preds = %85
  %96 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %97 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %98 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i64, i64* @MT_TXQ_PSD, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mt76_queue_kick(%struct.mt76x02_dev* %96, i32 %104)
  br label %106

106:                                              ; preds = %95, %91
  br label %107

107:                                              ; preds = %106, %80
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @MT_INT_TX_STAT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %114 = call i32 @mt76x02_mac_poll_tx_status(%struct.mt76x02_dev* %113, i32 1)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @MT_INT_TX_STAT, align 4
  %118 = load i32, i32* @MT_INT_TX_DONE_ALL, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %115
  %123 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %124 = load i32, i32* @MT_INT_TX_DONE_ALL, align 4
  %125 = call i32 @mt76x02_irq_disable(%struct.mt76x02_dev* %123, i32 %124)
  %126 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %127 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = call i32 @napi_schedule(i32* %128)
  br label %130

130:                                              ; preds = %122, %115
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @MT_INT_GPTIMER, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %137 = load i32, i32* @MT_INT_GPTIMER, align 4
  %138 = call i32 @mt76x02_irq_disable(%struct.mt76x02_dev* %136, i32 %137)
  %139 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %140 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = call i32 @tasklet_schedule(i32* %141)
  br label %143

143:                                              ; preds = %135, %130
  %144 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %23
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @trace_dev_irq(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_INT_RX_DONE(i32) #1

declare dso_local i32 @mt76x02_irq_disable(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @mt76_csa_finish(%struct.TYPE_8__*) #1

declare dso_local i32 @mt76_queue_kick(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_mac_poll_tx_status(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
