; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_pdev_tx_stats_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_pdev_tx_stats_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_fw_stats_pdev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATH10K_FW_STATS_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\0A%30s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ath10k PDEV TX stats\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%30s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"=================\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%30s %10d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"HTT cookies queued\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"HTT cookies disp.\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"MSDU queued\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"MPDU queued\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"MSDUs dropped\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Local enqued\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Local freed\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"HW queued\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"PPDUs reaped\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Num underruns\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"PPDUs cleaned\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"MPDUs requed\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Excessive retries\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"HW rate\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Sched self triggers\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Dropped due to SW retries\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Illegal rate phy errors\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Pdev continuous xretry\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"TX timeout\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"PDEV resets\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"PHY underrun\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"MPDU is more than txop limit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_fw_stats_pdev*, i8*, i32*)* @ath10k_wmi_fw_pdev_tx_stats_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_fw_pdev_tx_stats_fill(%struct.ath10k_fw_stats_pdev* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.ath10k_fw_stats_pdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k_fw_stats_pdev* %0, %struct.ath10k_fw_stats_pdev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @ATH10K_FW_STATS_BUF_SIZE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %15, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %25, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %40 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %39, i32 0, i32 21
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %35, i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %53 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %52, i32 0, i32 20
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %48, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %66 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %65, i32 0, i32 19
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %61, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %79 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %78, i32 0, i32 18
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %74, i32 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %92 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %91, i32 0, i32 17
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %87, i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %105 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %104, i32 0, i32 16
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %100, i32 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %118 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %117, i32 0, i32 15
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %113, i32 %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %7, align 4
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %7, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %131 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %130, i32 0, i32 14
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %126, i32 %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %7, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %7, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %144 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %143, i32 0, i32 13
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %139, i32 %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %7, align 4
  %149 = load i8*, i8** %5, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %7, align 4
  %155 = sub nsw i32 %153, %154
  %156 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %157 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %152, i32 %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %7, align 4
  %162 = load i8*, i8** %5, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %7, align 4
  %168 = sub nsw i32 %166, %167
  %169 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %170 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %165, i32 %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %7, align 4
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %183 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %182, i32 0, i32 10
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %178, i32 %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %7, align 4
  %188 = load i8*, i8** %5, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %7, align 4
  %194 = sub nsw i32 %192, %193
  %195 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %196 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %195, i32 0, i32 9
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %191, i32 %194, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %7, align 4
  %201 = load i8*, i8** %5, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %7, align 4
  %207 = sub nsw i32 %205, %206
  %208 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %209 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %204, i32 %207, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %7, align 4
  %214 = load i8*, i8** %5, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %7, align 4
  %220 = sub nsw i32 %218, %219
  %221 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %222 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %217, i32 %220, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %7, align 4
  %227 = load i8*, i8** %5, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %7, align 4
  %233 = sub nsw i32 %231, %232
  %234 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %235 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %230, i32 %233, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %7, align 4
  %240 = load i8*, i8** %5, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* %7, align 4
  %246 = sub nsw i32 %244, %245
  %247 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %248 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %243, i32 %246, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %7, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %7, align 4
  %253 = load i8*, i8** %5, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %7, align 4
  %259 = sub nsw i32 %257, %258
  %260 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %261 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %256, i32 %259, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* %7, align 4
  %266 = load i8*, i8** %5, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* %7, align 4
  %272 = sub nsw i32 %270, %271
  %273 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %274 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %269, i32 %272, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 %275)
  %277 = load i32, i32* %7, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %7, align 4
  %279 = load i8*, i8** %5, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* %7, align 4
  %285 = sub nsw i32 %283, %284
  %286 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %287 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %282, i32 %285, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 %288)
  %290 = load i32, i32* %7, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %7, align 4
  %292 = load i8*, i8** %5, align 8
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* %7, align 4
  %298 = sub nsw i32 %296, %297
  %299 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %300 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %295, i32 %298, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32 %301)
  %303 = load i32, i32* %7, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %7, align 4
  %305 = load i8*, i8** %5, align 8
  %306 = load i32, i32* %7, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, i8* %305, i64 %307
  %309 = load i32, i32* %8, align 4
  %310 = load i32, i32* %7, align 4
  %311 = sub nsw i32 %309, %310
  %312 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %313 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %308, i32 %311, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 %314)
  %316 = load i32, i32* %7, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* %7, align 4
  %318 = load i32, i32* %7, align 4
  %319 = load i32*, i32** %6, align 8
  store i32 %318, i32* %319, align 4
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
