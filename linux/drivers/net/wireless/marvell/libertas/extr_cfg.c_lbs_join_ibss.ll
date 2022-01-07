; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_join_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_join_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_ibss_params = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lbs_private = type { %struct.net_device* }
%struct.cfg80211_bss = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_BSS_TYPE_IBSS = common dso_local global i32 0, align 4
@IEEE80211_PRIVACY_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_ibss_params*)* @lbs_join_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_join_ibss(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_ibss_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_ibss_params*, align 8
  %8 = alloca %struct.lbs_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cfg80211_bss*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_ibss_params* %2, %struct.cfg80211_ibss_params** %7, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %12 = call %struct.lbs_private* @wiphy_priv(%struct.wiphy* %11)
  store %struct.lbs_private* %12, %struct.lbs_private** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = icmp eq %struct.net_device* %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  %22 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %23 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %75

30:                                               ; preds = %21
  %31 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %32 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %33 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @lbs_set_channel(%struct.lbs_private* %31, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %75

42:                                               ; preds = %30
  %43 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %44 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %45 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %49 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %52 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %55 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IEEE80211_BSS_TYPE_IBSS, align 4
  %58 = load i32, i32* @IEEE80211_PRIVACY_ANY, align 4
  %59 = call %struct.cfg80211_bss* @cfg80211_get_bss(%struct.wiphy* %43, %struct.TYPE_4__* %47, i32 %50, i32 %53, i32 %56, i32 %57, i32 %58)
  store %struct.cfg80211_bss* %59, %struct.cfg80211_bss** %10, align 8
  %60 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %10, align 8
  %61 = icmp ne %struct.cfg80211_bss* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %42
  %63 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %64 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %65 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %10, align 8
  %66 = call i32 @lbs_ibss_join_existing(%struct.lbs_private* %63, %struct.cfg80211_ibss_params* %64, %struct.cfg80211_bss* %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %68 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %10, align 8
  %69 = call i32 @cfg80211_put_bss(%struct.wiphy* %67, %struct.cfg80211_bss* %68)
  br label %74

70:                                               ; preds = %42
  %71 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %72 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %73 = call i32 @lbs_ibss_start_new(%struct.lbs_private* %71, %struct.cfg80211_ibss_params* %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %62
  br label %75

75:                                               ; preds = %74, %41, %27
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.lbs_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @lbs_set_channel(%struct.lbs_private*, i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(%struct.wiphy*, %struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lbs_ibss_join_existing(%struct.lbs_private*, %struct.cfg80211_ibss_params*, %struct.cfg80211_bss*) #1

declare dso_local i32 @cfg80211_put_bss(%struct.wiphy*, %struct.cfg80211_bss*) #1

declare dso_local i32 @lbs_ibss_start_new(%struct.lbs_private*, %struct.cfg80211_ibss_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
