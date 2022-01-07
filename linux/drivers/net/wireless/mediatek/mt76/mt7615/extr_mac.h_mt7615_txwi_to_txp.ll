; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.h_mt7615_txwi_to_txp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.h_mt7615_txwi_to_txp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_txp = type { i32 }
%struct.mt76_dev = type { i32 }
%struct.mt76_txwi_cache = type { i32 }

@MT_TXD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mt7615_txp* (%struct.mt76_dev*, %struct.mt76_txwi_cache*)* @mt7615_txwi_to_txp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mt7615_txp* @mt7615_txwi_to_txp(%struct.mt76_dev* %0, %struct.mt76_txwi_cache* %1) #0 {
  %3 = alloca %struct.mt7615_txp*, align 8
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca %struct.mt76_txwi_cache*, align 8
  %6 = alloca i32*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store %struct.mt76_txwi_cache* %1, %struct.mt76_txwi_cache** %5, align 8
  %7 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %5, align 8
  %8 = icmp ne %struct.mt76_txwi_cache* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.mt7615_txp* null, %struct.mt7615_txp** %3, align 8
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %12 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %5, align 8
  %13 = call i32* @mt76_get_txwi_ptr(%struct.mt76_dev* %11, %struct.mt76_txwi_cache* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @MT_TXD_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to %struct.mt7615_txp*
  store %struct.mt7615_txp* %18, %struct.mt7615_txp** %3, align 8
  br label %19

19:                                               ; preds = %10, %9
  %20 = load %struct.mt7615_txp*, %struct.mt7615_txp** %3, align 8
  ret %struct.mt7615_txp* %20
}

declare dso_local i32* @mt76_get_txwi_ptr(%struct.mt76_dev*, %struct.mt76_txwi_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
