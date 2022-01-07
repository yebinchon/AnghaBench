; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_filter_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_filter_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }

@MT_TX_ABORT = common dso_local global i32 0, align 4
@MT_TX_ABORT_EN = common dso_local global i32 0, align 4
@MT_TX_ABORT_WCID = common dso_local global i32 0, align 4
@MT_DMA_FQCR0 = common dso_local global i32 0, align 4
@MT_DMA_FQCR0_BUSY = common dso_local global i32 0, align 4
@MT_DMA_FQCR0_TARGET_WCID = common dso_local global i32 0, align 4
@MT_DMA_FQCR0_TARGET_QID = common dso_local global i32 0, align 4
@MT_DMA_FQCR0_DEST_PORT_ID = common dso_local global i32 0, align 4
@MT_DMA_FQCR0_DEST_QUEUE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_filter_tx(%struct.mt7603_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7603_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 3, i32* %8, align 4
  store i32 8, i32* %9, align 4
  br label %14

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mt7603_wtbl_set_skip_tx(%struct.mt7603_dev* %15, i32 %16, i32 1)
  %18 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %19 = load i32, i32* @MT_TX_ABORT, align 4
  %20 = load i32, i32* @MT_TX_ABORT_EN, align 4
  %21 = load i32, i32* @MT_TX_ABORT_WCID, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @FIELD_PREP(i32 %21, i32 %22)
  %24 = or i32 %20, %23
  %25 = call i32 @mt76_wr(%struct.mt7603_dev* %18, i32 %19, i32 %24)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %58, %14
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %31 = load i32, i32* @MT_DMA_FQCR0, align 4
  %32 = load i32, i32* @MT_DMA_FQCR0_BUSY, align 4
  %33 = load i32, i32* @MT_DMA_FQCR0_TARGET_WCID, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @FIELD_PREP(i32 %33, i32 %34)
  %36 = or i32 %32, %35
  %37 = load i32, i32* @MT_DMA_FQCR0_TARGET_QID, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @FIELD_PREP(i32 %37, i32 %38)
  %40 = or i32 %36, %39
  %41 = load i32, i32* @MT_DMA_FQCR0_DEST_PORT_ID, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @FIELD_PREP(i32 %41, i32 %42)
  %44 = or i32 %40, %43
  %45 = load i32, i32* @MT_DMA_FQCR0_DEST_QUEUE_ID, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @FIELD_PREP(i32 %45, i32 %46)
  %48 = or i32 %44, %47
  %49 = call i32 @mt76_wr(%struct.mt7603_dev* %30, i32 %31, i32 %48)
  %50 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %51 = load i32, i32* @MT_DMA_FQCR0, align 4
  %52 = load i32, i32* @MT_DMA_FQCR0_BUSY, align 4
  %53 = call i32 @mt76_poll(%struct.mt7603_dev* %50, i32 %51, i32 %52, i32 0, i32 5000)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON_ONCE(i32 %56)
  br label %58

58:                                               ; preds = %29
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %26

61:                                               ; preds = %26
  %62 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %63 = load i32, i32* @MT_TX_ABORT, align 4
  %64 = call i32 @mt76_wr(%struct.mt7603_dev* %62, i32 %63, i32 0)
  %65 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @mt7603_wtbl_set_skip_tx(%struct.mt7603_dev* %65, i32 %66, i32 0)
  ret void
}

declare dso_local i32 @mt7603_wtbl_set_skip_tx(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mt76_poll(%struct.mt7603_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
