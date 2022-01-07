; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_add_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_add_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, i32*, %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.vif_params = type { i32* }
%struct.wil6210_priv = type { %struct.TYPE_2__*, %struct.wireless_dev*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32*, i32* }
%struct.wil6210_vif = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"add_iface, type %d\0A\00", align 1
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"P2P_DEVICE interface already created\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"virtual interfaces not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"iface validation failed, err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"added VIF, mid %d iftype %d MAC %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wireless_dev* (%struct.wiphy*, i8*, i8, i32, %struct.vif_params*)* @wil_cfg80211_add_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wireless_dev* @wil_cfg80211_add_iface(%struct.wiphy* %0, i8* %1, i8 zeroext %2, i32 %3, %struct.vif_params* %4) #0 {
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca %struct.wil6210_priv*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.wil6210_vif*, align 8
  %16 = alloca %struct.wireless_dev*, align 8
  %17 = alloca %struct.wireless_dev*, align 8
  %18 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  %19 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %20 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %19)
  store %struct.wil6210_priv* %20, %struct.wil6210_priv** %12, align 8
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %22 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %21, i32 0, i32 2
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %13, align 8
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %5
  %31 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %32 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %31, i32 0, i32 1
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %32, align 8
  %34 = icmp ne %struct.wireless_dev* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %37 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.wireless_dev* @ERR_PTR(i32 %39)
  store %struct.wireless_dev* %40, %struct.wireless_dev** %6, align 8
  br label %183

41:                                               ; preds = %30
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.wireless_dev* @kzalloc(i32 24, i32 %42)
  store %struct.wireless_dev* %43, %struct.wireless_dev** %16, align 8
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %45 = icmp ne %struct.wireless_dev* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.wireless_dev* @ERR_PTR(i32 %48)
  store %struct.wireless_dev* %49, %struct.wireless_dev** %6, align 8
  br label %183

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %53 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 2
  store %struct.wiphy* %54, %struct.wiphy** %56, align 8
  %57 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %58 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.net_device*, %struct.net_device** %13, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ether_addr_copy(i32* %59, i32* %62)
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %65 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %66 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %65, i32 0, i32 1
  store %struct.wireless_dev* %64, %struct.wireless_dev** %66, align 8
  %67 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %67, %struct.wireless_dev** %6, align 8
  br label %183

68:                                               ; preds = %5
  %69 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %70 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %77 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  %80 = call %struct.wireless_dev* @ERR_PTR(i32 %79)
  store %struct.wireless_dev* %80, %struct.wireless_dev** %6, align 8
  br label %183

81:                                               ; preds = %68
  %82 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @wil_cfg80211_validate_add_iface(%struct.wil6210_priv* %82, i32 %83)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %89 = load i32, i32* %18, align 4
  %90 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %18, align 4
  %92 = call %struct.wireless_dev* @ERR_PTR(i32 %91)
  store %struct.wireless_dev* %92, %struct.wireless_dev** %6, align 8
  br label %183

93:                                               ; preds = %81
  %94 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8, i8* %9, align 1
  %97 = load i32, i32* %10, align 4
  %98 = call %struct.wil6210_vif* @wil_vif_alloc(%struct.wil6210_priv* %94, i8* %95, i8 zeroext %96, i32 %97)
  store %struct.wil6210_vif* %98, %struct.wil6210_vif** %15, align 8
  %99 = load %struct.wil6210_vif*, %struct.wil6210_vif** %15, align 8
  %100 = call i64 @IS_ERR(%struct.wil6210_vif* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load %struct.wil6210_vif*, %struct.wil6210_vif** %15, align 8
  %104 = call %struct.wireless_dev* @ERR_CAST(%struct.wil6210_vif* %103)
  store %struct.wireless_dev* %104, %struct.wireless_dev** %6, align 8
  br label %183

105:                                              ; preds = %93
  %106 = load %struct.wil6210_vif*, %struct.wil6210_vif** %15, align 8
  %107 = call %struct.net_device* @vif_to_ndev(%struct.wil6210_vif* %106)
  store %struct.net_device* %107, %struct.net_device** %14, align 8
  %108 = load %struct.net_device*, %struct.net_device** %14, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.net_device*, %struct.net_device** %13, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @ether_addr_copy(i32* %110, i32* %113)
  %115 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %116 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @is_valid_ether_addr(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %105
  %121 = load %struct.net_device*, %struct.net_device** %14, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %125 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @ether_addr_copy(i32* %123, i32* %126)
  br label %151

128:                                              ; preds = %105
  %129 = load %struct.net_device*, %struct.net_device** %14, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.net_device*, %struct.net_device** %13, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @ether_addr_copy(i32* %131, i32* %134)
  %136 = load %struct.net_device*, %struct.net_device** %14, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.wil6210_vif*, %struct.wil6210_vif** %15, align 8
  %142 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 1, %143
  %145 = xor i32 %140, %144
  %146 = or i32 %145, 2
  %147 = load %struct.net_device*, %struct.net_device** %14, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %146, i32* %150, align 4
  br label %151

151:                                              ; preds = %128, %120
  %152 = load %struct.wil6210_vif*, %struct.wil6210_vif** %15, align 8
  %153 = call %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif* %152)
  store %struct.wireless_dev* %153, %struct.wireless_dev** %17, align 8
  %154 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %155 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.net_device*, %struct.net_device** %14, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @ether_addr_copy(i32* %156, i32* %159)
  %161 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %162 = load %struct.wil6210_vif*, %struct.wil6210_vif** %15, align 8
  %163 = call i32 @wil_vif_add(%struct.wil6210_priv* %161, %struct.wil6210_vif* %162)
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %151
  br label %178

167:                                              ; preds = %151
  %168 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %169 = load %struct.wil6210_vif*, %struct.wil6210_vif** %15, align 8
  %170 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %174 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @wil_info(%struct.wil6210_priv* %168, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %171, i32 %172, i32* %175)
  %177 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  store %struct.wireless_dev* %177, %struct.wireless_dev** %6, align 8
  br label %183

178:                                              ; preds = %166
  %179 = load %struct.wil6210_vif*, %struct.wil6210_vif** %15, align 8
  %180 = call i32 @wil_vif_free(%struct.wil6210_vif* %179)
  %181 = load i32, i32* %18, align 4
  %182 = call %struct.wireless_dev* @ERR_PTR(i32 %181)
  store %struct.wireless_dev* %182, %struct.wireless_dev** %6, align 8
  br label %183

183:                                              ; preds = %178, %167, %102, %87, %75, %50, %46, %35
  %184 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  ret %struct.wireless_dev* %184
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local %struct.wireless_dev* @ERR_PTR(i32) #1

declare dso_local %struct.wireless_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @wil_cfg80211_validate_add_iface(%struct.wil6210_priv*, i32) #1

declare dso_local %struct.wil6210_vif* @wil_vif_alloc(%struct.wil6210_priv*, i8*, i8 zeroext, i32) #1

declare dso_local i64 @IS_ERR(%struct.wil6210_vif*) #1

declare dso_local %struct.wireless_dev* @ERR_CAST(%struct.wil6210_vif*) #1

declare dso_local %struct.net_device* @vif_to_ndev(%struct.wil6210_vif*) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_vif_add(%struct.wil6210_priv*, %struct.wil6210_vif*) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i32, i32, i32*) #1

declare dso_local i32 @wil_vif_free(%struct.wil6210_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
