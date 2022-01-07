; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_update_target_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_update_target_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, %struct.target_stats, %struct.ath6kl* }
%struct.target_stats = type { i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath6kl = type { i32, i32 }
%struct.wmi_target_stats = type { %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.tkip_ccmp_stats, %struct.TYPE_8__, %struct.TYPE_13__ }
%struct.tkip_ccmp_stats = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATH6KL_DBG_TRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"updating target stats\0A\00", align 1
@WMM_NUM_AC = common dso_local global i64 0, align 8
@STATS_UPDATE_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl_vif*, i64*, i32)* @ath6kl_update_target_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_update_target_stats(%struct.ath6kl_vif* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.ath6kl_vif*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi_target_stats*, align 8
  %8 = alloca %struct.ath6kl*, align 8
  %9 = alloca %struct.target_stats*, align 8
  %10 = alloca %struct.tkip_ccmp_stats*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i64*, i64** %5, align 8
  %14 = bitcast i64* %13 to %struct.wmi_target_stats*
  store %struct.wmi_target_stats* %14, %struct.wmi_target_stats** %7, align 8
  %15 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %16 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %15, i32 0, i32 2
  %17 = load %struct.ath6kl*, %struct.ath6kl** %16, align 8
  store %struct.ath6kl* %17, %struct.ath6kl** %8, align 8
  %18 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %19 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %18, i32 0, i32 1
  store %struct.target_stats* %19, %struct.target_stats** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 248
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %638

24:                                               ; preds = %3
  %25 = load i32, i32* @ATH6KL_DBG_TRC, align 4
  %26 = call i32 @ath6kl_dbg(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %28 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 15
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @le32_to_cpu(i32 %31)
  %33 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %34 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %33, i32 0, i32 53
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %32, i64 %36
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %34, align 8
  %39 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %40 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 14
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le32_to_cpu(i32 %43)
  %45 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %46 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %45, i32 0, i32 52
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %44, i64 %48
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %52 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 13
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %58 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %57, i32 0, i32 51
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %56, i64 %60
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %64 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le32_to_cpu(i32 %67)
  %69 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %70 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %69, i32 0, i32 50
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %68, i64 %72
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %76 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @le32_to_cpu(i32 %79)
  %81 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %82 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %81, i32 0, i32 49
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr i8, i8* %80, i64 %84
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %88 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @le32_to_cpu(i32 %91)
  %93 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %94 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %93, i32 0, i32 48
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %92, i64 %96
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %100 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @le32_to_cpu(i32 %103)
  %105 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %106 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %105, i32 0, i32 47
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr i8, i8* %104, i64 %108
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %106, align 8
  %111 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %112 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @le32_to_cpu(i32 %115)
  %117 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %118 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %117, i32 0, i32 46
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr i8, i8* %116, i64 %120
  %122 = ptrtoint i8* %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %124 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @le32_to_cpu(i32 %127)
  %129 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %130 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %129, i32 0, i32 45
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr i8, i8* %128, i64 %132
  %134 = ptrtoint i8* %133 to i32
  store i32 %134, i32* %130, align 8
  store i64 0, i64* %12, align 8
  br label %135

135:                                              ; preds = %158, %24
  %136 = load i64, i64* %12, align 8
  %137 = load i64, i64* @WMM_NUM_AC, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %135
  %140 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %141 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 6
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @le32_to_cpu(i32 %147)
  %149 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %150 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %149, i32 0, i32 44
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* %12, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr i8, i8* %148, i64 %155
  %157 = ptrtoint i8* %156 to i32
  store i32 %157, i32* %153, align 4
  br label %158

158:                                              ; preds = %139
  %159 = load i64, i64* %12, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %12, align 8
  br label %135

161:                                              ; preds = %135
  %162 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %163 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @le32_to_cpu(i32 %166)
  %168 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %169 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %168, i32 0, i32 43
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr i8, i8* %167, i64 %171
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %169, align 8
  %174 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %175 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @le32_to_cpu(i32 %178)
  %180 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %181 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %180, i32 0, i32 42
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr i8, i8* %179, i64 %183
  %185 = ptrtoint i8* %184 to i32
  store i32 %185, i32* %181, align 4
  %186 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %187 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @le32_to_cpu(i32 %190)
  %192 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %193 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %192, i32 0, i32 41
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = getelementptr i8, i8* %191, i64 %195
  %197 = ptrtoint i8* %196 to i32
  store i32 %197, i32* %193, align 8
  %198 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %199 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %198, i32 0, i32 6
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i8* @le32_to_cpu(i32 %202)
  %204 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %205 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %204, i32 0, i32 40
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr i8, i8* %203, i64 %207
  %209 = ptrtoint i8* %208 to i32
  store i32 %209, i32* %205, align 4
  %210 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %211 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @le32_to_cpu(i32 %214)
  %216 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %217 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %216, i32 0, i32 39
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr i8, i8* %215, i64 %219
  %221 = ptrtoint i8* %220 to i32
  store i32 %221, i32* %217, align 8
  %222 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %223 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i8* @a_sle32_to_cpu(i32 %226)
  store i8* %227, i8** %11, align 8
  %228 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %229 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i8*, i8** %11, align 8
  %232 = call i8* @ath6kl_wmi_get_rate(i32 %230, i8* %231)
  %233 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %234 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %233, i32 0, i32 38
  store i8* %232, i8** %234, align 8
  %235 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %236 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 14
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @le32_to_cpu(i32 %239)
  %241 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %242 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %241, i32 0, i32 37
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr i8, i8* %240, i64 %244
  %246 = ptrtoint i8* %245 to i32
  store i32 %246, i32* %242, align 4
  %247 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %248 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %247, i32 0, i32 6
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 13
  %251 = load i32, i32* %250, align 4
  %252 = call i8* @le32_to_cpu(i32 %251)
  %253 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %254 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %253, i32 0, i32 36
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  %257 = getelementptr i8, i8* %252, i64 %256
  %258 = ptrtoint i8* %257 to i32
  store i32 %258, i32* %254, align 8
  %259 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %260 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 12
  %263 = load i32, i32* %262, align 4
  %264 = call i8* @le32_to_cpu(i32 %263)
  %265 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %266 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %265, i32 0, i32 35
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr i8, i8* %264, i64 %268
  %270 = ptrtoint i8* %269 to i32
  store i32 %270, i32* %266, align 4
  %271 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %272 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %271, i32 0, i32 6
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 11
  %275 = load i32, i32* %274, align 4
  %276 = call i8* @le32_to_cpu(i32 %275)
  %277 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %278 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %277, i32 0, i32 34
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = getelementptr i8, i8* %276, i64 %280
  %282 = ptrtoint i8* %281 to i32
  store i32 %282, i32* %278, align 8
  %283 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %284 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %283, i32 0, i32 6
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 10
  %287 = load i32, i32* %286, align 4
  %288 = call i8* @le32_to_cpu(i32 %287)
  %289 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %290 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %289, i32 0, i32 33
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr i8, i8* %288, i64 %292
  %294 = ptrtoint i8* %293 to i32
  store i32 %294, i32* %290, align 4
  %295 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %296 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %295, i32 0, i32 6
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 9
  %299 = load i32, i32* %298, align 4
  %300 = call i8* @le32_to_cpu(i32 %299)
  %301 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %302 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %301, i32 0, i32 32
  %303 = load i32, i32* %302, align 8
  %304 = sext i32 %303 to i64
  %305 = getelementptr i8, i8* %300, i64 %304
  %306 = ptrtoint i8* %305 to i32
  store i32 %306, i32* %302, align 8
  %307 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %308 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %307, i32 0, i32 6
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 8
  %311 = load i32, i32* %310, align 4
  %312 = call i8* @le32_to_cpu(i32 %311)
  %313 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %314 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %313, i32 0, i32 31
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr i8, i8* %312, i64 %316
  %318 = ptrtoint i8* %317 to i32
  store i32 %318, i32* %314, align 4
  %319 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %320 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %319, i32 0, i32 6
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 7
  %323 = load i32, i32* %322, align 4
  %324 = call i8* @le32_to_cpu(i32 %323)
  %325 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %326 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %325, i32 0, i32 30
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = getelementptr i8, i8* %324, i64 %328
  %330 = ptrtoint i8* %329 to i32
  store i32 %330, i32* %326, align 8
  %331 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %332 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %331, i32 0, i32 6
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 4
  %336 = call i8* @le32_to_cpu(i32 %335)
  %337 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %338 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %337, i32 0, i32 29
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr i8, i8* %336, i64 %340
  %342 = ptrtoint i8* %341 to i32
  store i32 %342, i32* %338, align 4
  %343 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %344 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %343, i32 0, i32 6
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 4
  %348 = call i8* @le32_to_cpu(i32 %347)
  %349 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %350 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %349, i32 0, i32 28
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = getelementptr i8, i8* %348, i64 %352
  %354 = ptrtoint i8* %353 to i32
  store i32 %354, i32* %350, align 8
  %355 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %356 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %355, i32 0, i32 6
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 4
  %360 = call i8* @le32_to_cpu(i32 %359)
  %361 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %362 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %361, i32 0, i32 27
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr i8, i8* %360, i64 %364
  %366 = ptrtoint i8* %365 to i32
  store i32 %366, i32* %362, align 4
  %367 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %368 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %367, i32 0, i32 6
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = call i8* @le32_to_cpu(i32 %371)
  %373 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %374 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %373, i32 0, i32 26
  %375 = load i32, i32* %374, align 8
  %376 = sext i32 %375 to i64
  %377 = getelementptr i8, i8* %372, i64 %376
  %378 = ptrtoint i8* %377 to i32
  store i32 %378, i32* %374, align 8
  %379 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %380 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %379, i32 0, i32 6
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = call i8* @le32_to_cpu(i32 %383)
  %385 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %386 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %385, i32 0, i32 25
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr i8, i8* %384, i64 %388
  %390 = ptrtoint i8* %389 to i32
  store i32 %390, i32* %386, align 4
  %391 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %392 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %391, i32 0, i32 6
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = call i8* @le32_to_cpu(i32 %395)
  %397 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %398 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %397, i32 0, i32 24
  %399 = load i32, i32* %398, align 8
  %400 = sext i32 %399 to i64
  %401 = getelementptr i8, i8* %396, i64 %400
  %402 = ptrtoint i8* %401 to i32
  store i32 %402, i32* %398, align 8
  %403 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %404 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %403, i32 0, i32 6
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = call i8* @a_sle32_to_cpu(i32 %407)
  store i8* %408, i8** %11, align 8
  %409 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %410 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = load i8*, i8** %11, align 8
  %413 = call i8* @ath6kl_wmi_get_rate(i32 %411, i8* %412)
  %414 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %415 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %414, i32 0, i32 23
  store i8* %413, i8** %415, align 8
  %416 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %417 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %416, i32 0, i32 6
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i32 0, i32 0
  store %struct.tkip_ccmp_stats* %418, %struct.tkip_ccmp_stats** %10, align 8
  %419 = load %struct.tkip_ccmp_stats*, %struct.tkip_ccmp_stats** %10, align 8
  %420 = getelementptr inbounds %struct.tkip_ccmp_stats, %struct.tkip_ccmp_stats* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = call i8* @le32_to_cpu(i32 %421)
  %423 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %424 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %423, i32 0, i32 22
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr i8, i8* %422, i64 %426
  %428 = ptrtoint i8* %427 to i32
  store i32 %428, i32* %424, align 4
  %429 = load %struct.tkip_ccmp_stats*, %struct.tkip_ccmp_stats** %10, align 8
  %430 = getelementptr inbounds %struct.tkip_ccmp_stats, %struct.tkip_ccmp_stats* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 4
  %432 = call i8* @le32_to_cpu(i32 %431)
  %433 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %434 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %433, i32 0, i32 21
  %435 = load i32, i32* %434, align 8
  %436 = sext i32 %435 to i64
  %437 = getelementptr i8, i8* %432, i64 %436
  %438 = ptrtoint i8* %437 to i32
  store i32 %438, i32* %434, align 8
  %439 = load %struct.tkip_ccmp_stats*, %struct.tkip_ccmp_stats** %10, align 8
  %440 = getelementptr inbounds %struct.tkip_ccmp_stats, %struct.tkip_ccmp_stats* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 4
  %442 = call i8* @le32_to_cpu(i32 %441)
  %443 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %444 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %443, i32 0, i32 20
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr i8, i8* %442, i64 %446
  %448 = ptrtoint i8* %447 to i32
  store i32 %448, i32* %444, align 4
  %449 = load %struct.tkip_ccmp_stats*, %struct.tkip_ccmp_stats** %10, align 8
  %450 = getelementptr inbounds %struct.tkip_ccmp_stats, %struct.tkip_ccmp_stats* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = call i8* @le32_to_cpu(i32 %451)
  %453 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %454 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %453, i32 0, i32 19
  %455 = load i32, i32* %454, align 8
  %456 = sext i32 %455 to i64
  %457 = getelementptr i8, i8* %452, i64 %456
  %458 = ptrtoint i8* %457 to i32
  store i32 %458, i32* %454, align 8
  %459 = load %struct.tkip_ccmp_stats*, %struct.tkip_ccmp_stats** %10, align 8
  %460 = getelementptr inbounds %struct.tkip_ccmp_stats, %struct.tkip_ccmp_stats* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = call i8* @le32_to_cpu(i32 %461)
  %463 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %464 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %463, i32 0, i32 18
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr i8, i8* %462, i64 %466
  %468 = ptrtoint i8* %467 to i32
  store i32 %468, i32* %464, align 4
  %469 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %470 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %469, i32 0, i32 5
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = call i8* @le32_to_cpu(i32 %472)
  %474 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %475 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %474, i32 0, i32 17
  %476 = load i32, i32* %475, align 8
  %477 = sext i32 %476 to i64
  %478 = getelementptr i8, i8* %473, i64 %477
  %479 = ptrtoint i8* %478 to i32
  store i32 %479, i32* %475, align 8
  %480 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %481 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %480, i32 0, i32 4
  %482 = load i32, i32* %481, align 4
  %483 = call i8* @a_sle32_to_cpu(i32 %482)
  %484 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %485 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %484, i32 0, i32 16
  store i8* %483, i8** %485, align 8
  %486 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %487 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %486, i32 0, i32 3
  %488 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %487, i32 0, i32 7
  %489 = load i32, i32* %488, align 4
  %490 = call i8* @le32_to_cpu(i32 %489)
  %491 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %492 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %491, i32 0, i32 15
  %493 = load i32, i32* %492, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr i8, i8* %490, i64 %494
  %496 = ptrtoint i8* %495 to i32
  store i32 %496, i32* %492, align 4
  %497 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %498 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %497, i32 0, i32 3
  %499 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %498, i32 0, i32 6
  %500 = load i32, i32* %499, align 4
  %501 = call i8* @le32_to_cpu(i32 %500)
  %502 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %503 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %502, i32 0, i32 14
  %504 = load i32, i32* %503, align 8
  %505 = sext i32 %504 to i64
  %506 = getelementptr i8, i8* %501, i64 %505
  %507 = ptrtoint i8* %506 to i32
  store i32 %507, i32* %503, align 8
  %508 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %509 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %508, i32 0, i32 3
  %510 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %509, i32 0, i32 5
  %511 = load i32, i32* %510, align 4
  %512 = call i64 @le16_to_cpu(i32 %511)
  %513 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %514 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %513, i32 0, i32 13
  %515 = load i32, i32* %514, align 4
  %516 = sext i32 %515 to i64
  %517 = add nsw i64 %516, %512
  %518 = trunc i64 %517 to i32
  store i32 %518, i32* %514, align 4
  %519 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %520 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %519, i32 0, i32 3
  %521 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i32 0, i32 4
  %522 = load i32, i32* %521, align 4
  %523 = call i64 @le16_to_cpu(i32 %522)
  %524 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %525 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %524, i32 0, i32 12
  %526 = load i32, i32* %525, align 8
  %527 = sext i32 %526 to i64
  %528 = add nsw i64 %527, %523
  %529 = trunc i64 %528 to i32
  store i32 %529, i32* %525, align 8
  %530 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %531 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %530, i32 0, i32 3
  %532 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %531, i32 0, i32 3
  %533 = load i32, i32* %532, align 4
  %534 = call i8* @a_sle16_to_cpu(i32 %533)
  %535 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %536 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %535, i32 0, i32 11
  store i8* %534, i8** %536, align 8
  %537 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %538 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %537, i32 0, i32 3
  %539 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 4
  %541 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %542 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %541, i32 0, i32 10
  store i32 %540, i32* %542, align 4
  %543 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %544 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %543, i32 0, i32 3
  %545 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 4
  %547 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %548 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %547, i32 0, i32 9
  store i32 %546, i32* %548, align 8
  %549 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %550 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %549, i32 0, i32 3
  %551 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = call i8* @a_sle16_to_cpu(i32 %552)
  %554 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %555 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %554, i32 0, i32 8
  store i8* %553, i8** %555, align 8
  %556 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %557 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = call i8* @le32_to_cpu(i32 %558)
  %560 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %561 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %560, i32 0, i32 7
  store i8* %559, i8** %561, align 8
  %562 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %563 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %562, i32 0, i32 1
  %564 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %563, i32 0, i32 3
  %565 = load i32, i32* %564, align 8
  %566 = call i8* @le32_to_cpu(i32 %565)
  %567 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %568 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %567, i32 0, i32 6
  %569 = load i32, i32* %568, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr i8, i8* %566, i64 %570
  %572 = ptrtoint i8* %571 to i32
  store i32 %572, i32* %568, align 4
  %573 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %574 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %574, i32 0, i32 2
  %576 = load i64, i64* %575, align 8
  %577 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %578 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %577, i32 0, i32 5
  %579 = load i32, i32* %578, align 8
  %580 = sext i32 %579 to i64
  %581 = add nsw i64 %580, %576
  %582 = trunc i64 %581 to i32
  store i32 %582, i32* %578, align 8
  %583 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %584 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %583, i32 0, i32 1
  %585 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %584, i32 0, i32 1
  %586 = load i64, i64* %585, align 8
  %587 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %588 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %587, i32 0, i32 4
  %589 = load i32, i32* %588, align 4
  %590 = sext i32 %589 to i64
  %591 = add nsw i64 %590, %586
  %592 = trunc i64 %591 to i32
  store i32 %592, i32* %588, align 4
  %593 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %594 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = call i64 @le16_to_cpu(i32 %596)
  %598 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %599 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %598, i32 0, i32 3
  %600 = load i32, i32* %599, align 8
  %601 = sext i32 %600 to i64
  %602 = add nsw i64 %601, %597
  %603 = trunc i64 %602 to i32
  store i32 %603, i32* %599, align 8
  %604 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %605 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %605, i32 0, i32 2
  %607 = load i32, i32* %606, align 8
  %608 = call i8* @le32_to_cpu(i32 %607)
  %609 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %610 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %609, i32 0, i32 2
  store i8* %608, i8** %610, align 8
  %611 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %612 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %611, i32 0, i32 0
  %613 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %612, i32 0, i32 1
  %614 = load i32, i32* %613, align 4
  %615 = call i8* @le32_to_cpu(i32 %614)
  %616 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %617 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %616, i32 0, i32 1
  store i8* %615, i8** %617, align 8
  %618 = load %struct.wmi_target_stats*, %struct.wmi_target_stats** %7, align 8
  %619 = getelementptr inbounds %struct.wmi_target_stats, %struct.wmi_target_stats* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = call i8* @le32_to_cpu(i32 %621)
  %623 = load %struct.target_stats*, %struct.target_stats** %9, align 8
  %624 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %623, i32 0, i32 0
  store i8* %622, i8** %624, align 8
  %625 = load i32, i32* @STATS_UPDATE_PEND, align 4
  %626 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %627 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %626, i32 0, i32 0
  %628 = call i64 @test_bit(i32 %625, i32* %627)
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %638

630:                                              ; preds = %161
  %631 = load i32, i32* @STATS_UPDATE_PEND, align 4
  %632 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %633 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %632, i32 0, i32 0
  %634 = call i32 @clear_bit(i32 %631, i32* %633)
  %635 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %636 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %635, i32 0, i32 0
  %637 = call i32 @wake_up(i32* %636)
  br label %638

638:                                              ; preds = %23, %630, %161
  ret void
}

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @a_sle32_to_cpu(i32) #1

declare dso_local i8* @ath6kl_wmi_get_rate(i32, i8*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i8* @a_sle16_to_cpu(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
