; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_wcid_sync_pn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_wcid_sync_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.ieee80211_key_conf = type { i32 }

@MT_CIPHER_TKIP = common dso_local global i32 0, align 4
@MT_CIPHER_AES_CCMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_mac_wcid_sync_pn(%struct.mt76x02_dev* %0, i32 %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_key_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %6, align 8
  %12 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %14 = call i32 @mt76x02_mac_get_key_info(%struct.ieee80211_key_conf* %12, i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @MT_WCID_IV(i32 %16)
  %18 = call i32 @mt76_rr(%struct.mt76x02_dev* %15, i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @MT_WCID_IV(i32 %20)
  %22 = add nsw i64 %21, 4
  %23 = call i32 @mt76_rr(%struct.mt76x02_dev* %19, i64 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 %24, 16
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MT_CIPHER_TKIP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 255
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %51

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MT_CIPHER_AES_CCMP, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 65535
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %50

49:                                               ; preds = %40
  br label %56

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %52, i32 0, i32 0
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @atomic64_set(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %49
  ret void
}

declare dso_local i32 @mt76x02_mac_get_key_info(%struct.ieee80211_key_conf*, i32*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i64) #1

declare dso_local i64 @MT_WCID_IV(i32) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
