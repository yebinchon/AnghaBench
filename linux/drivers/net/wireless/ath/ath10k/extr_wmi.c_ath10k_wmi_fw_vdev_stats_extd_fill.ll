; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_vdev_stats_extd_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_vdev_stats_extd_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_fw_stats_vdev_extd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATH10K_FW_STATS_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%30s %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"vdev id\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ppdu aggr count\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ppdu noack\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"mpdu queued\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ppdu nonaggr count\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"mpdu sw requeued\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"mpdu success retry\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"mpdu success multitry\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"mpdu fail retry\00", align 1
@WMI_VDEV_STATS_FTM_COUNT_VALID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"tx ftm success\00", align 1
@WMI_VDEV_STATS_FTM_COUNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"tx ftm success retry\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"tx ftm fail\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"rx ftm request count\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"rx ftm request dup count\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"rx initial ftm req count\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"rx initial ftm req dup cnt\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_fw_stats_vdev_extd*, i8*, i32*)* @ath10k_wmi_fw_vdev_stats_extd_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_fw_vdev_stats_extd_fill(%struct.ath10k_fw_stats_vdev_extd* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.ath10k_fw_stats_vdev_extd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k_fw_stats_vdev_extd* %0, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @ATH10K_FW_STATS_BUF_SIZE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %20, i32 0, i32 15
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %16, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %34 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %29, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %47 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %42, i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %60 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %55, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %73 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %68, i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %86 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %81, i32 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %99 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %94, i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %112 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %107, i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %125 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %120, i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %131 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT_VALID, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %3
  %138 = load i8*, i8** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT, align 4
  %147 = call i32 @MS(i32 %145, i32 %146)
  %148 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %141, i32 %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %137, %3
  %152 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %153 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT_VALID, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %151
  %160 = load i8*, i8** %5, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %7, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT, align 4
  %169 = call i32 @MS(i32 %167, i32 %168)
  %170 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %163, i32 %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %159, %151
  %174 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %175 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT_VALID, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %173
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %7, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT, align 4
  %191 = call i32 @MS(i32 %189, i32 %190)
  %192 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %185, i32 %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %181, %173
  %196 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %197 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT_VALID, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %195
  %204 = load i8*, i8** %5, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* %7, align 4
  %210 = sub nsw i32 %208, %209
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT, align 4
  %213 = call i32 @MS(i32 %211, i32 %212)
  %214 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %207, i32 %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %203, %195
  %218 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %219 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT_VALID, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %217
  %226 = load i8*, i8** %5, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* %7, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT, align 4
  %235 = call i32 @MS(i32 %233, i32 %234)
  %236 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %229, i32 %232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %225, %217
  %240 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %241 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT_VALID, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %261

247:                                              ; preds = %239
  %248 = load i8*, i8** %5, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %7, align 4
  %254 = sub nsw i32 %252, %253
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT, align 4
  %257 = call i32 @MS(i32 %255, i32 %256)
  %258 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %251, i32 %254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %7, align 4
  br label %261

261:                                              ; preds = %247, %239
  %262 = load %struct.ath10k_fw_stats_vdev_extd*, %struct.ath10k_fw_stats_vdev_extd** %4, align 8
  %263 = getelementptr inbounds %struct.ath10k_fw_stats_vdev_extd, %struct.ath10k_fw_stats_vdev_extd* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %9, align 4
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT_VALID, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %283

269:                                              ; preds = %261
  %270 = load i8*, i8** %5, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %7, align 4
  %276 = sub nsw i32 %274, %275
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @WMI_VDEV_STATS_FTM_COUNT, align 4
  %279 = call i32 @MS(i32 %277, i32 %278)
  %280 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %273, i32 %276, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %279)
  %281 = load i32, i32* %7, align 4
  %282 = add nsw i32 %281, %280
  store i32 %282, i32* %7, align 4
  br label %283

283:                                              ; preds = %269, %261
  %284 = load i8*, i8** %5, align 8
  %285 = load i32, i32* %7, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i32, i32* %8, align 4
  %289 = load i32, i32* %7, align 4
  %290 = sub nsw i32 %288, %289
  %291 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %287, i32 %290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %292 = load i32, i32* %7, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %7, align 4
  %294 = load i32, i32* %7, align 4
  %295 = load i32*, i32** %6, align 8
  store i32 %294, i32* %295, align 4
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
