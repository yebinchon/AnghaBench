; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_..mt76.h_mt76_get_txwi_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_..mt76.h_mt76_get_txwi_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mt76_txwi_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.mt76_dev*, %struct.mt76_txwi_cache*)* @mt76_get_txwi_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mt76_get_txwi_ptr(%struct.mt76_dev* %0, %struct.mt76_txwi_cache* %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_txwi_cache*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store %struct.mt76_txwi_cache* %1, %struct.mt76_txwi_cache** %4, align 8
  %5 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %4, align 8
  %6 = bitcast %struct.mt76_txwi_cache* %5 to i32*
  %7 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = sub i64 0, %12
  %14 = getelementptr inbounds i32, i32* %6, i64 %13
  ret i32* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
