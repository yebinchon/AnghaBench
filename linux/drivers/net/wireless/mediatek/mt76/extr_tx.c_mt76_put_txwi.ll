; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_put_txwi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_put_txwi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, i32 }
%struct.mt76_txwi_cache = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_put_txwi(%struct.mt76_dev* %0, %struct.mt76_txwi_cache* %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_txwi_cache*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store %struct.mt76_txwi_cache* %1, %struct.mt76_txwi_cache** %4, align 8
  %5 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %4, align 8
  %6 = icmp ne %struct.mt76_txwi_cache* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %20

8:                                                ; preds = %2
  %9 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.mt76_txwi_cache*, %struct.mt76_txwi_cache** %4, align 8
  %13 = getelementptr inbounds %struct.mt76_txwi_cache, %struct.mt76_txwi_cache* %12, i32 0, i32 0
  %14 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %14, i32 0, i32 1
  %16 = call i32 @list_add(i32* %13, i32* %15)
  %17 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_bh(i32* %18)
  br label %20

20:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
