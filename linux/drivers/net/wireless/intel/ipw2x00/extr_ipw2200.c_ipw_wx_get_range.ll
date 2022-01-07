; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_get_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ipw_priv = type { i32, %struct.TYPE_16__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.iw_range = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_15__*, i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }
%struct.libipw_geo = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@IW_MAX_BITRATES = common dso_local global i64 0, align 8
@DEFAULT_RTS_THRESHOLD = common dso_local global i32 0, align 4
@MIN_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@MAX_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@WIRELESS_EXT = common dso_local global i32 0, align 4
@IEEE_B = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i32 0, align 4
@IW_MAX_FREQUENCIES = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@LIBIPW_CH_PASSIVE_ONLY = common dso_local global i32 0, align 4
@IEEE_A = common dso_local global i32 0, align 4
@IW_EVENT_CAPA_K_0 = common dso_local global i32 0, align 4
@SIOCGIWTHRSPY = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@SIOCGIWSCAN = common dso_local global i32 0, align 4
@IW_EVENT_CAPA_K_1 = common dso_local global i32 0, align 4
@IW_ENC_CAPA_WPA = common dso_local global i32 0, align 4
@IW_ENC_CAPA_WPA2 = common dso_local global i32 0, align 4
@IW_ENC_CAPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@IW_ENC_CAPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@IW_SCAN_CAPA_ESSID = common dso_local global i32 0, align 4
@IW_SCAN_CAPA_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"GET Range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_get_range(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw_priv*, align 8
  %10 = alloca %struct.iw_range*, align 8
  %11 = alloca %struct.libipw_geo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %14)
  store %struct.ipw_priv* %15, %struct.ipw_priv** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.iw_range*
  store %struct.iw_range* %17, %struct.iw_range** %10, align 8
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %19 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = call %struct.libipw_geo* @libipw_get_geo(%struct.TYPE_16__* %20)
  store %struct.libipw_geo* %21, %struct.libipw_geo** %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %23 = bitcast %union.iwreq_data* %22 to %struct.TYPE_9__*
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 136, i32* %24, align 4
  %25 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %26 = call i32 @memset(%struct.iw_range* %25, i32 0, i32 136)
  %27 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %28 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %27, i32 0, i32 0
  store i32 27000000, i32* %28, align 8
  %29 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %30 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %29, i32 0, i32 18
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 100, i32* %31, align 8
  %32 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %33 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %32, i32 0, i32 18
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %36 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %35, i32 0, i32 18
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %39 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %38, i32 0, i32 18
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32 7, i32* %40, align 4
  %41 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %42 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %41, i32 0, i32 17
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i32 70, i32* %43, align 8
  %44 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %45 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %44, i32 0, i32 17
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %48 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %47, i32 0, i32 17
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %51 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %50, i32 0, i32 17
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  store i32 7, i32* %52, align 4
  %53 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %54 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %57 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @IW_MAX_BITRATES, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @min(i32 %59, i32 %61)
  %63 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %64 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %88, %4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %68 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %73 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 127
  %81 = mul nsw i32 %80, 500000
  %82 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %83 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %71
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %65

91:                                               ; preds = %65
  %92 = load i32, i32* @DEFAULT_RTS_THRESHOLD, align 4
  %93 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %94 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %93, i32 0, i32 16
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @MIN_FRAG_THRESHOLD, align 4
  %96 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %97 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %96, i32 0, i32 15
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  %99 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %100 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %99, i32 0, i32 14
  store i32 %98, i32* %100, align 8
  %101 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %102 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 5, i32* %104, align 4
  %105 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %106 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 13, i32* %108, align 4
  %109 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %110 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %109, i32 0, i32 4
  store i32 2, i32* %110, align 8
  %111 = load i32, i32* @WEP_KEYS, align 4
  %112 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %113 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %112, i32 0, i32 13
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @WIRELESS_EXT, align 4
  %115 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %116 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %115, i32 0, i32 12
  store i32 %114, i32* %116, align 8
  %117 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %118 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %117, i32 0, i32 5
  store i32 18, i32* %118, align 4
  store i32 0, i32* %12, align 4
  %119 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %120 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %119, i32 0, i32 1
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IEEE_B, align 4
  %125 = load i32, i32* @IEEE_G, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %123, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %208

129:                                              ; preds = %91
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %204, %129
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.libipw_geo*, %struct.libipw_geo** %11, align 8
  %133 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @IW_MAX_FREQUENCIES, align 4
  %139 = icmp slt i32 %137, %138
  br label %140

140:                                              ; preds = %136, %130
  %141 = phi i1 [ false, %130 ], [ %139, %136 ]
  br i1 %141, label %142, label %207

142:                                              ; preds = %140
  %143 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %144 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %143, i32 0, i32 1
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @IW_MODE_ADHOC, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %142
  %151 = load %struct.libipw_geo*, %struct.libipw_geo** %11, align 8
  %152 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %151, i32 0, i32 3
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @LIBIPW_CH_PASSIVE_ONLY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  br label %204

163:                                              ; preds = %150, %142
  %164 = load %struct.libipw_geo*, %struct.libipw_geo** %11, align 8
  %165 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %164, i32 0, i32 3
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %173 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %172, i32 0, i32 11
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 2
  store i32 %171, i32* %178, align 4
  %179 = load %struct.libipw_geo*, %struct.libipw_geo** %11, align 8
  %180 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %179, i32 0, i32 3
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %186, 100000
  %188 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %189 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %188, i32 0, i32 11
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  store i32 %187, i32* %194, align 4
  %195 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %196 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %195, i32 0, i32 11
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  store i32 1, i32* %201, align 4
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %12, align 4
  br label %204

204:                                              ; preds = %163, %162
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %130

207:                                              ; preds = %140
  br label %208

208:                                              ; preds = %207, %91
  %209 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %210 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %209, i32 0, i32 1
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @IEEE_A, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %296

217:                                              ; preds = %208
  store i32 0, i32* %13, align 4
  br label %218

218:                                              ; preds = %292, %217
  %219 = load i32, i32* %13, align 4
  %220 = load %struct.libipw_geo*, %struct.libipw_geo** %11, align 8
  %221 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* @IW_MAX_FREQUENCIES, align 4
  %227 = icmp slt i32 %225, %226
  br label %228

228:                                              ; preds = %224, %218
  %229 = phi i1 [ false, %218 ], [ %227, %224 ]
  br i1 %229, label %230, label %295

230:                                              ; preds = %228
  %231 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %232 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %231, i32 0, i32 1
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @IW_MODE_ADHOC, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %230
  %239 = load %struct.libipw_geo*, %struct.libipw_geo** %11, align 8
  %240 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %239, i32 0, i32 2
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @LIBIPW_CH_PASSIVE_ONLY, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %238
  br label %292

251:                                              ; preds = %238, %230
  %252 = load %struct.libipw_geo*, %struct.libipw_geo** %11, align 8
  %253 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %252, i32 0, i32 2
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %253, align 8
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %261 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %260, i32 0, i32 11
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %261, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 2
  store i32 %259, i32* %266, align 4
  %267 = load %struct.libipw_geo*, %struct.libipw_geo** %11, align 8
  %268 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %267, i32 0, i32 2
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = mul nsw i32 %274, 100000
  %276 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %277 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %276, i32 0, i32 11
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %277, align 8
  %279 = load i32, i32* %12, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  store i32 %275, i32* %282, align 4
  %283 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %284 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %283, i32 0, i32 11
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %284, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 1
  store i32 1, i32* %289, align 4
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %12, align 4
  br label %292

292:                                              ; preds = %251, %250
  %293 = load i32, i32* %13, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %13, align 4
  br label %218

295:                                              ; preds = %228
  br label %296

296:                                              ; preds = %295, %208
  %297 = load i32, i32* %12, align 4
  %298 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %299 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %298, i32 0, i32 6
  store i32 %297, i32* %299, align 8
  %300 = load i32, i32* %12, align 4
  %301 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %302 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %301, i32 0, i32 7
  store i32 %300, i32* %302, align 4
  %303 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %304 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %303, i32 0, i32 0
  %305 = call i32 @mutex_unlock(i32* %304)
  %306 = load i32, i32* @IW_EVENT_CAPA_K_0, align 4
  %307 = load i32, i32* @SIOCGIWTHRSPY, align 4
  %308 = call i32 @IW_EVENT_CAPA_MASK(i32 %307)
  %309 = or i32 %306, %308
  %310 = load i32, i32* @SIOCGIWAP, align 4
  %311 = call i32 @IW_EVENT_CAPA_MASK(i32 %310)
  %312 = or i32 %309, %311
  %313 = load i32, i32* @SIOCGIWSCAN, align 4
  %314 = call i32 @IW_EVENT_CAPA_MASK(i32 %313)
  %315 = or i32 %312, %314
  %316 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %317 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %316, i32 0, i32 8
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  store i32 %315, i32* %319, align 4
  %320 = load i32, i32* @IW_EVENT_CAPA_K_1, align 4
  %321 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %322 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %321, i32 0, i32 8
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  store i32 %320, i32* %324, align 4
  %325 = load i32, i32* @IW_ENC_CAPA_WPA, align 4
  %326 = load i32, i32* @IW_ENC_CAPA_WPA2, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* @IW_ENC_CAPA_CIPHER_TKIP, align 4
  %329 = or i32 %327, %328
  %330 = load i32, i32* @IW_ENC_CAPA_CIPHER_CCMP, align 4
  %331 = or i32 %329, %330
  %332 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %333 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %332, i32 0, i32 9
  store i32 %331, i32* %333, align 8
  %334 = load i32, i32* @IW_SCAN_CAPA_ESSID, align 4
  %335 = load i32, i32* @IW_SCAN_CAPA_TYPE, align 4
  %336 = or i32 %334, %335
  %337 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %338 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %337, i32 0, i32 10
  store i32 %336, i32* %338, align 4
  %339 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local %struct.libipw_geo* @libipw_get_geo(%struct.TYPE_16__*) #1

declare dso_local i32 @memset(%struct.iw_range*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IW_EVENT_CAPA_MASK(i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
