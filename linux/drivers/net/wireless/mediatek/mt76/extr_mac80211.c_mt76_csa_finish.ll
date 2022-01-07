; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_csa_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_csa_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i64, i32 }

@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@__mt76_csa_finish = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_csa_finish(%struct.mt76_dev* %0) #0 {
  %2 = alloca %struct.mt76_dev*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %2, align 8
  %3 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  %9 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %13 = load i32, i32* @__mt76_csa_finish, align 4
  %14 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %15 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %11, i32 %12, i32 %13, %struct.mt76_dev* %14)
  %16 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %17 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.mt76_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
