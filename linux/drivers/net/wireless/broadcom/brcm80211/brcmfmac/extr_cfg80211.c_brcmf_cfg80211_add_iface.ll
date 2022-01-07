; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_add_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_add_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.wiphy = type { i32 }
%struct.vif_params = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"enter: %s type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"iface validation failed: err=%d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"add iface %s type %d failed: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wireless_dev* (%struct.wiphy*, i8*, i8, i32, %struct.vif_params*)* @brcmf_cfg80211_add_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wireless_dev* @brcmf_cfg80211_add_iface(%struct.wiphy* %0, i8* %1, i8 zeroext %2, i32 %3, %struct.vif_params* %4) #0 {
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca %struct.brcmf_cfg80211_info*, align 8
  %13 = alloca %struct.brcmf_pub*, align 8
  %14 = alloca %struct.wireless_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  %16 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %17 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %16)
  store %struct.brcmf_cfg80211_info* %17, %struct.brcmf_cfg80211_info** %12, align 8
  %18 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %18, i32 0, i32 0
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %19, align 8
  store %struct.brcmf_pub* %20, %struct.brcmf_pub** %13, align 8
  %21 = load i32, i32* @TRACE, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @brcmf_dbg(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23)
  %25 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %26 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %25)
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @brcmf_vif_add_validate(%struct.brcmf_cfg80211_info* %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %5
  %32 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %15, align 4
  %36 = call %struct.wireless_dev* @ERR_PTR(i32 %35)
  store %struct.wireless_dev* %36, %struct.wireless_dev** %6, align 8
  br label %77

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %56 [
    i32 138, label %39
    i32 130, label %39
    i32 136, label %39
    i32 128, label %39
    i32 134, label %39
    i32 135, label %39
    i32 137, label %43
    i32 133, label %48
    i32 131, label %48
    i32 132, label %48
    i32 129, label %55
  ]

39:                                               ; preds = %37, %37, %37, %37, %37, %37
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.wireless_dev* @ERR_PTR(i32 %41)
  store %struct.wireless_dev* %42, %struct.wireless_dev** %6, align 8
  br label %77

43:                                               ; preds = %37
  %44 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %47 = call %struct.wireless_dev* @brcmf_ap_add_vif(%struct.wiphy* %44, i8* %45, %struct.vif_params* %46)
  store %struct.wireless_dev* %47, %struct.wireless_dev** %14, align 8
  br label %60

48:                                               ; preds = %37, %37, %37
  %49 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %9, align 1
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %54 = call %struct.wireless_dev* @brcmf_p2p_add_vif(%struct.wiphy* %49, i8* %50, i8 zeroext %51, i32 %52, %struct.vif_params* %53)
  store %struct.wireless_dev* %54, %struct.wireless_dev** %14, align 8
  br label %60

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %37, %55
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.wireless_dev* @ERR_PTR(i32 %58)
  store %struct.wireless_dev* %59, %struct.wireless_dev** %6, align 8
  br label %77

60:                                               ; preds = %48, %43
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %62 = call i64 @IS_ERR(%struct.wireless_dev* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %69 = call i64 @PTR_ERR(%struct.wireless_dev* %68)
  %70 = trunc i64 %69 to i32
  %71 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32 %67, i32 %70)
  br label %75

72:                                               ; preds = %60
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %74 = call i32 @brcmf_cfg80211_update_proto_addr_mode(%struct.wireless_dev* %73)
  br label %75

75:                                               ; preds = %72, %64
  %76 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  store %struct.wireless_dev* %76, %struct.wireless_dev** %6, align 8
  br label %77

77:                                               ; preds = %75, %56, %39, %31
  %78 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  ret %struct.wireless_dev* %78
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i8*, i32) #1

declare dso_local i32 @brcmf_vif_add_validate(%struct.brcmf_cfg80211_info*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local %struct.wireless_dev* @ERR_PTR(i32) #1

declare dso_local %struct.wireless_dev* @brcmf_ap_add_vif(%struct.wiphy*, i8*, %struct.vif_params*) #1

declare dso_local %struct.wireless_dev* @brcmf_p2p_add_vif(%struct.wiphy*, i8*, i8 zeroext, i32, %struct.vif_params*) #1

declare dso_local i64 @IS_ERR(%struct.wireless_dev*) #1

declare dso_local i64 @PTR_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @brcmf_cfg80211_update_proto_addr_mode(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
