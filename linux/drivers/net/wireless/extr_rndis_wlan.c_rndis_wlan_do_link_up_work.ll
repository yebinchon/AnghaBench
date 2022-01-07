; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_do_link_up_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_do_link_up_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.rndis_wlan_private = type { i64, i32, i32, i32, i32, i32 }
%struct.ndis_80211_assoc_info = type { i32, i32, i32, i32 }
%struct.cfg80211_roam_info = type { i32, i32, i32*, i32*, i32*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NDIS_80211_INFRA_INFRA = common dso_local global i64 0, align 8
@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WORK_LINK_UP = common dso_local global i32 0, align 4
@NDIS_80211_INFRA_ADHOC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"link up work: [%pM]%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" roamed\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @rndis_wlan_do_link_up_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_wlan_do_link_up_work(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.rndis_wlan_private*, align 8
  %4 = alloca %struct.ndis_80211_assoc_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cfg80211_roam_info, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %17 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %18 = call %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet* %17)
  store %struct.rndis_wlan_private* %18, %struct.rndis_wlan_private** %3, align 8
  store %struct.ndis_80211_assoc_info* null, %struct.ndis_80211_assoc_info** %4, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %5, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %24 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NDIS_80211_INFRA_INFRA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %30 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  br label %34

34:                                               ; preds = %33, %28, %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %35 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %36 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NDIS_80211_INFRA_INFRA, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %147

40:                                               ; preds = %34
  %41 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.ndis_80211_assoc_info* @kzalloc(i32 %41, i32 %42)
  store %struct.ndis_80211_assoc_info* %43, %struct.ndis_80211_assoc_info** %4, align 8
  %44 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %45 = icmp ne %struct.ndis_80211_assoc_info* %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @WORK_LINK_UP, align 4
  %48 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %49 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %48, i32 0, i32 5
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  %51 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %52 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %55 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %54, i32 0, i32 3
  %56 = call i32 @queue_work(i32 %53, i32* %55)
  store i32 1, i32* %15, align 4
  br label %256

57:                                               ; preds = %40
  %58 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %59 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %60 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %61 = call i32 @get_association_info(%struct.usbnet* %58, %struct.ndis_80211_assoc_info* %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %143, label %64

64:                                               ; preds = %57
  %65 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %66 = getelementptr inbounds %struct.ndis_80211_assoc_info, %struct.ndis_80211_assoc_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %72, %64
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  %78 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %79 = getelementptr inbounds %struct.ndis_80211_assoc_info, %struct.ndis_80211_assoc_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %84 = icmp ugt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %77
  %88 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %89 = bitcast %struct.ndis_80211_assoc_info* %88 to i32*
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32* %92, i32** %10, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add i32 %93, %94
  %96 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sub i32 %99, %100
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %98, %87
  br label %103

103:                                              ; preds = %102, %74
  %104 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %105 = getelementptr inbounds %struct.ndis_80211_assoc_info, %struct.ndis_80211_assoc_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le32_to_cpu(i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %110 = icmp ugt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %111, %103
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %113
  %117 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %118 = getelementptr inbounds %struct.ndis_80211_assoc_info, %struct.ndis_80211_assoc_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le32_to_cpu(i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %123 = icmp ugt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %124, %116
  %127 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %128 = bitcast %struct.ndis_80211_assoc_info* %127 to i32*
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32* %131, i32** %11, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %7, align 4
  %134 = add i32 %132, %133
  %135 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %136 = icmp ugt i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %126
  %138 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sub i32 %138, %139
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %137, %126
  br label %142

142:                                              ; preds = %141, %113
  br label %146

143:                                              ; preds = %57
  %144 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %145 = call i32 @kfree(%struct.ndis_80211_assoc_info* %144)
  store %struct.ndis_80211_assoc_info* null, %struct.ndis_80211_assoc_info** %4, align 8
  br label %146

146:                                              ; preds = %143, %142
  br label %158

147:                                              ; preds = %34
  %148 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %149 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @NDIS_80211_INFRA_ADHOC, align 8
  %152 = icmp ne i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i64 @WARN_ON(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  store i32 1, i32* %15, align 4
  br label %256

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %146
  %159 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %160 = call i32 @get_bssid(%struct.usbnet* %159, i32* %22)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = mul nuw i64 4, %20
  %165 = trunc i64 %164 to i32
  %166 = call i32 @memset(i32* %22, i32 0, i32 %165)
  br label %167

167:                                              ; preds = %163, %158
  %168 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %169 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %175 = call i32 @netdev_dbg(i32 %170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %22, i8* %174)
  store i32 0, i32* %14, align 4
  %176 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %177 = call i32 @rndis_check_bssid_list(%struct.usbnet* %176, i32* %22, i32* %14)
  %178 = call i32 @is_zero_ether_addr(i32* %22)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %167
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %180
  %184 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %185 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %186 = call i32 @rndis_wlan_craft_connected_bss(%struct.usbnet* %184, i32* %22, %struct.ndis_80211_assoc_info* %185)
  br label %187

187:                                              ; preds = %183, %180, %167
  %188 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %189 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @NDIS_80211_INFRA_INFRA, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %225

193:                                              ; preds = %187
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %193
  %197 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %198 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load i32*, i32** %11, align 8
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = call i32 @cfg80211_connect_result(i32 %199, i32* %22, i32* %200, i32 %201, i32* %202, i32 %203, i32 0, i32 %204)
  br label %224

206:                                              ; preds = %193
  %207 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %16, i32 0, i32 0
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %207, align 8
  %209 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %16, i32 0, i32 1
  %210 = load i32, i32* %7, align 4
  store i32 %210, i32* %209, align 4
  %211 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %16, i32 0, i32 2
  %212 = load i32*, i32** %11, align 8
  store i32* %212, i32** %211, align 8
  %213 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %16, i32 0, i32 3
  %214 = load i32*, i32** %10, align 8
  store i32* %214, i32** %213, align 8
  %215 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %16, i32 0, i32 4
  store i32* %22, i32** %215, align 8
  %216 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %16, i32 0, i32 5
  %217 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %218 = call i32 @get_current_channel(%struct.usbnet* %217, i32* null)
  store i32 %218, i32* %216, align 8
  %219 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %220 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @GFP_KERNEL, align 4
  %223 = call i32 @cfg80211_roamed(i32 %221, %struct.cfg80211_roam_info* %16, i32 %222)
  br label %224

224:                                              ; preds = %206, %196
  br label %240

225:                                              ; preds = %187
  %226 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %227 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @NDIS_80211_INFRA_ADHOC, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %225
  %232 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %233 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %236 = call i32 @get_current_channel(%struct.usbnet* %235, i32* null)
  %237 = load i32, i32* @GFP_KERNEL, align 4
  %238 = call i32 @cfg80211_ibss_joined(i32 %234, i32* %22, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %231, %225
  br label %240

240:                                              ; preds = %239, %224
  %241 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %242 = call i32 @kfree(%struct.ndis_80211_assoc_info* %241)
  %243 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %244 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %243, i32 0, i32 1
  store i32 1, i32* %244, align 8
  %245 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %246 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @ETH_ALEN, align 4
  %249 = call i32 @memcpy(i32 %247, i32* %22, i32 %248)
  %250 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %251 = call i32 @usbnet_resume_rx(%struct.usbnet* %250)
  %252 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %253 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @netif_carrier_on(i32 %254)
  store i32 0, i32* %15, align 4
  br label %256

256:                                              ; preds = %240, %156, %46
  %257 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %257)
  %258 = load i32, i32* %15, align 4
  switch i32 %258, label %260 [
    i32 0, label %259
    i32 1, label %259
  ]

259:                                              ; preds = %256, %256
  ret void

260:                                              ; preds = %256
  unreachable
}

declare dso_local %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.ndis_80211_assoc_info* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @get_association_info(%struct.usbnet*, %struct.ndis_80211_assoc_info*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.ndis_80211_assoc_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @get_bssid(%struct.usbnet*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32*, i8*) #1

declare dso_local i32 @rndis_check_bssid_list(%struct.usbnet*, i32*, i32*) #1

declare dso_local i32 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @rndis_wlan_craft_connected_bss(%struct.usbnet*, i32*, %struct.ndis_80211_assoc_info*) #1

declare dso_local i32 @cfg80211_connect_result(i32, i32*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @get_current_channel(%struct.usbnet*, i32*) #1

declare dso_local i32 @cfg80211_roamed(i32, %struct.cfg80211_roam_info*, i32) #1

declare dso_local i32 @cfg80211_ibss_joined(i32, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @usbnet_resume_rx(%struct.usbnet*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
