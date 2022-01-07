; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }
%struct.ieee80211_key_conf = type { i32 }

@MT_CIPHER_NONE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MT_CIPHER_WEP40 = common dso_local global i32 0, align 4
@MT_CIPHER_WEP104 = common dso_local global i32 0, align 4
@MT_WTBL1_W2_KEY_TYPE = common dso_local global i32 0, align 4
@MT_WTBL1_W0_KEY_IDX = common dso_local global i32 0, align 4
@MT_WTBL1_W0_RX_KEY_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7603_wtbl_set_key(%struct.mt7603_dev* %0, i32 %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7603_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [32 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @mt7603_wtbl3_addr(i32 %12)
  store i64 %13, i64* %9, align 8
  store i32 128, i32* %11, align 4
  %14 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %16 = call i32 @mt7603_mac_get_key_info(%struct.ieee80211_key_conf* %14, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @MT_CIPHER_NONE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %22 = icmp ne %struct.ieee80211_key_conf* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %79

26:                                               ; preds = %20, %3
  %27 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %28 = icmp ne %struct.ieee80211_key_conf* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MT_CIPHER_WEP40, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @MT_CIPHER_WEP104, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33, %29
  %38 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 16
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %9, align 8
  store i32 16, i32* %11, align 4
  br label %45

45:                                               ; preds = %37, %33, %26
  %46 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @mt76_wr_copy(%struct.mt7603_dev* %46, i64 %47, i32* %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @mt7603_wtbl1_addr(i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add nsw i64 %54, 8
  %56 = load i32, i32* @MT_WTBL1_W2_KEY_TYPE, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %53, i64 %55, i32 %56, i32 %57)
  %59 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %60 = icmp ne %struct.ieee80211_key_conf* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %45
  %62 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* @MT_WTBL1_W0_KEY_IDX, align 4
  %65 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %62, i64 %63, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %61, %45
  %70 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* @MT_WTBL1_W0_RX_KEY_VALID, align 4
  %73 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %74 = icmp ne %struct.ieee80211_key_conf* %73, null
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %70, i64 %71, i32 %72, i32 %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %69, %23
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @mt7603_wtbl3_addr(i32) #1

declare dso_local i32 @mt7603_mac_get_key_info(%struct.ieee80211_key_conf*, i32*) #1

declare dso_local i32 @mt76_wr_copy(%struct.mt7603_dev*, i64, i32*, i32) #1

declare dso_local i64 @mt7603_wtbl1_addr(i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt7603_dev*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
