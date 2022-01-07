; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_wow_suspend_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_wow_suspend_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i64, i32, i32, %struct.ath6kl*, i32 }
%struct.ath6kl = type { i32, i32* }
%struct.cfg80211_wowlan = type { i32 }
%struct.in_device = type { i32 }
%struct.in_ifaddr = type { i32, i32 }

@MAX_IP_ADDRS = common dso_local global i32 0, align 4
@NETDEV_MCAST_ALL_ON = common dso_local global i32 0, align 4
@ATH6KL_FW_CAPABILITY_WOW_MULTICAST_FILTER = common dso_local global i32 0, align 4
@WOW_MAX_FILTERS_PER_LIST = common dso_local global i64 0, align 8
@WOW_LIST_ID = common dso_local global i32 0, align 4
@AP_NETWORK = common dso_local global i64 0, align 8
@ATH6KL_MAX_WOW_LISTEN_INTL = common dso_local global i32 0, align 4
@ATH6KL_MAX_BMISS_TIME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"total IP addr count is exceeding fw limit\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"fail to setup ip for arp agent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*, %struct.cfg80211_wowlan*, i32*)* @ath6kl_wow_suspend_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wow_suspend_vif(%struct.ath6kl_vif* %0, %struct.cfg80211_wowlan* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl_vif*, align 8
  %6 = alloca %struct.cfg80211_wowlan*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ath6kl*, align 8
  %9 = alloca %struct.in_device*, align 8
  %10 = alloca %struct.in_ifaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %5, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %19 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %18, i32 0, i32 3
  %20 = load %struct.ath6kl*, %struct.ath6kl** %19, align 8
  store %struct.ath6kl* %20, %struct.ath6kl** %8, align 8
  %21 = load i32, i32* @MAX_IP_ADDRS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* @NETDEV_MCAST_ALL_ON, align 4
  %26 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %27 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %26, i32 0, i32 4
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ATH6KL_FW_CAPABILITY_WOW_MULTICAST_FILTER, align 4
  %32 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %33 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @test_bit(i32 %31, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %39 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %38, i32 0, i32 3
  %40 = load %struct.ath6kl*, %struct.ath6kl** %39, align 8
  %41 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %44 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ath6kl_wmi_mcast_filter_cmd(i32 %42, i32 %45, i32 0)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %222

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %30, %3
  store i64 0, i64* %12, align 8
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @WOW_MAX_FILTERS_PER_LIST, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %59 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %62 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @WOW_LIST_ID, align 4
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @ath6kl_wmi_del_wow_pattern_cmd(i32 %60, i32 %63, i32 %64, i64 %65)
  br label %67

67:                                               ; preds = %57
  %68 = load i64, i64* %12, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %12, align 8
  br label %53

70:                                               ; preds = %53
  %71 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %72 = icmp ne %struct.cfg80211_wowlan* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %75 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %76 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @ath6kl_wow_usr(%struct.ath6kl* %74, %struct.ath6kl_vif* %75, %struct.cfg80211_wowlan* %76, i32* %77)
  store i32 %78, i32* %11, align 4
  br label %94

79:                                               ; preds = %70
  %80 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %81 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AP_NETWORK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %87 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %88 = call i32 @ath6kl_wow_ap(%struct.ath6kl* %86, %struct.ath6kl_vif* %87)
  store i32 %88, i32* %11, align 4
  br label %93

89:                                               ; preds = %79
  %90 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %91 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %92 = call i32 @ath6kl_wow_sta(%struct.ath6kl* %90, %struct.ath6kl_vif* %91)
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %73
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %222

99:                                               ; preds = %94
  %100 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %101 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @netif_stop_queue(i32 %102)
  %104 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %105 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @AP_NETWORK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %157

109:                                              ; preds = %99
  %110 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %111 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %114 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ATH6KL_MAX_WOW_LISTEN_INTL, align 4
  %117 = call i32 @ath6kl_wmi_listeninterval_cmd(i32 %112, i32 %115, i32 %116, i32 0)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %222

122:                                              ; preds = %109
  %123 = load i32, i32* @ATH6KL_MAX_WOW_LISTEN_INTL, align 4
  %124 = mul nsw i32 %123, 15
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* @ATH6KL_MAX_BMISS_TIME, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i64, i64* @ATH6KL_MAX_BMISS_TIME, align 8
  store i64 %130, i64* %13, align 8
  br label %131

131:                                              ; preds = %129, %122
  %132 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %133 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %136 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i32 @ath6kl_wmi_bmisstime_cmd(i32 %134, i32 %137, i64 %138, i32 0)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %222

144:                                              ; preds = %131
  %145 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %146 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %149 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @ath6kl_wmi_scanparams_cmd(i32 %147, i32 %150, i32 65535, i32 0, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %222

156:                                              ; preds = %144
  br label %157

157:                                              ; preds = %156, %99
  %158 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %159 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call %struct.in_device* @__in_dev_get_rtnl(i32 %160)
  store %struct.in_device* %161, %struct.in_device** %9, align 8
  %162 = load %struct.in_device*, %struct.in_device** %9, align 8
  %163 = icmp ne %struct.in_device* %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %157
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %222

165:                                              ; preds = %157
  %166 = load %struct.in_device*, %struct.in_device** %9, align 8
  %167 = getelementptr inbounds %struct.in_device, %struct.in_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call %struct.in_ifaddr* @rtnl_dereference(i32 %168)
  store %struct.in_ifaddr* %169, %struct.in_ifaddr** %10, align 8
  %170 = bitcast i32* %24 to i32**
  %171 = mul nuw i64 4, %22
  %172 = trunc i64 %171 to i32
  %173 = call i32 @memset(i32** %170, i32 0, i32 %172)
  br label %174

174:                                              ; preds = %183, %165
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* @MAX_IP_ADDRS, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load %struct.in_ifaddr*, %struct.in_ifaddr** %10, align 8
  %180 = icmp ne %struct.in_ifaddr* %179, null
  br label %181

181:                                              ; preds = %178, %174
  %182 = phi i1 [ false, %174 ], [ %180, %178 ]
  br i1 %182, label %183, label %196

183:                                              ; preds = %181
  %184 = load %struct.in_ifaddr*, %struct.in_ifaddr** %10, align 8
  %185 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %24, i64 %188
  store i32 %186, i32* %189, align 4
  %190 = load %struct.in_ifaddr*, %struct.in_ifaddr** %10, align 8
  %191 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call %struct.in_ifaddr* @rtnl_dereference(i32 %192)
  store %struct.in_ifaddr* %193, %struct.in_ifaddr** %10, align 8
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %16, align 4
  br label %174

196:                                              ; preds = %181
  %197 = load %struct.in_ifaddr*, %struct.in_ifaddr** %10, align 8
  %198 = icmp ne %struct.in_ifaddr* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = call i32 @ath6kl_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %222

203:                                              ; preds = %196
  %204 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %205 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %208 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = getelementptr inbounds i32, i32* %24, i64 0
  %211 = load i32, i32* %210, align 16
  %212 = getelementptr inbounds i32, i32* %24, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ath6kl_wmi_set_ip_cmd(i32 %206, i32 %209, i32 %211, i32 %213)
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %203
  %218 = call i32 @ath6kl_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %222

220:                                              ; preds = %203
  %221 = load i32, i32* %11, align 4
  store i32 %221, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %222

222:                                              ; preds = %220, %217, %199, %164, %154, %142, %120, %97, %49
  %223 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @ath6kl_wmi_mcast_filter_cmd(i32, i32, i32) #2

declare dso_local i32 @ath6kl_wmi_del_wow_pattern_cmd(i32, i32, i32, i64) #2

declare dso_local i32 @ath6kl_wow_usr(%struct.ath6kl*, %struct.ath6kl_vif*, %struct.cfg80211_wowlan*, i32*) #2

declare dso_local i32 @ath6kl_wow_ap(%struct.ath6kl*, %struct.ath6kl_vif*) #2

declare dso_local i32 @ath6kl_wow_sta(%struct.ath6kl*, %struct.ath6kl_vif*) #2

declare dso_local i32 @netif_stop_queue(i32) #2

declare dso_local i32 @ath6kl_wmi_listeninterval_cmd(i32, i32, i32, i32) #2

declare dso_local i32 @ath6kl_wmi_bmisstime_cmd(i32, i32, i64, i32) #2

declare dso_local i32 @ath6kl_wmi_scanparams_cmd(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local %struct.in_device* @__in_dev_get_rtnl(i32) #2

declare dso_local %struct.in_ifaddr* @rtnl_dereference(i32) #2

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @ath6kl_err(i8*) #2

declare dso_local i32 @ath6kl_wmi_set_ip_cmd(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
