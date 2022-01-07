; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_change_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_change_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.vif_params = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.TYPE_4__, %struct.brcmf_pub* }
%struct.TYPE_4__ = type { i64 }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { i32, %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Enter, bsscfgidx=%d, type=%d\0A\00", align 1
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Ignoring cmd for p2p if\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"iface validation failed: err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"type (%d) : currently we do not support this type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"IF Type = P2P GO\0A\00", align 1
@BRCMF_FIL_P2P_IF_GO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"IF Type = AP\0A\00", align 1
@BRCMF_C_SET_INFRA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"WLC_SET_INFRA error (%d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"IF Type = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Adhoc\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Infra\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, %struct.vif_params*)* @brcmf_cfg80211_change_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_cfg80211_change_iface(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, %struct.vif_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vif_params*, align 8
  %10 = alloca %struct.brcmf_cfg80211_info*, align 8
  %11 = alloca %struct.brcmf_if*, align 8
  %12 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %13 = alloca %struct.brcmf_pub*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vif_params* %3, %struct.vif_params** %9, align 8
  %17 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %18 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %17)
  store %struct.brcmf_cfg80211_info* %18, %struct.brcmf_cfg80211_info** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %19)
  store %struct.brcmf_if* %20, %struct.brcmf_if** %11, align 8
  %21 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %22 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %21, i32 0, i32 1
  %23 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %22, align 8
  store %struct.brcmf_cfg80211_vif* %23, %struct.brcmf_cfg80211_vif** %12, align 8
  %24 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %25 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %24, i32 0, i32 1
  %26 = load %struct.brcmf_pub*, %struct.brcmf_pub** %25, align 8
  store %struct.brcmf_pub* %26, %struct.brcmf_pub** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* @TRACE, align 4
  %28 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %29 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %35, label %67

35:                                               ; preds = %4
  %36 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %12, align 8
  %37 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %35
  %43 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %12, align 8
  %44 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 130
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %12, align 8
  %50 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %48, %42, %35
  %56 = load i32, i32* @TRACE, align 4
  %57 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %59 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %147

66:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %147

67:                                               ; preds = %48, %4
  %68 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %69 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %68)
  %70 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %12, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @brcmf_vif_change_validate(%struct.brcmf_cfg80211_info* %69, %struct.brcmf_cfg80211_vif* %70, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @bphy_err(%struct.brcmf_pub* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %5, align 4
  br label %147

80:                                               ; preds = %67
  %81 = load i32, i32* %8, align 4
  switch i32 %81, label %91 [
    i32 131, label %82
    i32 128, label %82
    i32 133, label %88
    i32 129, label %89
    i32 132, label %90
    i32 130, label %90
  ]

82:                                               ; preds = %80, %80
  %83 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @bphy_err(%struct.brcmf_pub* %83, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %147

88:                                               ; preds = %80
  store i32 0, i32* %14, align 4
  br label %94

89:                                               ; preds = %80
  store i32 1, i32* %14, align 4
  br label %94

90:                                               ; preds = %80, %80
  store i32 1, i32* %15, align 4
  br label %94

91:                                               ; preds = %80
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %16, align 4
  br label %143

94:                                               ; preds = %90, %89, %88
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 130
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* @INFO, align 4
  %102 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %104 = load i32, i32* @BRCMF_FIL_P2P_IF_GO, align 4
  %105 = call i32 @brcmf_p2p_ifchange(%struct.brcmf_cfg80211_info* %103, i32 %104)
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %100, %97
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @INFO, align 4
  %111 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  br label %134

113:                                              ; preds = %94
  %114 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %115 = load i32, i32* @BRCMF_C_SET_INFRA, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %114, i32 %115, i32 %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @bphy_err(%struct.brcmf_pub* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %16, align 4
  br label %143

126:                                              ; preds = %113
  %127 = load i32, i32* @INFO, align 4
  %128 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %12, align 8
  %129 = call i64 @brcmf_is_ibssmode(%struct.brcmf_cfg80211_vif* %128)
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %133 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %126, %112
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.net_device*, %struct.net_device** %7, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i32 %135, i32* %139, align 4
  %140 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %12, align 8
  %141 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %140, i32 0, i32 0
  %142 = call i32 @brcmf_cfg80211_update_proto_addr_mode(%struct.TYPE_6__* %141)
  br label %143

143:                                              ; preds = %134, %120, %91
  %144 = load i32, i32* @TRACE, align 4
  %145 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %143, %82, %75, %66, %63
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_vif_change_validate(%struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_vif*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @brcmf_p2p_ifchange(%struct.brcmf_cfg80211_info*, i32) #1

declare dso_local i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #1

declare dso_local i64 @brcmf_is_ibssmode(%struct.brcmf_cfg80211_vif*) #1

declare dso_local i32 @brcmf_cfg80211_update_proto_addr_mode(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
