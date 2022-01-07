; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_vdev_stats_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_vdev_stats_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_fw_stats_vdev = type { i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATH10K_FW_STATS_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%30s %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"vdev id\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"beacon snr\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"data snr\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"num rx frames\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"num rts fail\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"num rts success\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"num rx err\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"num rx discard\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"num tx not acked\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"%25s [%02d] %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"num tx frames\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"num tx frames retries\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"num tx frames failures\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"%25s [%02d] 0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"tx rate history\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"beacon rssi history\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_fw_stats_vdev*, i8*, i32*)* @ath10k_wmi_fw_vdev_stats_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_fw_vdev_stats_fill(%struct.ath10k_fw_stats_vdev* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.ath10k_fw_stats_vdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k_fw_stats_vdev* %0, %struct.ath10k_fw_stats_vdev** %4, align 8
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
  %20 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
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
  %33 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %34 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %29, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %35)
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
  %46 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %47 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %42, i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %48)
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
  %59 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %60 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %55, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %61)
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
  %72 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %73 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %68, i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %74)
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
  %85 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %86 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %81, i32 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %87)
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
  %98 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %99 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %94, i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %100)
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
  %111 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %112 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %107, i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %113)
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
  %124 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %125 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %120, i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %156, %3
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %133 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @ARRAY_SIZE(i32* %134)
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %159

137:                                              ; preds = %130
  %138 = load i8*, i8** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %147 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %141, i32 %144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %145, i32 %152)
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %137
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %130

159:                                              ; preds = %130
  store i32 0, i32* %9, align 4
  br label %160

160:                                              ; preds = %186, %159
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %163 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @ARRAY_SIZE(i32* %164)
  %166 = icmp slt i32 %161, %165
  br i1 %166, label %167, label %189

167:                                              ; preds = %160
  %168 = load i8*, i8** %5, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %7, align 4
  %174 = sub nsw i32 %172, %173
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %177 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %171, i32 %174, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %175, i32 %182)
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %167
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %160

189:                                              ; preds = %160
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %216, %189
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %193 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @ARRAY_SIZE(i32* %194)
  %196 = icmp slt i32 %191, %195
  br i1 %196, label %197, label %219

197:                                              ; preds = %190
  %198 = load i8*, i8** %5, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %7, align 4
  %204 = sub nsw i32 %202, %203
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %207 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %201, i32 %204, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %205, i32 %212)
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %7, align 4
  br label %216

216:                                              ; preds = %197
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %190

219:                                              ; preds = %190
  store i32 0, i32* %9, align 4
  br label %220

220:                                              ; preds = %246, %219
  %221 = load i32, i32* %9, align 4
  %222 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %223 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @ARRAY_SIZE(i32* %224)
  %226 = icmp slt i32 %221, %225
  br i1 %226, label %227, label %249

227:                                              ; preds = %220
  %228 = load i8*, i8** %5, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %7, align 4
  %234 = sub nsw i32 %232, %233
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %237 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %231, i32 %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %235, i32 %242)
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %7, align 4
  br label %246

246:                                              ; preds = %227
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %9, align 4
  br label %220

249:                                              ; preds = %220
  store i32 0, i32* %9, align 4
  br label %250

250:                                              ; preds = %276, %249
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %253 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @ARRAY_SIZE(i32* %254)
  %256 = icmp slt i32 %251, %255
  br i1 %256, label %257, label %279

257:                                              ; preds = %250
  %258 = load i8*, i8** %5, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* %7, align 4
  %264 = sub nsw i32 %262, %263
  %265 = load i32, i32* %9, align 4
  %266 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %267 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %261, i32 %264, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %265, i32 %272)
  %274 = load i32, i32* %7, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %7, align 4
  br label %276

276:                                              ; preds = %257
  %277 = load i32, i32* %9, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %9, align 4
  br label %250

279:                                              ; preds = %250
  %280 = load i8*, i8** %5, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %280, i64 %282
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* %7, align 4
  %286 = sub nsw i32 %284, %285
  %287 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %283, i32 %286, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %288 = load i32, i32* %7, align 4
  %289 = add nsw i32 %288, %287
  store i32 %289, i32* %7, align 4
  %290 = load i32, i32* %7, align 4
  %291 = load i32*, i32** %6, align 8
  store i32 %290, i32* %291, align 4
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
