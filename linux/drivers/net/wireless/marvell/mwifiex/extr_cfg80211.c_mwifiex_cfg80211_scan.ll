; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_scan_request = type { i32, i32, i64, i32, %struct.ieee80211_channel**, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.ieee80211_channel = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mwifiex_private = type { i32, i32, %struct.TYPE_9__*, %struct.cfg80211_scan_request*, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee_types_header = type { i64 }
%struct.mwifiex_user_scan_cfg = type { i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"info: received scan request on %s\0A\00", align 1
@WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cmd: Scan already in process..\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_RANDOM_ADDR = common dso_local global i32 0, align 4
@MWIFIEX_MAX_VSIE_NUM = common dso_local global i32 0, align 4
@MWIFIEX_VSIE_MASK_CLEAR = common dso_local global i64 0, align 8
@MWIFIEX_VSIE_MASK_SCAN = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@MWIFIEX_USER_SCAN_CHAN_MAX = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@MWIFIEX_SCAN_TYPE_PASSIVE = common dso_local global i32 0, align 4
@MWIFIEX_SCAN_TYPE_ACTIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"scan failed: %d\0A\00", align 1
@MWIFIEX_MAX_VSIE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_scan_request*)* @mwifiex_cfg80211_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_scan(%struct.wiphy* %0, %struct.cfg80211_scan_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_scan_request*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mwifiex_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca %struct.ieee_types_header*, align 8
  %13 = alloca %struct.mwifiex_user_scan_cfg*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %5, align 8
  %17 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %18 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %17, i32 0, i32 9
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %6, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %22)
  store %struct.mwifiex_private* %23, %struct.mwifiex_private** %7, align 8
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i32, i32* @CMD, align 4
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_10__* %30, i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 3
  %38 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %37, align 8
  %39 = icmp ne %struct.cfg80211_scan_request* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %2
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %42 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40, %2
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load i32, i32* @WARN, align 4
  %50 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_10__* %48, i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %363

53:                                               ; preds = %40
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %61 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %59, %53
  %68 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %69 = call i32 @mwifiex_stop_bg_scan(%struct.mwifiex_private* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %73 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @cfg80211_sched_scan_stopped_rtnl(i32 %75, i32 0)
  br label %77

77:                                               ; preds = %71, %67
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.mwifiex_user_scan_cfg* @kzalloc(i32 32, i32 %78)
  store %struct.mwifiex_user_scan_cfg* %79, %struct.mwifiex_user_scan_cfg** %13, align 8
  %80 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %81 = icmp ne %struct.mwifiex_user_scan_cfg* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %363

85:                                               ; preds = %77
  %86 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %87 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %88 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %87, i32 0, i32 3
  store %struct.cfg80211_scan_request* %86, %struct.cfg80211_scan_request** %88, align 8
  %89 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %90 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @NL80211_SCAN_FLAG_RANDOM_ADDR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %85
  %96 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %97 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %100 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @get_random_mask_addr(i32* %27, i32 %98, i32 %101)
  %103 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %104 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @ether_addr_copy(i32 %105, i32* %27)
  %107 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %108 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ether_addr_copy(i32 %109, i32* %27)
  br label %111

111:                                              ; preds = %95, %85
  %112 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %113 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %116 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %118 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %121 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %123 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %196

126:                                              ; preds = %111
  %127 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %128 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %196

131:                                              ; preds = %126
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %192, %131
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @MWIFIEX_MAX_VSIE_NUM, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %195

136:                                              ; preds = %132
  %137 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %138 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %137, i32 0, i32 2
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @MWIFIEX_VSIE_MASK_CLEAR, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %192

148:                                              ; preds = %136
  %149 = load i64, i64* @MWIFIEX_VSIE_MASK_SCAN, align 8
  %150 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %151 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %150, i32 0, i32 2
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store i64 %149, i64* %156, align 8
  %157 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %158 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %159, %161
  %163 = inttoptr i64 %162 to %struct.ieee_types_header*
  store %struct.ieee_types_header* %163, %struct.ieee_types_header** %12, align 8
  %164 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %165 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %164, i32 0, i32 2
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load %struct.ieee_types_header*, %struct.ieee_types_header** %12, align 8
  %172 = load %struct.ieee_types_header*, %struct.ieee_types_header** %12, align 8
  %173 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add i64 8, %174
  %176 = call i32 @memcpy(i32* %170, %struct.ieee_types_header* %171, i64 %175)
  %177 = load %struct.ieee_types_header*, %struct.ieee_types_header** %12, align 8
  %178 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add i64 8, %179
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %187 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp sge i32 %185, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %148
  br label %195

191:                                              ; preds = %148
  br label %192

192:                                              ; preds = %191, %147
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %132

195:                                              ; preds = %190, %132
  br label %196

196:                                              ; preds = %195, %126, %111
  store i32 0, i32* %8, align 4
  br label %197

197:                                              ; preds = %271, %196
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @u32, align 4
  %200 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %201 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @MWIFIEX_USER_SCAN_CHAN_MAX, align 4
  %204 = call i32 @min_t(i32 %199, i32 %202, i32 %203)
  %205 = icmp slt i32 %198, %204
  br i1 %205, label %206, label %274

206:                                              ; preds = %197
  %207 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %208 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %207, i32 0, i32 4
  %209 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %209, i64 %211
  %213 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %212, align 8
  store %struct.ieee80211_channel* %213, %struct.ieee80211_channel** %11, align 8
  %214 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %215 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %218 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %217, i32 0, i32 1
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 3
  store i32 %216, i32* %223, align 8
  %224 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %225 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %228 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %227, i32 0, i32 1
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  store i32 %226, i32* %233, align 4
  %234 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %235 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %206
  %241 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %242 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %254, label %245

245:                                              ; preds = %240, %206
  %246 = load i32, i32* @MWIFIEX_SCAN_TYPE_PASSIVE, align 4
  %247 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %248 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %247, i32 0, i32 1
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  store i32 %246, i32* %253, align 8
  br label %263

254:                                              ; preds = %240
  %255 = load i32, i32* @MWIFIEX_SCAN_TYPE_ACTIVE, align 4
  %256 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %257 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %256, i32 0, i32 1
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  store i32 %255, i32* %262, align 8
  br label %263

263:                                              ; preds = %254, %245
  %264 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %265 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %264, i32 0, i32 1
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  store i64 0, i64* %270, align 8
  br label %271

271:                                              ; preds = %263
  %272 = load i32, i32* %8, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %8, align 4
  br label %197

274:                                              ; preds = %197
  %275 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %276 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %275, i32 0, i32 4
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %293

281:                                              ; preds = %274
  %282 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %283 = call i64 @mwifiex_is_any_intf_active(%struct.mwifiex_private* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %281
  %286 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %287 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %286, i32 0, i32 4
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %292 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  br label %293

293:                                              ; preds = %285, %281, %274
  %294 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %295 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %296 = call i32 @mwifiex_scan_networks(%struct.mwifiex_private* %294, %struct.mwifiex_user_scan_cfg* %295)
  store i32 %296, i32* %10, align 4
  %297 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %13, align 8
  %298 = call i32 @kfree(%struct.mwifiex_user_scan_cfg* %297)
  %299 = load i32, i32* %10, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %313

301:                                              ; preds = %293
  %302 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %303 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %302, i32 0, i32 4
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %303, align 8
  %305 = load i32, i32* @ERROR, align 4
  %306 = load i32, i32* %10, align 4
  %307 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_10__* %304, i32 %305, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %306)
  %308 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %309 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %308, i32 0, i32 0
  store i32 0, i32* %309, align 8
  %310 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %311 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %310, i32 0, i32 3
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %311, align 8
  %312 = load i32, i32* %10, align 4
  store i32 %312, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %363

313:                                              ; preds = %293
  %314 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %315 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %362

318:                                              ; preds = %313
  %319 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %320 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %362

323:                                              ; preds = %318
  store i32 0, i32* %8, align 4
  br label %324

324:                                              ; preds = %358, %323
  %325 = load i32, i32* %8, align 4
  %326 = load i32, i32* @MWIFIEX_MAX_VSIE_NUM, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %361

328:                                              ; preds = %324
  %329 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %330 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %329, i32 0, i32 2
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %330, align 8
  %332 = load i32, i32* %8, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @MWIFIEX_VSIE_MASK_SCAN, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %357

339:                                              ; preds = %328
  %340 = load i64, i64* @MWIFIEX_VSIE_MASK_CLEAR, align 8
  %341 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %342 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %341, i32 0, i32 2
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %342, align 8
  %344 = load i32, i32* %8, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  store i64 %340, i64* %347, align 8
  %348 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %349 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %348, i32 0, i32 2
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %349, align 8
  %351 = load i32, i32* %8, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 1
  %355 = load i32, i32* @MWIFIEX_MAX_VSIE_LEN, align 4
  %356 = call i32 @memset(i32* %354, i32 0, i32 %355)
  br label %357

357:                                              ; preds = %339, %328
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %8, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %8, align 4
  br label %324

361:                                              ; preds = %324
  br label %362

362:                                              ; preds = %361, %318, %313
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %363

363:                                              ; preds = %362, %301, %82, %45
  %364 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %364)
  %365 = load i32, i32* %3, align 4
  ret i32 %365
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_stop_bg_scan(%struct.mwifiex_private*) #1

declare dso_local i32 @cfg80211_sched_scan_stopped_rtnl(i32, i32) #1

declare dso_local %struct.mwifiex_user_scan_cfg* @kzalloc(i32, i32) #1

declare dso_local i32 @get_random_mask_addr(i32*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee_types_header*, i64) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i64 @mwifiex_is_any_intf_active(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_scan_networks(%struct.mwifiex_private*, %struct.mwifiex_user_scan_cfg*) #1

declare dso_local i32 @kfree(%struct.mwifiex_user_scan_cfg*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
