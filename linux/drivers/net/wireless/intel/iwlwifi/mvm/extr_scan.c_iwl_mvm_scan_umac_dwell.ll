; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_umac_dwell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_umac_dwell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm_scan_timing_params = type { i32, i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_scan_req_umac = type { i8*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i8**, i8**, i8* }
%struct.TYPE_10__ = type { i8**, i8** }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8**, i8**, i8*, i8*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.iwl_mvm_scan_params = type { i64, i64, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@scan_timing = common dso_local global %struct.iwl_mvm_scan_timing_params* null, align 8
@IWL_SCAN_DWELL_ACTIVE = common dso_local global i8* null, align 8
@IWL_SCAN_DWELL_PASSIVE = common dso_local global i8* null, align 8
@IWL_SCAN_ADWELL_DEFAULT_N_APS_SOCIAL = common dso_local global i32 0, align 4
@IWL_SCAN_ADWELL_DEFAULT_LB_N_APS = common dso_local global i32 0, align 4
@IWL_SCAN_ADWELL_DEFAULT_HB_N_APS = common dso_local global i32 0, align 4
@IWL_MVM_ADWELL_MAX_BUDGET = common dso_local global i64 0, align 8
@IWL_SCAN_ADWELL_MAX_BUDGET_DIRECTED_SCAN = common dso_local global i64 0, align 8
@IWL_SCAN_ADWELL_MAX_BUDGET_FULL_SCAN = common dso_local global i64 0, align 8
@IWL_SCAN_PRIORITY_EXT_6 = common dso_local global i32 0, align 4
@SCAN_LB_LMAC_IDX = common dso_local global i64 0, align 8
@SCAN_HB_LMAC_IDX = common dso_local global i64 0, align 8
@IWL_SCAN_DWELL_FRAGMENTED = common dso_local global i8* null, align 8
@IWL_SCAN_DWELL_EXTENDED = common dso_local global i8* null, align 8
@IWL_SCAN_PRIORITY_EXT_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_scan_req_umac*, %struct.iwl_mvm_scan_params*)* @iwl_mvm_scan_umac_dwell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_scan_umac_dwell(%struct.iwl_mvm* %0, %struct.iwl_scan_req_umac* %1, %struct.iwl_mvm_scan_params* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_scan_req_umac*, align 8
  %6 = alloca %struct.iwl_mvm_scan_params*, align 8
  %7 = alloca %struct.iwl_mvm_scan_timing_params*, align 8
  %8 = alloca %struct.iwl_mvm_scan_timing_params*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_scan_req_umac* %1, %struct.iwl_scan_req_umac** %5, align 8
  store %struct.iwl_mvm_scan_params* %2, %struct.iwl_mvm_scan_params** %6, align 8
  %11 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** @scan_timing, align 8
  %12 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %11, i64 %14
  store %struct.iwl_mvm_scan_timing_params* %15, %struct.iwl_mvm_scan_timing_params** %7, align 8
  %16 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  br label %26

24:                                               ; preds = %3
  %25 = load i8*, i8** @IWL_SCAN_DWELL_ACTIVE, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i8* [ %23, %20 ], [ %25, %24 ]
  store i8* %27, i8** %9, align 8
  %28 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  br label %38

36:                                               ; preds = %26
  %37 = load i8*, i8** @IWL_SCAN_DWELL_PASSIVE, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i8* [ %35, %32 ], [ %37, %36 ]
  store i8* %39, i8** %10, align 8
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %41 = call i64 @iwl_mvm_is_adaptive_dwell_supported(%struct.iwl_mvm* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %202

43:                                               ; preds = %38
  %44 = load i32, i32* @IWL_SCAN_ADWELL_DEFAULT_N_APS_SOCIAL, align 4
  %45 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %46 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 8
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @IWL_SCAN_ADWELL_DEFAULT_LB_N_APS, align 4
  %49 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %50 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 7
  store i32 %48, i32* %51, align 8
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %53 = call i64 @iwl_mvm_is_adwell_hb_ap_num_supported(%struct.iwl_mvm* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load i32, i32* @IWL_SCAN_ADWELL_DEFAULT_HB_N_APS, align 4
  %57 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %58 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  br label %60

60:                                               ; preds = %55, %43
  %61 = load i64, i64* @IWL_MVM_ADWELL_MAX_BUDGET, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i64, i64* @IWL_MVM_ADWELL_MAX_BUDGET, align 8
  %65 = call i8* @cpu_to_le16(i64 %64)
  %66 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %67 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 6
  store i8* %65, i8** %68, align 8
  br label %95

69:                                               ; preds = %60
  %70 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %70, i32 0, i32 3
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %76 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i64, i64* @IWL_SCAN_ADWELL_MAX_BUDGET_DIRECTED_SCAN, align 8
  %84 = call i8* @cpu_to_le16(i64 %83)
  %85 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %86 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 6
  store i8* %84, i8** %87, align 8
  br label %94

88:                                               ; preds = %74, %69
  %89 = load i64, i64* @IWL_SCAN_ADWELL_MAX_BUDGET_FULL_SCAN, align 8
  %90 = call i8* @cpu_to_le16(i64 %89)
  %91 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %92 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 6
  store i8* %90, i8** %93, align 8
  br label %94

94:                                               ; preds = %88, %82
  br label %95

95:                                               ; preds = %94, %63
  %96 = load i32, i32* @IWL_SCAN_PRIORITY_EXT_6, align 4
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %99 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 5
  store i8* %97, i8** %100, align 8
  %101 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** %7, align 8
  %102 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %106 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 4
  %108 = load i8**, i8*** %107, align 8
  %109 = load i64, i64* @SCAN_LB_LMAC_IDX, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  store i8* %104, i8** %110, align 8
  %111 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** %7, align 8
  %112 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @cpu_to_le32(i32 %113)
  %115 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %116 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = load i8**, i8*** %117, align 8
  %119 = load i64, i64* @SCAN_LB_LMAC_IDX, align 8
  %120 = getelementptr inbounds i8*, i8** %118, i64 %119
  store i8* %114, i8** %120, align 8
  %121 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %122 = call i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %150

124:                                              ; preds = %95
  %125 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** @scan_timing, align 8
  %126 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %125, i64 %128
  store %struct.iwl_mvm_scan_timing_params* %129, %struct.iwl_mvm_scan_timing_params** %8, align 8
  %130 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** %8, align 8
  %131 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @cpu_to_le32(i32 %132)
  %134 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %135 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  %137 = load i8**, i8*** %136, align 8
  %138 = load i64, i64* @SCAN_HB_LMAC_IDX, align 8
  %139 = getelementptr inbounds i8*, i8** %137, i64 %138
  store i8* %133, i8** %139, align 8
  %140 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** %8, align 8
  %141 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %145 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = load i8**, i8*** %146, align 8
  %148 = load i64, i64* @SCAN_HB_LMAC_IDX, align 8
  %149 = getelementptr inbounds i8*, i8** %147, i64 %148
  store i8* %143, i8** %149, align 8
  br label %150

150:                                              ; preds = %124, %95
  %151 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %152 = call i32 @iwl_mvm_is_adaptive_dwell_v2_supported(%struct.iwl_mvm* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %150
  %155 = load i8*, i8** %9, align 8
  %156 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %157 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  store i8* %155, i8** %158, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %161 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  %163 = load i8*, i8** @IWL_SCAN_DWELL_FRAGMENTED, align 8
  %164 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %165 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store i8* %163, i8** %166, align 8
  br label %201

167:                                              ; preds = %150
  %168 = load i8*, i8** %9, align 8
  %169 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %170 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i8**, i8*** %171, align 8
  %173 = load i64, i64* @SCAN_LB_LMAC_IDX, align 8
  %174 = getelementptr inbounds i8*, i8** %172, i64 %173
  store i8* %168, i8** %174, align 8
  %175 = load i8*, i8** %10, align 8
  %176 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %177 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i8**, i8*** %178, align 8
  %180 = load i64, i64* @SCAN_LB_LMAC_IDX, align 8
  %181 = getelementptr inbounds i8*, i8** %179, i64 %180
  store i8* %175, i8** %181, align 8
  %182 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %183 = call i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %167
  %186 = load i8*, i8** %9, align 8
  %187 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %188 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load i8**, i8*** %189, align 8
  %191 = load i64, i64* @SCAN_HB_LMAC_IDX, align 8
  %192 = getelementptr inbounds i8*, i8** %190, i64 %191
  store i8* %186, i8** %192, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %195 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i8**, i8*** %196, align 8
  %198 = load i64, i64* @SCAN_HB_LMAC_IDX, align 8
  %199 = getelementptr inbounds i8*, i8** %197, i64 %198
  store i8* %193, i8** %199, align 8
  br label %200

200:                                              ; preds = %185, %167
  br label %201

201:                                              ; preds = %200, %154
  br label %310

202:                                              ; preds = %38
  %203 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %204 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %203, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %209 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  br label %213

211:                                              ; preds = %202
  %212 = load i8*, i8** @IWL_SCAN_DWELL_EXTENDED, align 8
  br label %213

213:                                              ; preds = %211, %207
  %214 = phi i8* [ %210, %207 ], [ %212, %211 ]
  %215 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %216 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 6
  store i8* %214, i8** %217, align 8
  %218 = load i8*, i8** %9, align 8
  %219 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %220 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 5
  store i8* %218, i8** %221, align 8
  %222 = load i8*, i8** %10, align 8
  %223 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %224 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 4
  store i8* %222, i8** %225, align 8
  %226 = load i8*, i8** @IWL_SCAN_DWELL_FRAGMENTED, align 8
  %227 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %228 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 3
  store i8* %226, i8** %229, align 8
  %230 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %231 = call i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %259

233:                                              ; preds = %213
  %234 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** @scan_timing, align 8
  %235 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %236 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %234, i64 %237
  store %struct.iwl_mvm_scan_timing_params* %238, %struct.iwl_mvm_scan_timing_params** %8, align 8
  %239 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** %8, align 8
  %240 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i8* @cpu_to_le32(i32 %241)
  %243 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %244 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  %246 = load i8**, i8*** %245, align 8
  %247 = load i64, i64* @SCAN_HB_LMAC_IDX, align 8
  %248 = getelementptr inbounds i8*, i8** %246, i64 %247
  store i8* %242, i8** %248, align 8
  %249 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** %8, align 8
  %250 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i8* @cpu_to_le32(i32 %251)
  %253 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %254 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i8**, i8*** %255, align 8
  %257 = load i64, i64* @SCAN_HB_LMAC_IDX, align 8
  %258 = getelementptr inbounds i8*, i8** %256, i64 %257
  store i8* %252, i8** %258, align 8
  br label %259

259:                                              ; preds = %233, %213
  %260 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %261 = call i64 @iwl_mvm_cdb_scan_api(%struct.iwl_mvm* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %289

263:                                              ; preds = %259
  %264 = load i32, i32* @IWL_SCAN_PRIORITY_EXT_6, align 4
  %265 = call i8* @cpu_to_le32(i32 %264)
  %266 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %267 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  store i8* %265, i8** %268, align 8
  %269 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** %7, align 8
  %270 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i8* @cpu_to_le32(i32 %271)
  %273 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %274 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  %276 = load i8**, i8*** %275, align 8
  %277 = load i64, i64* @SCAN_LB_LMAC_IDX, align 8
  %278 = getelementptr inbounds i8*, i8** %276, i64 %277
  store i8* %272, i8** %278, align 8
  %279 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** %7, align 8
  %280 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @cpu_to_le32(i32 %281)
  %283 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %284 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load i8**, i8*** %285, align 8
  %287 = load i64, i64* @SCAN_LB_LMAC_IDX, align 8
  %288 = getelementptr inbounds i8*, i8** %286, i64 %287
  store i8* %282, i8** %288, align 8
  br label %309

289:                                              ; preds = %259
  %290 = load i32, i32* @IWL_SCAN_PRIORITY_EXT_6, align 4
  %291 = call i8* @cpu_to_le32(i32 %290)
  %292 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %293 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 2
  store i8* %291, i8** %294, align 8
  %295 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** %7, align 8
  %296 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i8* @cpu_to_le32(i32 %297)
  %299 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %300 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 1
  store i8* %298, i8** %301, align 8
  %302 = load %struct.iwl_mvm_scan_timing_params*, %struct.iwl_mvm_scan_timing_params** %7, align 8
  %303 = getelementptr inbounds %struct.iwl_mvm_scan_timing_params, %struct.iwl_mvm_scan_timing_params* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i8* @cpu_to_le32(i32 %304)
  %306 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %307 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 0
  store i8* %305, i8** %308, align 8
  br label %309

309:                                              ; preds = %289, %263
  br label %310

310:                                              ; preds = %309, %201
  %311 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %312 = call i64 @iwl_mvm_is_regular_scan(%struct.iwl_mvm_scan_params* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %310
  %315 = load i32, i32* @IWL_SCAN_PRIORITY_EXT_6, align 4
  %316 = call i8* @cpu_to_le32(i32 %315)
  %317 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %318 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %317, i32 0, i32 0
  store i8* %316, i8** %318, align 8
  br label %324

319:                                              ; preds = %310
  %320 = load i32, i32* @IWL_SCAN_PRIORITY_EXT_2, align 4
  %321 = call i8* @cpu_to_le32(i32 %320)
  %322 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %5, align 8
  %323 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %322, i32 0, i32 0
  store i8* %321, i8** %323, align 8
  br label %324

324:                                              ; preds = %319, %314
  ret void
}

declare dso_local i64 @iwl_mvm_is_adaptive_dwell_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_is_adwell_hb_ap_num_supported(%struct.iwl_mvm*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_is_adaptive_dwell_v2_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_cdb_scan_api(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_is_regular_scan(%struct.iwl_mvm_scan_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
