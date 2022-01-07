; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_config_mac_addr_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_config_mac_addr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_hw = type { %struct.wiphy* }
%struct.wiphy = type { i32, %struct.TYPE_4__* }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_config_mac_addr_list(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %8 = call %struct.ieee80211_hw* @mt76_hw(%struct.mt76x02_dev* %7)
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  store %struct.wiphy* %11, %struct.wiphy** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %51, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %12
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %30 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i32* %28, i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %19
  br label %51

38:                                               ; preds = %19
  %39 = call i32 @BIT(i32 1)
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = shl i32 %45, 2
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %38, %37
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %12

54:                                               ; preds = %12
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %56 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %59 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %58, i32 0, i32 1
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %59, align 8
  %60 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %61 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %62)
  %64 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %65 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  ret void
}

declare dso_local %struct.ieee80211_hw* @mt76_hw(%struct.mt76x02_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
