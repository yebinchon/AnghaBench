; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwencodeext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwencodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.hostap_interface = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (i32, i32, i32, i32)*, i32 }
%struct.iw_encode_ext = type { i64, i32, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i64 0, align 8
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@IW_ENCODE_ALG_WEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@IW_ENCODE_ALG_TKIP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@IW_ENCODE_ALG_CCMP = common dso_local global i64 0, align 8
@IW_ENCODE_EXT_TX_SEQ_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism2_ioctl_giwencodeext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_giwencodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.lib80211_crypt_data**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iw_encode_ext*, align 8
  %17 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %18)
  store %struct.hostap_interface* %19, %struct.hostap_interface** %10, align 8
  %20 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %21 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %11, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %24, %struct.iw_encode_ext** %16, align 8
  %25 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 40
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %215

36:                                               ; preds = %4
  %37 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %38 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @WEP_KEYS, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %36
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %15, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %58 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %17, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call i64 @is_broadcast_ether_addr(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  store i8* null, i8** %13, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %68, i64 %70
  store %struct.lib80211_crypt_data** %71, %struct.lib80211_crypt_data*** %12, align 8
  br label %84

72:                                               ; preds = %56
  store i32 0, i32* %15, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = call i8* @ap_crypt_get_ptrs(i32 %75, i32* %76, i32 0, %struct.lib80211_crypt_data*** %12)
  store i8* %77, i8** %13, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %215

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %64
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  %87 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %88 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %90 = call i32 @memset(%struct.iw_encode_ext* %89, i32 0, i32 40)
  %91 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %12, align 8
  %92 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %91, align 8
  %93 = icmp eq %struct.lib80211_crypt_data* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %84
  %95 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %12, align 8
  %96 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %95, align 8
  %97 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = icmp eq %struct.TYPE_7__* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %94, %84
  %101 = load i64, i64* @IW_ENCODE_ALG_NONE, align 8
  %102 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %103 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %105 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %107 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %108 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %208

111:                                              ; preds = %94
  %112 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %12, align 8
  %113 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %112, align 8
  %114 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @strcmp(i32 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i64, i64* @IW_ENCODE_ALG_WEP, align 8
  %122 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %123 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %155

124:                                              ; preds = %111
  %125 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %12, align 8
  %126 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %125, align 8
  %127 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @strcmp(i32 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %124
  %134 = load i64, i64* @IW_ENCODE_ALG_TKIP, align 8
  %135 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %136 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %154

137:                                              ; preds = %124
  %138 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %12, align 8
  %139 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %138, align 8
  %140 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %139, i32 0, i32 1
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @strcmp(i32 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %137
  %147 = load i64, i64* @IW_ENCODE_ALG_CCMP, align 8
  %148 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %149 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  br label %153

150:                                              ; preds = %137
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %215

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %133
  br label %155

155:                                              ; preds = %154, %120
  %156 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %12, align 8
  %157 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %156, align 8
  %158 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %157, i32 0, i32 1
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i64 (i32, i32, i32, i32)*, i64 (i32, i32, i32, i32)** %160, align 8
  %162 = icmp ne i64 (i32, i32, i32, i32)* %161, null
  br i1 %162, label %163, label %207

163:                                              ; preds = %155
  %164 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %12, align 8
  %165 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %164, align 8
  %166 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %165, i32 0, i32 1
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i64 (i32, i32, i32, i32)*, i64 (i32, i32, i32, i32)** %168, align 8
  %170 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %171 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %175 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %12, align 8
  %178 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %177, align 8
  %179 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i64 %169(i32 %172, i32 %173, i32 %176, i32 %180)
  %182 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %183 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %182, i32 0, i32 2
  store i64 %181, i64* %183, align 8
  %184 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %185 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %163
  %189 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %190 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @IW_ENCODE_ALG_TKIP, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %196 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @IW_ENCODE_ALG_CCMP, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %194, %188
  %201 = load i32, i32* @IW_ENCODE_EXT_TX_SEQ_VALID, align 4
  %202 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %16, align 8
  %203 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %200, %194, %163
  br label %207

207:                                              ; preds = %206, %155
  br label %208

208:                                              ; preds = %207, %100
  %209 = load i8*, i8** %13, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i8*, i8** %13, align 8
  %213 = call i32 @hostap_handle_sta_release(i8* %212)
  br label %214

214:                                              ; preds = %211, %208
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %214, %150, %80, %33
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i8* @ap_crypt_get_ptrs(i32, i32*, i32, %struct.lib80211_crypt_data***) #1

declare dso_local i32 @memset(%struct.iw_encode_ext*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @hostap_handle_sta_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
