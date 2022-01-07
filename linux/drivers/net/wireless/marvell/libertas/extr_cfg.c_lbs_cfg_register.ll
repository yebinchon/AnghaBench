; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32**, i32 }

@CFG80211_SIGNAL_TYPE_MBM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@lbs_band_2ghz = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@cipher_suites = common dso_local global i32 0, align 4
@lbs_reg_notifier = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot register wiphy device\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot register network device\0A\00", align 1
@lbs_scan_worker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_cfg_register(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %5 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %6 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %5, i32 0, i32 3
  %7 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  store %struct.wireless_dev* %7, %struct.wireless_dev** %3, align 8
  %8 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %9 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @CFG80211_SIGNAL_TYPE_MBM, align 4
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 6
  store i32 %12, i32* %16, align 8
  %17 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = or i32 %18, %20
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %27 = call i64 @lbs_rtap_supported(%struct.lbs_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %33 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %29, %1
  %39 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %40 = call i64 @lbs_mesh_activated(%struct.lbs_private* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %46 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %42, %38
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %53 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  store i32* @lbs_band_2ghz, i32** %58, align 8
  %59 = load i32, i32* @cipher_suites, align 4
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  store i32 %59, i32* %63, align 8
  %64 = load i32, i32* @cipher_suites, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %67 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @lbs_reg_notifier, align 4
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %72 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 8
  %75 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %76 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = call i32 @wiphy_register(%struct.TYPE_2__* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %51
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %51
  %84 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %85 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %87 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @register_netdev(i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %83
  %95 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %96 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %95, i32 0, i32 1
  %97 = load i32, i32* @lbs_scan_worker, align 4
  %98 = call i32 @INIT_DELAYED_WORK(i32* %96, i32 %97)
  %99 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %100 = call i32 @lbs_cfg_set_regulatory_hint(%struct.lbs_private* %99)
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @lbs_rtap_supported(%struct.lbs_private*) #1

declare dso_local i64 @lbs_mesh_activated(%struct.lbs_private*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wiphy_register(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @register_netdev(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @lbs_cfg_set_regulatory_hint(%struct.lbs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
