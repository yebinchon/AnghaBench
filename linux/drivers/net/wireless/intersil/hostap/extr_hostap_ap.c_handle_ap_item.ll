; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_handle_ap_item.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_handle_ap_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, %struct.net_device* }
%struct.TYPE_12__ = type { i64 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hostap_80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32 }

@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"handle_ap_item - data frame\0A\00", align 1
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_STYPE_NULLFUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"   not ToDS frame (fc=0x%04x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"handle_ap_item - addr1(BSSID)=%pM not own MAC\0A\00", align 1
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_BEACON = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_STYPE_PSPOLL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Unknown frame in AP queue: type=0x%02x subtype=0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"handle_ap_item - not a management frame?\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"handle_ap_item - addr1(DA)=%pM not own MAC\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"handle_ap_item - addr3(BSSID)=%pM not own MAC\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"==> ASSOC RESP (ignored)\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"==> REASSOC RESP (ignored)\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"==> ATIM (ignored)\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Unknown mgmt frame subtype 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.sk_buff*, %struct.hostap_80211_rx_status*)* @handle_ap_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ap_item(%struct.TYPE_13__* %0, %struct.sk_buff* %1, %struct.hostap_80211_rx_status* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hostap_80211_rx_status*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.hostap_80211_rx_status* %2, %struct.hostap_80211_rx_status** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %11, align 8
  %19 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %96, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %96

37:                                               ; preds = %33
  %38 = load i32, i32* @DEBUG_AP, align 4
  %39 = call i32 (i32, i8*, ...) @PDEBUG(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44, %37
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @IEEE80211_STYPE_NULLFUNC, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %56 = call i32 @ap_handle_dropped_data(%struct.TYPE_13__* %54, %struct.ieee80211_hdr* %55)
  br label %211

57:                                               ; preds = %49
  %58 = load i32, i32* @DEBUG_AP, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @PDEBUG(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %211

61:                                               ; preds = %44
  %62 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.net_device*, %struct.net_device** %7, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ether_addr_equal(i32 %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @DEBUG_AP, align 4
  %72 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @PDEBUG(i32 %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %211

76:                                               ; preds = %61
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @IEEE80211_STYPE_NULLFUNC, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %90 = call i32 @ap_handle_data_nullfunc(%struct.TYPE_13__* %88, %struct.ieee80211_hdr* %89)
  br label %95

91:                                               ; preds = %83, %76
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %94 = call i32 @ap_handle_dropped_data(%struct.TYPE_13__* %92, %struct.ieee80211_hdr* %93)
  br label %95

95:                                               ; preds = %91, %87
  br label %211

96:                                               ; preds = %33, %3
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @IEEE80211_STYPE_BEACON, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %6, align 8
  %108 = call i32 @handle_beacon(%struct.TYPE_13__* %105, %struct.sk_buff* %106, %struct.hostap_80211_rx_status* %107)
  br label %211

109:                                              ; preds = %100, %96
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @IEEE80211_STYPE_PSPOLL, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %120 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %6, align 8
  %121 = call i32 @handle_pspoll(%struct.TYPE_13__* %118, %struct.ieee80211_hdr* %119, %struct.hostap_80211_rx_status* %120)
  br label %211

122:                                              ; preds = %113, %109
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @DEBUG_AP, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (i32, i8*, ...) @PDEBUG(i32 %128, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %130)
  br label %211

132:                                              ; preds = %122
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* @DEBUG_AP, align 4
  %138 = call i32 (i32, i8*, ...) @PDEBUG(i32 %137, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %211

139:                                              ; preds = %132
  %140 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %141 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.net_device*, %struct.net_device** %7, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ether_addr_equal(i32 %142, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %139
  %149 = load i32, i32* @DEBUG_AP, align 4
  %150 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %151 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i8*, ...) @PDEBUG(i32 %149, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  br label %211

154:                                              ; preds = %139
  %155 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %156 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.net_device*, %struct.net_device** %7, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ether_addr_equal(i32 %157, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %154
  %164 = load i32, i32* @DEBUG_AP, align 4
  %165 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %166 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, ...) @PDEBUG(i32 %164, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  br label %211

169:                                              ; preds = %154
  %170 = load i32, i32* %10, align 4
  switch i32 %170, label %205 [
    i32 135, label %171
    i32 134, label %176
    i32 129, label %179
    i32 128, label %184
    i32 133, label %187
    i32 130, label %190
    i32 132, label %195
    i32 131, label %200
  ]

171:                                              ; preds = %169
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %6, align 8
  %175 = call i32 @handle_assoc(%struct.TYPE_13__* %172, %struct.sk_buff* %173, %struct.hostap_80211_rx_status* %174, i32 0)
  br label %210

176:                                              ; preds = %169
  %177 = load i32, i32* @DEBUG_AP, align 4
  %178 = call i32 (i32, i8*, ...) @PDEBUG(i32 %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %210

179:                                              ; preds = %169
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %182 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %6, align 8
  %183 = call i32 @handle_assoc(%struct.TYPE_13__* %180, %struct.sk_buff* %181, %struct.hostap_80211_rx_status* %182, i32 1)
  br label %210

184:                                              ; preds = %169
  %185 = load i32, i32* @DEBUG_AP, align 4
  %186 = call i32 (i32, i8*, ...) @PDEBUG(i32 %185, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %210

187:                                              ; preds = %169
  %188 = load i32, i32* @DEBUG_AP, align 4
  %189 = call i32 (i32, i8*, ...) @PDEBUG(i32 %188, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %210

190:                                              ; preds = %169
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %193 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %6, align 8
  %194 = call i32 @handle_disassoc(%struct.TYPE_13__* %191, %struct.sk_buff* %192, %struct.hostap_80211_rx_status* %193)
  br label %210

195:                                              ; preds = %169
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %198 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %6, align 8
  %199 = call i32 @handle_authen(%struct.TYPE_13__* %196, %struct.sk_buff* %197, %struct.hostap_80211_rx_status* %198)
  br label %210

200:                                              ; preds = %169
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %203 = load %struct.hostap_80211_rx_status*, %struct.hostap_80211_rx_status** %6, align 8
  %204 = call i32 @handle_deauth(%struct.TYPE_13__* %201, %struct.sk_buff* %202, %struct.hostap_80211_rx_status* %203)
  br label %210

205:                                              ; preds = %169
  %206 = load i32, i32* @DEBUG_AP, align 4
  %207 = load i32, i32* %10, align 4
  %208 = ashr i32 %207, 4
  %209 = call i32 (i32, i8*, ...) @PDEBUG(i32 %206, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %205, %200, %195, %190, %187, %184, %179, %176, %171
  br label %211

211:                                              ; preds = %210, %163, %148, %136, %127, %117, %104, %95, %70, %57, %53
  %212 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %213 = call i32 @dev_kfree_skb(%struct.sk_buff* %212)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @ap_handle_dropped_data(%struct.TYPE_13__*, %struct.ieee80211_hdr*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @ap_handle_data_nullfunc(%struct.TYPE_13__*, %struct.ieee80211_hdr*) #1

declare dso_local i32 @handle_beacon(%struct.TYPE_13__*, %struct.sk_buff*, %struct.hostap_80211_rx_status*) #1

declare dso_local i32 @handle_pspoll(%struct.TYPE_13__*, %struct.ieee80211_hdr*, %struct.hostap_80211_rx_status*) #1

declare dso_local i32 @handle_assoc(%struct.TYPE_13__*, %struct.sk_buff*, %struct.hostap_80211_rx_status*, i32) #1

declare dso_local i32 @handle_disassoc(%struct.TYPE_13__*, %struct.sk_buff*, %struct.hostap_80211_rx_status*) #1

declare dso_local i32 @handle_authen(%struct.TYPE_13__*, %struct.sk_buff*, %struct.hostap_80211_rx_status*) #1

declare dso_local i32 @handle_deauth(%struct.TYPE_13__*, %struct.sk_buff*, %struct.hostap_80211_rx_status*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
