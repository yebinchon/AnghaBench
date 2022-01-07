; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_mp_device = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_ops = type { i32 }
%struct.brcmf_pub = type { %struct.brcmf_mp_device*, %struct.TYPE_2__*, %struct.cfg80211_ops*, %struct.wiphy* }
%struct.TYPE_2__ = type { %struct.brcmf_pub* }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_alloc(%struct.device* %0, %struct.brcmf_mp_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.brcmf_mp_device*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.cfg80211_ops*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.brcmf_mp_device* %1, %struct.brcmf_mp_device** %5, align 8
  store %struct.brcmf_pub* null, %struct.brcmf_pub** %8, align 8
  %9 = load i32, i32* @TRACE, align 4
  %10 = call i32 @brcmf_dbg(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %5, align 8
  %12 = call %struct.cfg80211_ops* @brcmf_cfg80211_get_ops(%struct.brcmf_mp_device* %11)
  store %struct.cfg80211_ops* %12, %struct.cfg80211_ops** %7, align 8
  %13 = load %struct.cfg80211_ops*, %struct.cfg80211_ops** %7, align 8
  %14 = icmp ne %struct.cfg80211_ops* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.cfg80211_ops*, %struct.cfg80211_ops** %7, align 8
  %20 = call %struct.wiphy* @wiphy_new(%struct.cfg80211_ops* %19, i32 32)
  store %struct.wiphy* %20, %struct.wiphy** %6, align 8
  %21 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %22 = icmp ne %struct.wiphy* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.cfg80211_ops*, %struct.cfg80211_ops** %7, align 8
  %25 = call i32 @kfree(%struct.cfg80211_ops* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %18
  %29 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @set_wiphy_dev(%struct.wiphy* %29, %struct.device* %30)
  %32 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %33 = call %struct.brcmf_pub* @wiphy_priv(%struct.wiphy* %32)
  store %struct.brcmf_pub* %33, %struct.brcmf_pub** %8, align 8
  %34 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %35 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %36 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %35, i32 0, i32 3
  store %struct.wiphy* %34, %struct.wiphy** %36, align 8
  %37 = load %struct.cfg80211_ops*, %struct.cfg80211_ops** %7, align 8
  %38 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %39 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %38, i32 0, i32 2
  store %struct.cfg80211_ops* %37, %struct.cfg80211_ops** %39, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call %struct.TYPE_2__* @dev_get_drvdata(%struct.device* %40)
  %42 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %43 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %42, i32 0, i32 1
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %43, align 8
  %44 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %45 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %46 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.brcmf_pub* %44, %struct.brcmf_pub** %48, align 8
  %49 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %5, align 8
  %50 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %51 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %50, i32 0, i32 0
  store %struct.brcmf_mp_device* %49, %struct.brcmf_mp_device** %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %28, %23, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local %struct.cfg80211_ops* @brcmf_cfg80211_get_ops(%struct.brcmf_mp_device*) #1

declare dso_local %struct.wiphy* @wiphy_new(%struct.cfg80211_ops*, i32) #1

declare dso_local i32 @kfree(%struct.cfg80211_ops*) #1

declare dso_local i32 @set_wiphy_dev(%struct.wiphy*, %struct.device*) #1

declare dso_local %struct.brcmf_pub* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.TYPE_2__* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
