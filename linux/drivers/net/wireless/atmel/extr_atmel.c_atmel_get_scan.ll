; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_get_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_get_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }
%struct.atmel_private = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, i32*, i32 }
%struct.iw_event = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@SITE_SURVEY_COMPLETED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IW_SCAN_MAX_DATA = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i32 0, align 4
@SIOCGIWESSID = common dso_local global i32 0, align 4
@SIOCGIWMODE = common dso_local global i32 0, align 4
@IW_EV_UINT_LEN = common dso_local global i32 0, align 4
@SIOCGIWFREQ = common dso_local global i32 0, align 4
@IW_EV_FREQ_LEN = common dso_local global i32 0, align 4
@IWEVQUAL = common dso_local global i32 0, align 4
@IW_EV_QUAL_LEN = common dso_local global i32 0, align 4
@SIOCGIWENCODE = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @atmel_get_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_get_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.iw_event, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %14)
  store %struct.atmel_private* %15, %struct.atmel_private** %10, align 8
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %12, align 8
  %17 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %18 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SITE_SURVEY_COMPLETED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %222

25:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %208, %25
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %29 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %211

32:                                               ; preds = %26
  %33 = load i32, i32* @SIOCGIWAP, align 4
  %34 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @ARPHRD_ETHER, align 4
  %36 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %44 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32 %42, i32 %50, i32 %51)
  %53 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i32, i32* @IW_EV_ADDR_LEN, align 4
  %60 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %53, i8* %54, i8* %58, %struct.iw_event* %13, i32 %59)
  store i8* %60, i8** %12, align 8
  %61 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %62 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 32
  br i1 %76, label %77, label %81

77:                                               ; preds = %32
  %78 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32 32, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %32
  %82 = load i32, i32* @SIOCGIWESSID, align 4
  %83 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %94 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %93, i32 0, i32 2
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %87, i8* %88, i8* %92, %struct.iw_event* %13, i32* %100)
  store i8* %101, i8** %12, align 8
  %102 = load i32, i32* @SIOCGIWMODE, align 4
  %103 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %102, i32* %103, align 8
  %104 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %105 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i32, i32* @IW_EV_UINT_LEN, align 4
  %121 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %114, i8* %115, i8* %119, %struct.iw_event* %13, i32 %120)
  store i8* %121, i8** %12, align 8
  %122 = load i32, i32* @SIOCGIWFREQ, align 4
  %123 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %122, i32* %123, align 8
  %124 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %125 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %124, i32 0, i32 2
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 8
  %135 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i32, i32* @IW_EV_FREQ_LEN, align 4
  %145 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %138, i8* %139, i8* %143, %struct.iw_event* %13, i32 %144)
  store i8* %145, i8** %12, align 8
  %146 = load i32, i32* @IWEVQUAL, align 4
  %147 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %146, i32* %147, align 8
  %148 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %149 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %148, i32 0, i32 2
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i32, i32* @IW_EV_QUAL_LEN, align 4
  %173 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %166, i8* %167, i8* %171, %struct.iw_event* %13, i32 %172)
  store i8* %173, i8** %12, align 8
  %174 = load i32, i32* @SIOCGIWENCODE, align 4
  %175 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %174, i32* %175, align 8
  %176 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %177 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %176, i32 0, i32 2
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %81
  %186 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %187 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %188 = or i32 %186, %187
  %189 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  store i32 %188, i32* %191, align 4
  br label %197

192:                                              ; preds = %81
  %193 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %194 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  store i32 %193, i32* %196, align 4
  br label %197

197:                                              ; preds = %192, %185
  %198 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  store i32 0, i32* %200, align 8
  %201 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %202 = load i8*, i8** %12, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %201, i8* %202, i8* %206, %struct.iw_event* %13, i32* null)
  store i8* %207, i8** %12, align 8
  br label %208

208:                                              ; preds = %197
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %26

211:                                              ; preds = %26
  %212 = load i8*, i8** %12, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = trunc i64 %216 to i32
  %218 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %219 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %221 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %220, i32 0, i32 1
  store i64 0, i64* %221, align 8
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %211, %22
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @iwe_stream_add_event(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32) #1

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
