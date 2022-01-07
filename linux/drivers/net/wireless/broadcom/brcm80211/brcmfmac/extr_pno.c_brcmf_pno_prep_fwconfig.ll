; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_prep_fwconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_prep_fwconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pno_info = type { i32, %struct.cfg80211_sched_scan_request** }
%struct.cfg80211_sched_scan_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_pno_config_le = type { i32 }
%struct.brcmf_gscan_bucket_config = type { i32, i32, i32, i32, i32 }

@SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"n_reqs=%d\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@BRCMF_PNO_SCHED_SCAN_MIN_PERIOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"scan period too small, using minimum\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BRCMF_PNO_REPORT_NO_BATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"base period=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"[%d] period %u max %u repeat %u flag %x idx %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pno_info*, %struct.brcmf_pno_config_le*, %struct.brcmf_gscan_bucket_config**, i32*)* @brcmf_pno_prep_fwconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pno_prep_fwconfig(%struct.brcmf_pno_info* %0, %struct.brcmf_pno_config_le* %1, %struct.brcmf_gscan_bucket_config** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_pno_info*, align 8
  %7 = alloca %struct.brcmf_pno_config_le*, align 8
  %8 = alloca %struct.brcmf_gscan_bucket_config**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %11 = alloca %struct.brcmf_gscan_bucket_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.brcmf_pno_info* %0, %struct.brcmf_pno_info** %6, align 8
  store %struct.brcmf_pno_config_le* %1, %struct.brcmf_pno_config_le** %7, align 8
  store %struct.brcmf_gscan_bucket_config** %2, %struct.brcmf_gscan_bucket_config*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @SCAN, align 4
  %16 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %17 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %21 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @ENODATA, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %222

31:                                               ; preds = %4
  %32 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %33 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %32, i32 0, i32 1
  %34 = load %struct.cfg80211_sched_scan_request**, %struct.cfg80211_sched_scan_request*** %33, align 8
  %35 = getelementptr inbounds %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %34, i64 0
  %36 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %35, align 8
  %37 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  store i32 1, i32* %12, align 4
  br label %43

43:                                               ; preds = %67, %31
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %46 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %51 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %50, i32 0, i32 1
  %52 = load %struct.cfg80211_sched_scan_request**, %struct.cfg80211_sched_scan_request*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %52, i64 %54
  %56 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %55, align 8
  store %struct.cfg80211_sched_scan_request* %56, %struct.cfg80211_sched_scan_request** %10, align 8
  %57 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %10, align 8
  %58 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @gcd(i32 %62, i32 %64)
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %49
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %43

70:                                               ; preds = %43
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BRCMF_PNO_SCHED_SCAN_MIN_PERIOD, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* @SCAN, align 4
  %77 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @BRCMF_PNO_SCHED_SCAN_MIN_PERIOD, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.brcmf_gscan_bucket_config**, %struct.brcmf_gscan_bucket_config*** %8, align 8
  store %struct.brcmf_gscan_bucket_config* null, %struct.brcmf_gscan_bucket_config** %81, align 8
  %82 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %83 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.brcmf_gscan_bucket_config* @kcalloc(i32 %84, i32 20, i32 %85)
  store %struct.brcmf_gscan_bucket_config* %86, %struct.brcmf_gscan_bucket_config** %11, align 8
  %87 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %88 = icmp ne %struct.brcmf_gscan_bucket_config* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %222

92:                                               ; preds = %80
  %93 = load %struct.brcmf_pno_config_le*, %struct.brcmf_pno_config_le** %7, align 8
  %94 = call i32 @memset(%struct.brcmf_pno_config_le* %93, i32 0, i32 4)
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %158, %92
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %98 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %161

101:                                              ; preds = %95
  %102 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %103 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %102, i32 0, i32 1
  %104 = load %struct.cfg80211_sched_scan_request**, %struct.cfg80211_sched_scan_request*** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %104, i64 %106
  %108 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %107, align 8
  store %struct.cfg80211_sched_scan_request* %108, %struct.cfg80211_sched_scan_request** %10, align 8
  %109 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %10, align 8
  %110 = load %struct.brcmf_pno_config_le*, %struct.brcmf_pno_config_le** %7, align 8
  %111 = call i32 @brcmf_pno_get_bucket_channels(%struct.cfg80211_sched_scan_request* %109, %struct.brcmf_pno_config_le* %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %101
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %13, align 4
  br label %218

116:                                              ; preds = %101
  %117 = load i32, i32* %14, align 4
  %118 = sub nsw i32 %117, 1
  %119 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %119, i64 %121
  %123 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %122, i32 0, i32 0
  store i32 %118, i32* %123, align 4
  %124 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %10, align 8
  %125 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %129, %131
  %133 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %133, i64 %135
  %137 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %136, i32 0, i32 1
  store i32 %132, i32* %137, align 4
  %138 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %138, i64 %140
  %142 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %116
  %146 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %146, i64 %148
  %150 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %149, i32 0, i32 1
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %145, %116
  %152 = load i32, i32* @BRCMF_PNO_REPORT_NO_BATCH, align 4
  %153 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %153, i64 %155
  %157 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %156, i32 0, i32 2
  store i32 %152, i32* %157, align 4
  br label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %95

161:                                              ; preds = %95
  %162 = call i64 (...) @BRCMF_SCAN_ON()
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %212

164:                                              ; preds = %161
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, i32, ...) @brcmf_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  store i32 0, i32* %12, align 4
  br label %168

168:                                              ; preds = %208, %164
  %169 = load i32, i32* %12, align 4
  %170 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %171 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %211

174:                                              ; preds = %168
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %176, i64 %178
  %180 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %182, i64 %184
  %186 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @le16_to_cpu(i32 %187)
  %189 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %189, i64 %191
  %193 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %195, i64 %197
  %199 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %201, i64 %203
  %205 = getelementptr inbounds %struct.brcmf_gscan_bucket_config, %struct.brcmf_gscan_bucket_config* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8*, i32, ...) @brcmf_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %175, i32 %181, i32 %188, i32 %194, i32 %200, i32 %206)
  br label %208

208:                                              ; preds = %174
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %168

211:                                              ; preds = %168
  br label %212

212:                                              ; preds = %211, %161
  %213 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %214 = load %struct.brcmf_gscan_bucket_config**, %struct.brcmf_gscan_bucket_config*** %8, align 8
  store %struct.brcmf_gscan_bucket_config* %213, %struct.brcmf_gscan_bucket_config** %214, align 8
  %215 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %216 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  store i32 %217, i32* %5, align 4
  br label %222

218:                                              ; preds = %114
  %219 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %11, align 8
  %220 = call i32 @kfree(%struct.brcmf_gscan_bucket_config* %219)
  %221 = load i32, i32* %13, align 4
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %218, %212, %89, %28
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local %struct.brcmf_gscan_bucket_config* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.brcmf_pno_config_le*, i32, i32) #1

declare dso_local i32 @brcmf_pno_get_bucket_channels(%struct.cfg80211_sched_scan_request*, %struct.brcmf_pno_config_le*) #1

declare dso_local i64 @BRCMF_SCAN_ON(...) #1

declare dso_local i32 @brcmf_err(i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.brcmf_gscan_bucket_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
