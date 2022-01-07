; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_put_start_scan_tlvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_put_start_scan_tlvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_start_scan_tlvs = type { i8* }
%struct.wmi_start_scan_arg = type { i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.wmi_ie_data = type { i32*, i8*, i8* }
%struct.wmi_chan_list = type { %struct.TYPE_6__*, i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.wmi_ssid_list = type { %struct.TYPE_7__*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.wmi_bssid_list = type { %struct.TYPE_9__*, i8*, i8* }
%struct.TYPE_9__ = type { i32 }

@WMI_CHAN_LIST_TAG = common dso_local global i32 0, align 4
@WMI_SSID_LIST_TAG = common dso_local global i32 0, align 4
@WMI_BSSID_LIST_TAG = common dso_local global i32 0, align 4
@WMI_IE_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmi_start_scan_tlvs*, %struct.wmi_start_scan_arg*)* @ath10k_wmi_put_start_scan_tlvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_put_start_scan_tlvs(%struct.wmi_start_scan_tlvs* %0, %struct.wmi_start_scan_arg* %1) #0 {
  %3 = alloca %struct.wmi_start_scan_tlvs*, align 8
  %4 = alloca %struct.wmi_start_scan_arg*, align 8
  %5 = alloca %struct.wmi_ie_data*, align 8
  %6 = alloca %struct.wmi_chan_list*, align 8
  %7 = alloca %struct.wmi_ssid_list*, align 8
  %8 = alloca %struct.wmi_bssid_list*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.wmi_start_scan_tlvs* %0, %struct.wmi_start_scan_tlvs** %3, align 8
  store %struct.wmi_start_scan_arg* %1, %struct.wmi_start_scan_arg** %4, align 8
  %11 = load %struct.wmi_start_scan_tlvs*, %struct.wmi_start_scan_tlvs** %3, align 8
  %12 = getelementptr inbounds %struct.wmi_start_scan_tlvs, %struct.wmi_start_scan_tlvs* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %15 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %66

18:                                               ; preds = %2
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.wmi_chan_list*
  store %struct.wmi_chan_list* %20, %struct.wmi_chan_list** %6, align 8
  %21 = load i32, i32* @WMI_CHAN_LIST_TAG, align 4
  %22 = call i8* @__cpu_to_le32(i32 %21)
  %23 = load %struct.wmi_chan_list*, %struct.wmi_chan_list** %6, align 8
  %24 = getelementptr inbounds %struct.wmi_chan_list, %struct.wmi_chan_list* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %26 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @__cpu_to_le32(i32 %27)
  %29 = load %struct.wmi_chan_list*, %struct.wmi_chan_list** %6, align 8
  %30 = getelementptr inbounds %struct.wmi_chan_list, %struct.wmi_chan_list* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %53, %18
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %34 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %39 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__cpu_to_le16(i32 %44)
  %46 = load %struct.wmi_chan_list*, %struct.wmi_chan_list** %6, align 8
  %47 = getelementptr inbounds %struct.wmi_chan_list, %struct.wmi_chan_list* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 4
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr i8, i8* %57, i64 24
  store i8* %58, i8** %9, align 8
  %59 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %60 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr i8, i8* %64, i64 %63
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %56, %2
  %67 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %68 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %144

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = bitcast i8* %72 to %struct.wmi_ssid_list*
  store %struct.wmi_ssid_list* %73, %struct.wmi_ssid_list** %7, align 8
  %74 = load i32, i32* @WMI_SSID_LIST_TAG, align 4
  %75 = call i8* @__cpu_to_le32(i32 %74)
  %76 = load %struct.wmi_ssid_list*, %struct.wmi_ssid_list** %7, align 8
  %77 = getelementptr inbounds %struct.wmi_ssid_list, %struct.wmi_ssid_list* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %79 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @__cpu_to_le32(i32 %80)
  %82 = load %struct.wmi_ssid_list*, %struct.wmi_ssid_list** %7, align 8
  %83 = getelementptr inbounds %struct.wmi_ssid_list, %struct.wmi_ssid_list* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %131, %71
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %87 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %134

90:                                               ; preds = %84
  %91 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %92 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %91, i32 0, i32 6
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @__cpu_to_le32(i32 %98)
  %100 = load %struct.wmi_ssid_list*, %struct.wmi_ssid_list** %7, align 8
  %101 = getelementptr inbounds %struct.wmi_ssid_list, %struct.wmi_ssid_list* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i8* %99, i8** %106, align 8
  %107 = load %struct.wmi_ssid_list*, %struct.wmi_ssid_list** %7, align 8
  %108 = getelementptr inbounds %struct.wmi_ssid_list, %struct.wmi_ssid_list* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %115 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %114, i32 0, i32 6
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %123 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %122, i32 0, i32 6
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @memcpy(i32* %113, i32 %121, i32 %129)
  br label %131

131:                                              ; preds = %90
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %84

134:                                              ; preds = %84
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr i8, i8* %135, i64 24
  store i8* %136, i8** %9, align 8
  %137 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %138 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 4, %140
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr i8, i8* %142, i64 %141
  store i8* %143, i8** %9, align 8
  br label %144

144:                                              ; preds = %134, %66
  %145 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %146 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %199

149:                                              ; preds = %144
  %150 = load i8*, i8** %9, align 8
  %151 = bitcast i8* %150 to %struct.wmi_bssid_list*
  store %struct.wmi_bssid_list* %151, %struct.wmi_bssid_list** %8, align 8
  %152 = load i32, i32* @WMI_BSSID_LIST_TAG, align 4
  %153 = call i8* @__cpu_to_le32(i32 %152)
  %154 = load %struct.wmi_bssid_list*, %struct.wmi_bssid_list** %8, align 8
  %155 = getelementptr inbounds %struct.wmi_bssid_list, %struct.wmi_bssid_list* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %157 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @__cpu_to_le32(i32 %158)
  %160 = load %struct.wmi_bssid_list*, %struct.wmi_bssid_list** %8, align 8
  %161 = getelementptr inbounds %struct.wmi_bssid_list, %struct.wmi_bssid_list* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  store i32 0, i32* %10, align 4
  br label %162

162:                                              ; preds = %186, %149
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %165 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %189

168:                                              ; preds = %162
  %169 = load %struct.wmi_bssid_list*, %struct.wmi_bssid_list** %8, align 8
  %170 = getelementptr inbounds %struct.wmi_bssid_list, %struct.wmi_bssid_list* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %178 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %177, i32 0, i32 5
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ether_addr_copy(i32 %176, i32 %184)
  br label %186

186:                                              ; preds = %168
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %162

189:                                              ; preds = %162
  %190 = load i8*, i8** %9, align 8
  %191 = getelementptr i8, i8* %190, i64 24
  store i8* %191, i8** %9, align 8
  %192 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %193 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = mul i64 4, %195
  %197 = load i8*, i8** %9, align 8
  %198 = getelementptr i8, i8* %197, i64 %196
  store i8* %198, i8** %9, align 8
  br label %199

199:                                              ; preds = %189, %144
  %200 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %201 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %236

204:                                              ; preds = %199
  %205 = load i8*, i8** %9, align 8
  %206 = bitcast i8* %205 to %struct.wmi_ie_data*
  store %struct.wmi_ie_data* %206, %struct.wmi_ie_data** %5, align 8
  %207 = load i32, i32* @WMI_IE_TAG, align 4
  %208 = call i8* @__cpu_to_le32(i32 %207)
  %209 = load %struct.wmi_ie_data*, %struct.wmi_ie_data** %5, align 8
  %210 = getelementptr inbounds %struct.wmi_ie_data, %struct.wmi_ie_data* %209, i32 0, i32 2
  store i8* %208, i8** %210, align 8
  %211 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %212 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i8* @__cpu_to_le32(i32 %213)
  %215 = load %struct.wmi_ie_data*, %struct.wmi_ie_data** %5, align 8
  %216 = getelementptr inbounds %struct.wmi_ie_data, %struct.wmi_ie_data* %215, i32 0, i32 1
  store i8* %214, i8** %216, align 8
  %217 = load %struct.wmi_ie_data*, %struct.wmi_ie_data** %5, align 8
  %218 = getelementptr inbounds %struct.wmi_ie_data, %struct.wmi_ie_data* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %221 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %224 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @memcpy(i32* %219, i32 %222, i32 %225)
  %227 = load i8*, i8** %9, align 8
  %228 = getelementptr i8, i8* %227, i64 24
  store i8* %228, i8** %9, align 8
  %229 = load %struct.wmi_start_scan_arg*, %struct.wmi_start_scan_arg** %4, align 8
  %230 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @roundup(i32 %231, i32 4)
  %233 = load i8*, i8** %9, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr i8, i8* %233, i64 %234
  store i8* %235, i8** %9, align 8
  br label %236

236:                                              ; preds = %204, %199
  ret void
}

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
