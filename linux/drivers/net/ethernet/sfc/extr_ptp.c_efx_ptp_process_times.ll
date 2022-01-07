; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_process_times.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_process_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i64, %struct.pps_event_time, %struct.TYPE_4__*, i32 (i32, i32, i32)*, i32, i32, i32 }
%struct.pps_event_time = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }

@PTP_OUT_SYNCHRONIZE_TIMESET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SYNCHRONISATION_GRANULARITY_NS = common dso_local global i64 0, align 8
@MAX_SYNCHRONISATION_NS = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"PTP no suitable synchronisations\0A\00", align 1
@MC_NANOSECOND_BITS = common dso_local global i32 0, align 4
@MC_SECOND_MASK = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PTP bad synchronisation seconds\0A\00", align 1
@MC_NANOSECOND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, i64, %struct.pps_event_time*)* @efx_ptp_process_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_process_times(%struct.efx_nic* %0, i32 %1, i64 %2, %struct.pps_event_time* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.pps_event_time*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.efx_ptp_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timespec64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.timespec64, align 8
  %22 = alloca %struct.timespec64, align 8
  %23 = alloca %struct.timespec64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.pps_event_time* %3, %struct.pps_event_time** %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @PTP_OUT_SYNCHRONIZE_TIMESET, align 4
  %26 = call i32 @MCDI_VAR_ARRAY_LEN(i64 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 1
  %29 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %28, align 8
  store %struct.efx_ptp_data* %29, %struct.efx_ptp_data** %14, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %238

35:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %119, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %122

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PTP_OUT_SYNCHRONIZE_TIMESET, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @MCDI_ARRAY_STRUCT_PTR(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %46 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = call i32 @efx_ptp_read_timeset(i32 %44, %struct.TYPE_4__* %50)
  %52 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %53 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %52, i32 0, i32 3
  %54 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %53, align 8
  %55 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %56 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 %54(i32 0, i32 %62, i32 0)
  %64 = call { i64, i32 } @ktime_to_timespec64(i32 %63)
  %65 = bitcast %struct.timespec64* %22 to { i64, i32 }*
  %66 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %65, i32 0, i32 0
  %67 = extractvalue { i64, i32 } %64, 0
  store i64 %67, i64* %66, align 8
  %68 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %65, i32 0, i32 1
  %69 = extractvalue { i64, i32 } %64, 1
  store i32 %69, i32* %68, align 8
  %70 = bitcast %struct.timespec64* %21 to i8*
  %71 = bitcast %struct.timespec64* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  %72 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %73 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %19, align 8
  %80 = load i64, i64* %19, align 8
  %81 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %21, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %80, %82
  store i64 %83, i64* %20, align 8
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* @SYNCHRONISATION_GRANULARITY_NS, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %40
  %88 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %89 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %118

92:                                               ; preds = %40
  %93 = load i64, i64* %20, align 8
  %94 = load i64, i64* @MAX_SYNCHRONISATION_NS, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %98 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %117

101:                                              ; preds = %92
  %102 = load i64, i64* %20, align 8
  %103 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %104 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %109 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %116

112:                                              ; preds = %101
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %112, %107
  br label %117

117:                                              ; preds = %116, %96
  br label %118

118:                                              ; preds = %117, %87
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %36

122:                                              ; preds = %36
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %127 = load i32, i32* @drv, align 4
  %128 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %129 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @netif_warn(%struct.efx_nic* %126, i32 %127, i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* @EAGAIN, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %238

134:                                              ; preds = %122
  %135 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %136 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @MC_NANOSECOND_BITS, align 4
  %144 = ashr i32 %142, %143
  store i32 %144, i32* %16, align 4
  %145 = load %struct.pps_event_time*, %struct.pps_event_time** %9, align 8
  %146 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @MC_SECOND_MASK, align 4
  %150 = and i32 %148, %149
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %134
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* @MC_SECOND_MASK, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %154
  %162 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %163 = load i32, i32* @hw, align 4
  %164 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %165 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @netif_warn(%struct.efx_nic* %162, i32 %163, i32 %166, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i32, i32* @EAGAIN, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %5, align 4
  br label %238

170:                                              ; preds = %154, %134
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %16, align 4
  %173 = sub nsw i32 %171, %172
  %174 = and i32 %173, 1
  %175 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %17, i32 0, i32 1
  store i32 %174, i32* %175, align 8
  %176 = load %struct.pps_event_time*, %struct.pps_event_time** %9, align 8
  %177 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %181 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %180, i32 0, i32 2
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @MC_NANOSECOND_MASK, align 4
  %189 = and i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = sub nsw i64 %179, %190
  %192 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %17, i32 0, i32 0
  store i64 %191, i64* %192, align 8
  %193 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %194 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %193, i32 0, i32 3
  %195 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %194, align 8
  %196 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %197 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %196, i32 0, i32 2
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load i32, i32* %13, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %205 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %204, i32 0, i32 2
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = call i32 %195(i32 %203, i32 %211, i32 0)
  store i32 %212, i32* %18, align 4
  %213 = load i32, i32* %18, align 4
  %214 = call { i64, i32 } @ktime_to_timespec64(i32 %213)
  %215 = bitcast %struct.timespec64* %23 to { i64, i32 }*
  %216 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %215, i32 0, i32 0
  %217 = extractvalue { i64, i32 } %214, 0
  store i64 %217, i64* %216, align 8
  %218 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %215, i32 0, i32 1
  %219 = extractvalue { i64, i32 } %214, 1
  store i32 %219, i32* %218, align 8
  %220 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %23, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %17, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, %221
  store i64 %224, i64* %222, align 8
  %225 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %226 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %225, i32 0, i32 1
  %227 = load %struct.pps_event_time*, %struct.pps_event_time** %9, align 8
  %228 = bitcast %struct.pps_event_time* %226 to i8*
  %229 = bitcast %struct.pps_event_time* %227 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %228, i8* align 8 %229, i64 16, i1 false)
  %230 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %14, align 8
  %231 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %230, i32 0, i32 1
  %232 = bitcast %struct.timespec64* %17 to { i64, i32 }*
  %233 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %232, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @pps_sub_ts(%struct.pps_event_time* %231, i64 %234, i32 %236)
  store i32 0, i32* %5, align 4
  br label %238

238:                                              ; preds = %170, %161, %125, %32
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i32 @MCDI_VAR_ARRAY_LEN(i64, i32) #1

declare dso_local i32 @efx_ptp_read_timeset(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @MCDI_ARRAY_STRUCT_PTR(i32, i32, i32) #1

declare dso_local { i64, i32 } @ktime_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @pps_sub_ts(%struct.pps_event_time*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
