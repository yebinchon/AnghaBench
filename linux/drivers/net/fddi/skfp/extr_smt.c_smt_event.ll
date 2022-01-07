; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__, %struct.TYPE_5__, %struct.s_phy* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32*, i32, i64* }
%struct.TYPE_5__ = type { i32, %struct.fddi_mib_m* }
%struct.fddi_mib_m = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, i64, i32, i8*, i8*, i32, i8*, i8* }
%struct.s_phy = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@EVENT_ECM = common dso_local global i32 0, align 4
@EC_CONNECT = common dso_local global i32 0, align 4
@SM_FAST = common dso_local global i32 0, align 4
@TICKS_PER_SECOND = common dso_local global i32 0, align 4
@SMT_COND_MAC_FRAME_ERROR = common dso_local global i32 0, align 4
@INDEX_MAC = common dso_local global i32 0, align 4
@SMT_COND_MAC_NOT_COPIED = common dso_local global i32 0, align 4
@NUMPHYS = common dso_local global i32 0, align 4
@SMT_COND_PORT_EB_ERROR = common dso_local global i32 0, align 4
@INDEX_PORT = common dso_local global i64 0, align 8
@SMT_TID_NIF = common dso_local global i64 0, align 8
@fddi_broadcast = common dso_local global i32 0, align 4
@FC_SMT_NSA = common dso_local global i32 0, align 4
@SMT_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SMT : UNA expired\00", align 1
@MAC0 = common dso_local global i64 0, align 8
@SMT_Unknown = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SMT_EVENT_MAC_NEIGHBOR_CHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"SMT : DNA expired\00", align 1
@NUMMACS = common dso_local global i32 0, align 4
@EVENT_SMT = common dso_local global i32 0, align 4
@SM_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smt_event(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fddi_mib_m*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.s_phy*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %14 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %20 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %25 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %31 = load i32, i32* @EVENT_ECM, align 4
  %32 = load i32, i32* @EC_CONNECT, align 4
  %33 = call i32 @queue_event(%struct.s_smc* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %18
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SM_FAST, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %492

40:                                               ; preds = %35
  %41 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %42 = call i32 @smt_timer_poll(%struct.s_smc* %41)
  %43 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %44 = call i32 @smt_start_watchdog(%struct.s_smc* %43)
  %45 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %46 = call i32 @smt_srf_event(%struct.s_smc* %45, i32 0, i32 0, i32 0)
  %47 = call i32 (...) @smt_get_time()
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %50 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %48, %52
  %54 = load i32, i32* @TICKS_PER_SECOND, align 4
  %55 = mul nsw i32 %54, 8
  %56 = icmp sge i32 %53, %55
  br i1 %56, label %57, label %278

57:                                               ; preds = %40
  %58 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %59 = call i32 @sm_lem_evaluate(%struct.s_smc* %58)
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %62 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %65 = call i32 @mac_update_counter(%struct.s_smc* %64)
  %66 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %67 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %68, align 8
  store %struct.fddi_mib_m* %69, %struct.fddi_mib_m** %7, align 8
  %70 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %71 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %74 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %72, %75
  %77 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %78 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %81 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %79, %82
  %84 = add nsw i32 %76, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %86 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %89 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %87, %90
  %92 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %93 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %96 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %94, %97
  %99 = add nsw i32 %91, %98
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i8* @div_ratio(i32 %100, i32 %101)
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %105 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %104, i32 0, i32 6
  store i64 %103, i64* %105, align 8
  %106 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %107 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %106, i32 0, i32 7
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %57
  %111 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %112 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %115 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %126, label %118

118:                                              ; preds = %110, %57
  %119 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %120 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %123 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %121, %124
  br label %126

126:                                              ; preds = %118, %110
  %127 = phi i1 [ true, %110 ], [ %125, %118 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %131 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %136 = load i32, i32* @SMT_COND_MAC_FRAME_ERROR, align 4
  %137 = load i32, i32* @INDEX_MAC, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @smt_srf_event(%struct.s_smc* %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %126
  %141 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %142 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %145 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %143, %146
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %150 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %149, i32 0, i32 11
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %153 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %152, i32 0, i32 12
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %151, %154
  %156 = add nsw i32 %148, %155
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i8* @div_ratio(i32 %157, i32 %158)
  %160 = ptrtoint i8* %159 to i64
  %161 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %162 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %161, i32 0, i32 13
  store i64 %160, i64* %162, align 8
  %163 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %164 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %163, i32 0, i32 14
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %140
  %168 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %169 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %168, i32 0, i32 9
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %172 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %170, %173
  br i1 %174, label %183, label %175

175:                                              ; preds = %167, %140
  %176 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %177 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %176, i32 0, i32 13
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %180 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %179, i32 0, i32 14
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %178, %181
  br label %183

183:                                              ; preds = %175, %167
  %184 = phi i1 [ true, %167 ], [ %182, %175 ]
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %188 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %187, i32 0, i32 15
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %186, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %183
  %192 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %193 = load i32, i32* @SMT_COND_MAC_NOT_COPIED, align 4
  %194 = load i32, i32* @INDEX_MAC, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @smt_srf_event(%struct.s_smc* %192, i32 %193, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %183
  %198 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %199 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %202 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 4
  %203 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %204 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %203, i32 0, i32 11
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %207 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %206, i32 0, i32 12
  store i32 %205, i32* %207, align 8
  %208 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %209 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %212 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %214 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %217 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %219 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %7, align 8
  %222 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %221, i32 0, i32 10
  store i32 %220, i32* %222, align 8
  store i32 0, i32* %11, align 4
  br label %223

223:                                              ; preds = %274, %197
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* @NUMPHYS, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %277

227:                                              ; preds = %223
  %228 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %229 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %228, i32 0, i32 2
  %230 = load %struct.s_phy*, %struct.s_phy** %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %230, i64 %232
  store %struct.s_phy* %233, %struct.s_phy** %12, align 8
  %234 = load %struct.s_phy*, %struct.s_phy** %12, align 8
  %235 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %234, i32 0, i32 0
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %227
  br label %274

241:                                              ; preds = %227
  %242 = load %struct.s_phy*, %struct.s_phy** %12, align 8
  %243 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %242, i32 0, i32 0
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.s_phy*, %struct.s_phy** %12, align 8
  %248 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %247, i32 0, i32 0
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 %246, %251
  %253 = icmp sgt i32 %252, 5
  %254 = zext i1 %253 to i32
  store i32 %254, i32* %10, align 4
  %255 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %256 = load i32, i32* @SMT_COND_PORT_EB_ERROR, align 4
  %257 = load i64, i64* @INDEX_PORT, align 8
  %258 = load %struct.s_phy*, %struct.s_phy** %12, align 8
  %259 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %257, %260
  %262 = trunc i64 %261 to i32
  %263 = load i32, i32* %10, align 4
  %264 = call i32 @smt_srf_event(%struct.s_smc* %255, i32 %256, i32 %262, i32 %263)
  %265 = load %struct.s_phy*, %struct.s_phy** %12, align 8
  %266 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %265, i32 0, i32 0
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.s_phy*, %struct.s_phy** %12, align 8
  %271 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %270, i32 0, i32 0
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  store i32 %269, i32* %273, align 4
  br label %274

274:                                              ; preds = %241, %240
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %11, align 4
  br label %223

277:                                              ; preds = %223
  br label %278

278:                                              ; preds = %277, %40
  %279 = load i32, i32* %5, align 4
  %280 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %281 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = sub nsw i32 %279, %283
  %285 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %286 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @TICKS_PER_SECOND, align 4
  %290 = mul nsw i32 %288, %289
  %291 = icmp sge i32 %284, %290
  br i1 %291, label %292, label %326

292:                                              ; preds = %278
  %293 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %294 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 7
  %296 = load i64*, i64** %295, align 8
  %297 = load i64, i64* @SMT_TID_NIF, align 8
  %298 = getelementptr inbounds i64, i64* %296, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %310, label %301

301:                                              ; preds = %292
  %302 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %303 = call i64 @smt_get_tid(%struct.s_smc* %302)
  %304 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %305 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 7
  %307 = load i64*, i64** %306, align 8
  %308 = load i64, i64* @SMT_TID_NIF, align 8
  %309 = getelementptr inbounds i64, i64* %307, i64 %308
  store i64 %303, i64* %309, align 8
  br label %310

310:                                              ; preds = %301, %292
  %311 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %312 = load i32, i32* @FC_SMT_NSA, align 4
  %313 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %314 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 7
  %316 = load i64*, i64** %315, align 8
  %317 = load i64, i64* @SMT_TID_NIF, align 8
  %318 = getelementptr inbounds i64, i64* %316, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = load i32, i32* @SMT_REQUEST, align 4
  %321 = call i32 @smt_send_nif(%struct.s_smc* %311, i32* @fddi_broadcast, i32 %312, i64 %319, i32 %320, i32 0)
  %322 = load i32, i32* %5, align 4
  %323 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %324 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 2
  store i32 %322, i32* %325, align 4
  br label %326

326:                                              ; preds = %310, %278
  %327 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %328 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %395

332:                                              ; preds = %326
  %333 = load i32, i32* %5, align 4
  %334 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %335 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = sub nsw i32 %333, %337
  %339 = load i32, i32* @TICKS_PER_SECOND, align 4
  %340 = mul nsw i32 228, %339
  %341 = icmp sgt i32 %338, %340
  br i1 %341, label %342, label %395

342:                                              ; preds = %332
  %343 = call i32 @DB_SMT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %344 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %345 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 3
  store i32 0, i32* %346, align 8
  %347 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %348 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 1
  %350 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %349, align 8
  %351 = load i64, i64* @MAC0, align 8
  %352 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %350, i64 %351
  %353 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %352, i32 0, i32 19
  %354 = call i32 @is_equal(i8** %353, i8** @SMT_Unknown)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %372, label %356

356:                                              ; preds = %342
  %357 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %358 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 1
  %360 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %359, align 8
  %361 = load i64, i64* @MAC0, align 8
  %362 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %360, i64 %361
  %363 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %362, i32 0, i32 19
  %364 = load i8*, i8** %363, align 8
  %365 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %366 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 1
  %368 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %367, align 8
  %369 = load i64, i64* @MAC0, align 8
  %370 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %368, i64 %369
  %371 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %370, i32 0, i32 20
  store i8* %364, i8** %371, align 8
  br label %372

372:                                              ; preds = %356, %342
  %373 = load i8*, i8** @SMT_Unknown, align 8
  %374 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %375 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 1
  %377 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %376, align 8
  %378 = load i64, i64* @MAC0, align 8
  %379 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %377, i64 %378
  %380 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %379, i32 0, i32 19
  store i8* %373, i8** %380, align 8
  %381 = load i32, i32* @FALSE, align 4
  %382 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %383 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 1
  %385 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %384, align 8
  %386 = load i64, i64* @MAC0, align 8
  %387 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %385, i64 %386
  %388 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %387, i32 0, i32 18
  store i32 %381, i32* %388, align 8
  %389 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %390 = call i32 @update_dac(%struct.s_smc* %389, i32 0)
  %391 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %392 = load i32, i32* @SMT_EVENT_MAC_NEIGHBOR_CHANGE, align 4
  %393 = load i32, i32* @INDEX_MAC, align 4
  %394 = call i32 @smt_srf_event(%struct.s_smc* %391, i32 %392, i32 %393, i32 0)
  br label %395

395:                                              ; preds = %372, %332, %326
  %396 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %397 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %454

401:                                              ; preds = %395
  %402 = load i32, i32* %5, align 4
  %403 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %404 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 4
  %407 = sub nsw i32 %402, %406
  %408 = load i32, i32* @TICKS_PER_SECOND, align 4
  %409 = mul nsw i32 228, %408
  %410 = icmp sgt i32 %407, %409
  br i1 %410, label %411, label %454

411:                                              ; preds = %401
  %412 = call i32 @DB_SMT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %413 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %414 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 4
  store i32 0, i32* %415, align 4
  %416 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %417 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 1
  %419 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %418, align 8
  %420 = load i64, i64* @MAC0, align 8
  %421 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %419, i64 %420
  %422 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %421, i32 0, i32 16
  %423 = call i32 @is_equal(i8** %422, i8** @SMT_Unknown)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %441, label %425

425:                                              ; preds = %411
  %426 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %427 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 1
  %429 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %428, align 8
  %430 = load i64, i64* @MAC0, align 8
  %431 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %429, i64 %430
  %432 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %431, i32 0, i32 16
  %433 = load i8*, i8** %432, align 8
  %434 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %435 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 1
  %437 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %436, align 8
  %438 = load i64, i64* @MAC0, align 8
  %439 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %437, i64 %438
  %440 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %439, i32 0, i32 17
  store i8* %433, i8** %440, align 8
  br label %441

441:                                              ; preds = %425, %411
  %442 = load i8*, i8** @SMT_Unknown, align 8
  %443 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %444 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %444, i32 0, i32 1
  %446 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %445, align 8
  %447 = load i64, i64* @MAC0, align 8
  %448 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %446, i64 %447
  %449 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %448, i32 0, i32 16
  store i8* %442, i8** %449, align 8
  %450 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %451 = load i32, i32* @SMT_EVENT_MAC_NEIGHBOR_CHANGE, align 4
  %452 = load i32, i32* @INDEX_MAC, align 4
  %453 = call i32 @smt_srf_event(%struct.s_smc* %450, i32 %451, i32 %452, i32 0)
  br label %454

454:                                              ; preds = %441, %401, %395
  %455 = load i64, i64* @MAC0, align 8
  %456 = trunc i64 %455 to i32
  store i32 %456, i32* %6, align 4
  br label %457

457:                                              ; preds = %480, %454
  %458 = load i32, i32* %6, align 4
  %459 = load i32, i32* @NUMMACS, align 4
  %460 = icmp slt i32 %458, %459
  br i1 %460, label %461, label %483

461:                                              ; preds = %457
  %462 = load i32, i32* %5, align 4
  %463 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %464 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 5
  %466 = load i32*, i32** %465, align 8
  %467 = load i32, i32* %6, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = sub nsw i32 %462, %470
  %472 = load i32, i32* @TICKS_PER_SECOND, align 4
  %473 = mul nsw i32 2, %472
  %474 = icmp sgt i32 %471, %473
  br i1 %474, label %475, label %479

475:                                              ; preds = %461
  %476 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %477 = load i32, i32* %6, align 4
  %478 = call i32 @smt_emulate_token_ct(%struct.s_smc* %476, i32 %477)
  br label %479

479:                                              ; preds = %475, %461
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %6, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %6, align 4
  br label %457

483:                                              ; preds = %457
  %484 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %485 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %486 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %486, i32 0, i32 6
  %488 = load i32, i32* @EVENT_SMT, align 4
  %489 = load i32, i32* @SM_TIMER, align 4
  %490 = call i32 @EV_TOKEN(i32 %488, i32 %489)
  %491 = call i32 @smt_timer_start(%struct.s_smc* %484, i32* %487, i32 1000000, i32 %490)
  br label %492

492:                                              ; preds = %483, %39
  ret void
}

declare dso_local i32 @queue_event(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @smt_timer_poll(%struct.s_smc*) #1

declare dso_local i32 @smt_start_watchdog(%struct.s_smc*) #1

declare dso_local i32 @smt_srf_event(%struct.s_smc*, i32, i32, i32) #1

declare dso_local i32 @smt_get_time(...) #1

declare dso_local i32 @sm_lem_evaluate(%struct.s_smc*) #1

declare dso_local i32 @mac_update_counter(%struct.s_smc*) #1

declare dso_local i8* @div_ratio(i32, i32) #1

declare dso_local i64 @smt_get_tid(%struct.s_smc*) #1

declare dso_local i32 @smt_send_nif(%struct.s_smc*, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @DB_SMT(i8*) #1

declare dso_local i32 @is_equal(i8**, i8**) #1

declare dso_local i32 @update_dac(%struct.s_smc*, i32) #1

declare dso_local i32 @smt_emulate_token_ct(%struct.s_smc*, i32) #1

declare dso_local i32 @smt_timer_start(%struct.s_smc*, i32*, i32, i32) #1

declare dso_local i32 @EV_TOKEN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
