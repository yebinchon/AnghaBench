; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_shared_key_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_shared_key_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.ieee80211_key_conf = type { i32 }

@MT_CIPHER_NONE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MT_SKEY_MODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_mac_shared_key_setup(%struct.mt76x02_dev* %0, i32 %1, i32 %2, %struct.ieee80211_key_conf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76x02_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %9, align 8
  %13 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %15 = call i32 @mt76x02_mac_get_key_info(%struct.ieee80211_key_conf* %13, i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MT_CIPHER_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %21 = icmp ne %struct.ieee80211_key_conf* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %56

25:                                               ; preds = %19, %4
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @MT_SKEY_MODE(i32 %27)
  %29 = call i32 @mt76_rr(%struct.mt76x02_dev* %26, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @MT_SKEY_MODE_MASK, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @MT_SKEY_MODE_SHIFT(i32 %31, i32 %32)
  %34 = shl i32 %30, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %12, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @MT_SKEY_MODE_SHIFT(i32 %39, i32 %40)
  %42 = shl i32 %38, %41
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @MT_SKEY_MODE(i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @mt76_wr(%struct.mt76x02_dev* %45, i32 %47, i32 %48)
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @MT_SKEY(i32 %51, i32 %52)
  %54 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %55 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %50, i32 %53, i32* %54, i32 128)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %25, %22
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @mt76x02_mac_get_key_info(%struct.ieee80211_key_conf*, i32*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @MT_SKEY_MODE(i32) #1

declare dso_local i32 @MT_SKEY_MODE_SHIFT(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr_copy(%struct.mt76x02_dev*, i32, i32*, i32) #1

declare dso_local i32 @MT_SKEY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
