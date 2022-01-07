; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.adm8211_priv* }
%struct.ieee80211_conf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.adm8211_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @adm8211_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm8211_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adm8211_priv*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 1
  %10 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  store %struct.adm8211_priv* %10, %struct.adm8211_priv** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  store %struct.ieee80211_conf* %12, %struct.ieee80211_conf** %6, align 8
  %13 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ieee80211_frequency_to_channel(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %22 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %28 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %30 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %31 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @adm8211_rf_set_channel(%struct.ieee80211_hw* %29, i32 %32)
  br label %34

34:                                               ; preds = %25, %2
  ret i32 0
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @adm8211_rf_set_channel(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
