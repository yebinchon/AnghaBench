; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_wcid_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_wcid_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32 }

@MT_CIPHER_NONE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MT_WCID_ATTR_PKEY_MODE = common dso_local global i32 0, align 4
@MT_WCID_ATTR_PAIRWISE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@MT_CIPHER_TKIP = common dso_local global i32 0, align 4
@MT_CIPHER_AES_CCMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_mac_wcid_set_key(%struct.mt76x02_dev* %0, i32 %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76x02_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %7, align 8
  %12 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %14 = call i32 @mt76x02_mac_get_key_info(%struct.ieee80211_key_conf* %12, i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MT_CIPHER_NONE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %20 = icmp ne %struct.ieee80211_key_conf* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %108

24:                                               ; preds = %18, %3
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @MT_WCID_KEY(i32 %26)
  %28 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %29 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %25, i32 %27, i32* %28, i32 128)
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @MT_WCID_ATTR(i32 %31)
  %33 = load i32, i32* @MT_WCID_ATTR_PKEY_MODE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %30, i32 %32, i32 %33, i32 %34)
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %37 = call i32 @memset(i32* %36, i32 0, i32 32)
  %38 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %39 = icmp ne %struct.ieee80211_key_conf* %38, null
  br i1 %39, label %40, label %102

40:                                               ; preds = %24
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @MT_WCID_ATTR(i32 %42)
  %44 = load i32, i32* @MT_WCID_ATTR_PAIRWISE, align 4
  %45 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %41, i32 %43, i32 %44, i32 %53)
  %55 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %55, i32 0, i32 2
  %57 = call i32 @atomic64_read(i32* %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 6
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MT_CIPHER_TKIP, align 4
  %65 = icmp uge i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %40
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, 32
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %11, align 4
  %71 = ashr i32 %70, 16
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  %73 = call i32 @put_unaligned_le32(i32 %71, i32* %72)
  br label %74

74:                                               ; preds = %66, %40
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @MT_CIPHER_TKIP, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = ashr i32 %79, 8
  %81 = and i32 %80, 255
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32 %81, i32* %82, align 16
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = or i32 %84, 32
  %86 = and i32 %85, 127
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, 255
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  store i32 %89, i32* %90, align 8
  br label %101

91:                                               ; preds = %74
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @MT_CIPHER_AES_CCMP, align 4
  %94 = icmp uge i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, 65535
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %99 = call i32 @put_unaligned_le16(i32 %97, i32* %98)
  br label %100

100:                                              ; preds = %95, %91
  br label %101

101:                                              ; preds = %100, %78
  br label %102

102:                                              ; preds = %101, %24
  %103 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @MT_WCID_IV(i32 %104)
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %107 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %103, i32 %105, i32* %106, i32 32)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %102, %21
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @mt76x02_mac_get_key_info(%struct.ieee80211_key_conf*, i32*) #1

declare dso_local i32 @mt76_wr_copy(%struct.mt76x02_dev*, i32, i32*, i32) #1

declare dso_local i32 @MT_WCID_KEY(i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @MT_WCID_ATTR(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @MT_WCID_IV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
