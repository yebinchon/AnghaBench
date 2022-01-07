; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_pci.c_mt7615_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_pci.c_mt7615_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@MT_INT_SOURCE_CSR = common dso_local global i32 0, align 4
@MT76_STATE_INITIALIZED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@MT_INT_TX_DONE_ALL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mt7615_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mt7615_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mt7615_dev*
  store %struct.mt7615_dev* %9, %struct.mt7615_dev** %6, align 8
  %10 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %11 = load i32, i32* @MT_INT_SOURCE_CSR, align 4
  %12 = call i32 @mt76_rr(%struct.mt7615_dev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %14 = load i32, i32* @MT_INT_SOURCE_CSR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mt76_wr(%struct.mt7615_dev* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @MT76_STATE_INITIALIZED, align 4
  %18 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %19 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = call i32 @test_bit(i32 %17, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %77

25:                                               ; preds = %2
  %26 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %27 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MT_INT_TX_DONE_ALL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %39 = load i32, i32* @MT_INT_TX_DONE_ALL, align 4
  %40 = call i32 @mt7615_irq_disable(%struct.mt7615_dev* %38, i32 %39)
  %41 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %42 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i32 @napi_schedule(i32* %43)
  br label %45

45:                                               ; preds = %37, %25
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @MT_INT_RX_DONE(i32 0)
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %52 = call i32 @MT_INT_RX_DONE(i32 0)
  %53 = call i32 @mt7615_irq_disable(%struct.mt7615_dev* %51, i32 %52)
  %54 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %55 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = call i32 @napi_schedule(i32* %58)
  br label %60

60:                                               ; preds = %50, %45
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @MT_INT_RX_DONE(i32 1)
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %67 = call i32 @MT_INT_RX_DONE(i32 1)
  %68 = call i32 @mt7615_irq_disable(%struct.mt7615_dev* %66, i32 %67)
  %69 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %70 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = call i32 @napi_schedule(i32* %73)
  br label %75

75:                                               ; preds = %65, %60
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %23
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @mt76_rr(%struct.mt7615_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mt7615_irq_disable(%struct.mt7615_dev*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @MT_INT_RX_DONE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
