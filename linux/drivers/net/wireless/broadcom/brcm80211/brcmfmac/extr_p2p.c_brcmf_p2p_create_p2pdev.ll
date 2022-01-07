; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_create_p2pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_create_p2pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.brcmf_p2p_info = type { i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { %struct.wireless_dev, %struct.brcmf_if* }
%struct.brcmf_if = type { i64, i32* }
%struct.TYPE_8__ = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.wiphy = type { i32 }

@P2PAPI_BSSCFG_DEVICE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not create discovery vif\0A\00", align 1
@P2PAPI_BSSCFG_PRIMARY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"discovery vif must be different from primary interface\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"p2p_disc\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"set p2p_disc error\0A\00", align 1
@BRCMF_E_IF_ADD = common dso_local global i32 0, align 4
@BRCMF_VIF_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"timeout occurred\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"p2p_dev\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"retrieving discover bsscfg index failed\0A\00", align 1
@brcmf_p2p_afx_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wireless_dev* (%struct.brcmf_p2p_info*, %struct.wiphy*, i32*)* @brcmf_p2p_create_p2pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wireless_dev* @brcmf_p2p_create_p2pdev(%struct.brcmf_p2p_info* %0, %struct.wiphy* %1, i32* %2) #0 {
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.brcmf_p2p_info*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %10 = alloca %struct.brcmf_if*, align 8
  %11 = alloca %struct.brcmf_if*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.brcmf_p2p_info* %0, %struct.brcmf_p2p_info** %5, align 8
  store %struct.wiphy* %1, %struct.wiphy** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %15 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %14, i32 0, i32 5
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.brcmf_pub*, %struct.brcmf_pub** %17, align 8
  store %struct.brcmf_pub* %18, %struct.brcmf_pub** %8, align 8
  %19 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %20 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %19, i32 0, i32 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i64, i64* @P2PAPI_BSSCFG_DEVICE, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %24, align 8
  %26 = icmp ne %struct.brcmf_cfg80211_vif* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.wireless_dev* @ERR_PTR(i32 %29)
  store %struct.wireless_dev* %30, %struct.wireless_dev** %4, align 8
  br label %182

31:                                               ; preds = %3
  %32 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %33 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %32, i32 0, i32 5
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %36 = call %struct.brcmf_cfg80211_vif* @brcmf_alloc_vif(%struct.TYPE_8__* %34, i32 %35)
  store %struct.brcmf_cfg80211_vif* %36, %struct.brcmf_cfg80211_vif** %9, align 8
  %37 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %9, align 8
  %38 = call i64 @IS_ERR(%struct.brcmf_cfg80211_vif* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %42 = call i32 @bphy_err(%struct.brcmf_pub* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %9, align 8
  %44 = bitcast %struct.brcmf_cfg80211_vif* %43 to %struct.wireless_dev*
  store %struct.wireless_dev* %44, %struct.wireless_dev** %4, align 8
  br label %182

45:                                               ; preds = %31
  %46 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %47 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i64, i64* @P2PAPI_BSSCFG_PRIMARY, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %51, align 8
  %53 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %52, i32 0, i32 1
  %54 = load %struct.brcmf_if*, %struct.brcmf_if** %53, align 8
  store %struct.brcmf_if* %54, %struct.brcmf_if** %11, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %45
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %60 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @ether_addr_equal(i32* %58, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %66 = call i32 @bphy_err(%struct.brcmf_pub* %65, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %struct.wireless_dev* @ERR_PTR(i32 %68)
  store %struct.wireless_dev* %69, %struct.wireless_dev** %4, align 8
  br label %182

70:                                               ; preds = %57, %45
  %71 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @brcmf_p2p_generate_bss_mac(%struct.brcmf_p2p_info* %71, i32* %72)
  %74 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %75 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %76 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @brcmf_p2p_set_firmware(%struct.brcmf_if* %74, i32 %77)
  %79 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %80 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %79, i32 0, i32 5
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %9, align 8
  %83 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.TYPE_8__* %81, %struct.brcmf_cfg80211_vif* %82)
  %84 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %85 = call i32 @brcmf_fweh_p2pdev_setup(%struct.brcmf_if* %84, i32 1)
  %86 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %87 = call i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %70
  %91 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %92 = call i32 @bphy_err(%struct.brcmf_pub* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %94 = call i32 @brcmf_fweh_p2pdev_setup(%struct.brcmf_if* %93, i32 0)
  %95 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %96 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %95, i32 0, i32 5
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.TYPE_8__* %97, %struct.brcmf_cfg80211_vif* null)
  br label %177

99:                                               ; preds = %70
  %100 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %101 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %100, i32 0, i32 5
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i32, i32* @BRCMF_E_IF_ADD, align 4
  %104 = load i32, i32* @BRCMF_VIF_EVENT_TIMEOUT, align 4
  %105 = call i32 @brcmf_cfg80211_wait_vif_event(%struct.TYPE_8__* %102, i32 %103, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %107 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %106, i32 0, i32 5
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.TYPE_8__* %108, %struct.brcmf_cfg80211_vif* null)
  %110 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %111 = call i32 @brcmf_fweh_p2pdev_setup(%struct.brcmf_if* %110, i32 0)
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %99
  %115 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %116 = call i32 @bphy_err(%struct.brcmf_pub* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %12, align 4
  br label %177

119:                                              ; preds = %99
  %120 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %9, align 8
  %121 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %120, i32 0, i32 1
  %122 = load %struct.brcmf_if*, %struct.brcmf_if** %121, align 8
  store %struct.brcmf_if* %122, %struct.brcmf_if** %10, align 8
  %123 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %9, align 8
  %124 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %125 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %124, i32 0, i32 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i64, i64* @P2PAPI_BSSCFG_DEVICE, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store %struct.brcmf_cfg80211_vif* %123, %struct.brcmf_cfg80211_vif** %129, align 8
  %130 = load %struct.brcmf_if*, %struct.brcmf_if** %10, align 8
  %131 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %134 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ETH_ALEN, align 4
  %137 = call i32 @memcpy(i32* %132, i32 %135, i32 %136)
  %138 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %9, align 8
  %139 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %139, i32 0, i32 0
  %141 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %142 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @memcpy(i32* %140, i32 %143, i32 4)
  %145 = load %struct.brcmf_if*, %struct.brcmf_if** %11, align 8
  %146 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64* %13)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %119
  %150 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %151 = call i32 @bphy_err(%struct.brcmf_pub* %150, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %177

152:                                              ; preds = %119
  %153 = load %struct.brcmf_if*, %struct.brcmf_if** %10, align 8
  %154 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %13, align 8
  %157 = icmp ne i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @WARN_ON(i32 %158)
  %160 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %161 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %160, i32 0, i32 2
  %162 = call i32 @init_completion(i32* %161)
  %163 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %164 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* @brcmf_p2p_afx_handler, align 4
  %167 = call i32 @INIT_WORK(i32* %165, i32 %166)
  %168 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %169 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = call i32 @init_completion(i32* %170)
  %172 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %5, align 8
  %173 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %172, i32 0, i32 0
  %174 = call i32 @init_completion(i32* %173)
  %175 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %9, align 8
  %176 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %175, i32 0, i32 0
  store %struct.wireless_dev* %176, %struct.wireless_dev** %4, align 8
  br label %182

177:                                              ; preds = %149, %114, %90
  %178 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %9, align 8
  %179 = call i32 @brcmf_free_vif(%struct.brcmf_cfg80211_vif* %178)
  %180 = load i32, i32* %12, align 4
  %181 = call %struct.wireless_dev* @ERR_PTR(i32 %180)
  store %struct.wireless_dev* %181, %struct.wireless_dev** %4, align 8
  br label %182

182:                                              ; preds = %177, %152, %64, %40, %27
  %183 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  ret %struct.wireless_dev* %183
}

declare dso_local %struct.wireless_dev* @ERR_PTR(i32) #1

declare dso_local %struct.brcmf_cfg80211_vif* @brcmf_alloc_vif(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.brcmf_cfg80211_vif*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i32 @brcmf_p2p_generate_bss_mac(%struct.brcmf_p2p_info*, i32*) #1

declare dso_local i32 @brcmf_p2p_set_firmware(%struct.brcmf_if*, i32) #1

declare dso_local i32 @brcmf_cfg80211_arm_vif_event(%struct.TYPE_8__*, %struct.brcmf_cfg80211_vif*) #1

declare dso_local i32 @brcmf_fweh_p2pdev_setup(%struct.brcmf_if*, i32) #1

declare dso_local i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if*, i8*, i32) #1

declare dso_local i32 @brcmf_cfg80211_wait_vif_event(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if*, i8*, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @brcmf_free_vif(%struct.brcmf_cfg80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
