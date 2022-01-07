; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_add_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_add_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.wiphy = type { i32 }
%struct.vif_params = type { i32 }
%struct.ath6kl = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Reached maximum number of supported vif\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Not a supported interface type\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wireless_dev* (%struct.wiphy*, i8*, i8, i32, %struct.vif_params*)* @ath6kl_cfg80211_add_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wireless_dev* @ath6kl_cfg80211_add_iface(%struct.wiphy* %0, i8* %1, i8 zeroext %2, i32 %3, %struct.vif_params* %4) #0 {
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca %struct.ath6kl*, align 8
  %13 = alloca %struct.wireless_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  %16 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %17 = call %struct.ath6kl* @wiphy_priv(%struct.wiphy* %16)
  store %struct.ath6kl* %17, %struct.ath6kl** %12, align 8
  %18 = load %struct.ath6kl*, %struct.ath6kl** %12, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ath6kl*, %struct.ath6kl** %12, align 8
  %22 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = call i32 @ath6kl_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.wireless_dev* @ERR_PTR(i32 %28)
  store %struct.wireless_dev* %29, %struct.wireless_dev** %6, align 8
  br label %60

30:                                               ; preds = %5
  %31 = load %struct.ath6kl*, %struct.ath6kl** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @ath6kl_is_valid_iftype(%struct.ath6kl* %31, i32 %32, i32* %14, i32* %15)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = call i32 @ath6kl_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.wireless_dev* @ERR_PTR(i32 %38)
  store %struct.wireless_dev* %39, %struct.wireless_dev** %6, align 8
  br label %60

40:                                               ; preds = %30
  %41 = load %struct.ath6kl*, %struct.ath6kl** %12, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %9, align 1
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call %struct.wireless_dev* @ath6kl_interface_add(%struct.ath6kl* %41, i8* %42, i8 zeroext %43, i32 %44, i32 %45, i32 %46)
  store %struct.wireless_dev* %47, %struct.wireless_dev** %13, align 8
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %49 = icmp ne %struct.wireless_dev* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.wireless_dev* @ERR_PTR(i32 %52)
  store %struct.wireless_dev* %53, %struct.wireless_dev** %6, align 8
  br label %60

54:                                               ; preds = %40
  %55 = load %struct.ath6kl*, %struct.ath6kl** %12, align 8
  %56 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %59, %struct.wireless_dev** %6, align 8
  br label %60

60:                                               ; preds = %54, %50, %35, %25
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  ret %struct.wireless_dev* %61
}

declare dso_local %struct.ath6kl* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local %struct.wireless_dev* @ERR_PTR(i32) #1

declare dso_local i32 @ath6kl_is_valid_iftype(%struct.ath6kl*, i32, i32*, i32*) #1

declare dso_local %struct.wireless_dev* @ath6kl_interface_add(%struct.ath6kl*, i8*, i8 zeroext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
