; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_alloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.mt76_driver_ops*, %struct.device*, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.mt76_dev* }
%struct.device = type { i32 }
%struct.ieee80211_ops = type { i32 }
%struct.mt76_driver_ops = type { i32 }

@mt76_tx_tasklet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mt76_dev* @mt76_alloc_device(%struct.device* %0, i32 %1, %struct.ieee80211_ops* %2, %struct.mt76_driver_ops* %3) #0 {
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_ops*, align 8
  %9 = alloca %struct.mt76_driver_ops*, align 8
  %10 = alloca %struct.ieee80211_hw*, align 8
  %11 = alloca %struct.mt76_dev*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_ops* %2, %struct.ieee80211_ops** %8, align 8
  store %struct.mt76_driver_ops* %3, %struct.mt76_driver_ops** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %8, align 8
  %14 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 %12, %struct.ieee80211_ops* %13)
  store %struct.ieee80211_hw* %14, %struct.ieee80211_hw** %10, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %16 = icmp ne %struct.ieee80211_hw* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.mt76_dev* null, %struct.mt76_dev** %5, align 8
  br label %56

18:                                               ; preds = %4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load %struct.mt76_dev*, %struct.mt76_dev** %20, align 8
  store %struct.mt76_dev* %21, %struct.mt76_dev** %11, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %23 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  %24 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %23, i32 0, i32 9
  store %struct.ieee80211_hw* %22, %struct.ieee80211_hw** %24, align 8
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  %27 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %26, i32 0, i32 8
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.mt76_driver_ops*, %struct.mt76_driver_ops** %9, align 8
  %29 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  %30 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %29, i32 0, i32 7
  store %struct.mt76_driver_ops* %28, %struct.mt76_driver_ops** %30, align 8
  %31 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  %32 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %31, i32 0, i32 6
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  %35 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %34, i32 0, i32 5
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  %38 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %37, i32 0, i32 4
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  %41 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %40, i32 0, i32 3
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  %44 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %43, i32 0, i32 2
  %45 = call i32 @init_waitqueue_head(i32* %44)
  %46 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  %47 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %46, i32 0, i32 1
  %48 = call i32 @skb_queue_head_init(i32* %47)
  %49 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  %50 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %49, i32 0, i32 0
  %51 = load i32, i32* @mt76_tx_tasklet, align 4
  %52 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  %53 = ptrtoint %struct.mt76_dev* %52 to i64
  %54 = call i32 @tasklet_init(i32* %50, i32 %51, i64 %53)
  %55 = load %struct.mt76_dev*, %struct.mt76_dev** %11, align 8
  store %struct.mt76_dev* %55, %struct.mt76_dev** %5, align 8
  br label %56

56:                                               ; preds = %18, %17
  %57 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  ret %struct.mt76_dev* %57
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, %struct.ieee80211_ops*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
