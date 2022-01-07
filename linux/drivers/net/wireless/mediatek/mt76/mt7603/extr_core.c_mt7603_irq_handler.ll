; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_core.c_mt7603_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_core.c_mt7603_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@MT_INT_SOURCE_CSR = common dso_local global i32 0, align 4
@MT76_STATE_INITIALIZED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@MT_INT_MAC_IRQ3 = common dso_local global i32 0, align 4
@MT_HW_INT3_PRE_TBTT0 = common dso_local global i32 0, align 4
@MT_HW_INT3_TBTT0 = common dso_local global i32 0, align 4
@MT_INT_TX_DONE_ALL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7603_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mt7603_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mt7603_dev*
  store %struct.mt7603_dev* %10, %struct.mt7603_dev** %6, align 8
  %11 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %12 = load i32, i32* @MT_INT_SOURCE_CSR, align 4
  %13 = call i32 @mt76_rr(%struct.mt7603_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %15 = load i32, i32* @MT_INT_SOURCE_CSR, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @mt76_wr(%struct.mt7603_dev* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @MT76_STATE_INITIALIZED, align 4
  %19 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %22 = call i32 @test_bit(i32 %18, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %116

26:                                               ; preds = %2
  %27 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %28 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MT_INT_MAC_IRQ3, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %26
  %39 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %40 = call i32 @MT_HW_INT_STATUS(i32 3)
  %41 = call i32 @mt76_rr(%struct.mt7603_dev* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %43 = call i32 @MT_HW_INT_STATUS(i32 3)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @mt76_wr(%struct.mt7603_dev* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @MT_HW_INT3_PRE_TBTT0, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %52 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = call i32 @tasklet_schedule(i32* %53)
  br label %55

55:                                               ; preds = %50, %38
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MT_HW_INT3_TBTT0, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %62 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %68 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %67, i32 0, i32 0
  %69 = call i32 @mt76_csa_finish(%struct.TYPE_4__* %68)
  br label %70

70:                                               ; preds = %66, %60, %55
  br label %71

71:                                               ; preds = %70, %26
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @MT_INT_TX_DONE_ALL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %78 = load i32, i32* @MT_INT_TX_DONE_ALL, align 4
  %79 = call i32 @mt7603_irq_disable(%struct.mt7603_dev* %77, i32 %78)
  %80 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %81 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = call i32 @napi_schedule(i32* %82)
  br label %84

84:                                               ; preds = %76, %71
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @MT_INT_RX_DONE(i32 0)
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %91 = call i32 @MT_INT_RX_DONE(i32 0)
  %92 = call i32 @mt7603_irq_disable(%struct.mt7603_dev* %90, i32 %91)
  %93 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %94 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = call i32 @napi_schedule(i32* %97)
  br label %99

99:                                               ; preds = %89, %84
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @MT_INT_RX_DONE(i32 1)
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %106 = call i32 @MT_INT_RX_DONE(i32 1)
  %107 = call i32 @mt7603_irq_disable(%struct.mt7603_dev* %105, i32 %106)
  %108 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %109 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = call i32 @napi_schedule(i32* %112)
  br label %114

114:                                              ; preds = %104, %99
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %24
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @mt76_rr(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @MT_HW_INT_STATUS(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @mt76_csa_finish(%struct.TYPE_4__*) #1

declare dso_local i32 @mt7603_irq_disable(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @MT_INT_RX_DONE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
