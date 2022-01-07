; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_cee_to_dcb_v1_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_cee_to_dcb_v1_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp = type { i64, i32*, i32, i32*, i32, i32 }
%struct.i40e_dcbx_config = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32*, i32*, i32* }

@I40E_CEE_PGID_PRIO_0_MASK = common dso_local global i32 0, align 4
@I40E_CEE_PGID_PRIO_0_SHIFT = common dso_local global i32 0, align 4
@I40E_CEE_PGID_PRIO_1_MASK = common dso_local global i32 0, align 4
@I40E_CEE_PGID_PRIO_1_SHIFT = common dso_local global i32 0, align 4
@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@I40E_CEE_PGID_STRICT = common dso_local global i64 0, align 8
@I40E_IEEE_TSA_STRICT = common dso_local global i32 0, align 4
@I40E_IEEE_TSA_ETS = common dso_local global i32 0, align 4
@I40E_AQC_CEE_APP_STATUS_MASK = common dso_local global i32 0, align 4
@I40E_AQC_CEE_APP_STATUS_SHIFT = common dso_local global i32 0, align 4
@I40E_TLV_STATUS_ERR = common dso_local global i32 0, align 4
@I40E_CEE_OPER_MAX_APPS = common dso_local global i32 0, align 4
@I40E_AQC_CEE_APP_FCOE_MASK = common dso_local global i32 0, align 4
@I40E_AQC_CEE_APP_FCOE_SHIFT = common dso_local global i32 0, align 4
@I40E_APP_SEL_ETHTYPE = common dso_local global i8* null, align 8
@I40E_APP_PROTOID_FCOE = common dso_local global i32 0, align 4
@I40E_AQC_CEE_APP_ISCSI_MASK = common dso_local global i32 0, align 4
@I40E_AQC_CEE_APP_ISCSI_SHIFT = common dso_local global i32 0, align 4
@I40E_APP_SEL_TCPIP = common dso_local global i8* null, align 8
@I40E_APP_PROTOID_ISCSI = common dso_local global i32 0, align 4
@I40E_AQC_CEE_APP_FIP_MASK = common dso_local global i32 0, align 4
@I40E_AQC_CEE_APP_FIP_SHIFT = common dso_local global i32 0, align 4
@I40E_APP_PROTOID_FIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.i40e_dcbx_config*)* @i40e_cee_to_dcb_v1_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_cee_to_dcb_v1_config(%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %0, %struct.i40e_dcbx_config* %1) #0 {
  %3 = alloca %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, align 8
  %4 = alloca %struct.i40e_dcbx_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %0, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp** %3, align 8
  store %struct.i40e_dcbx_config* %1, %struct.i40e_dcbx_config** %4, align 8
  %11 = load %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %23 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %70, %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %73

28:                                               ; preds = %25
  %29 = load %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp** %3, align 8
  %30 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I40E_CEE_PGID_PRIO_0_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @I40E_CEE_PGID_PRIO_0_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %42 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %40, i32* %48, align 4
  %49 = load %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp** %3, align 8
  %50 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @I40E_CEE_PGID_PRIO_1_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @I40E_CEE_PGID_PRIO_1_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %62 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 %65, 2
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32 %60, i32* %69, align 4
  br label %70

70:                                               ; preds = %28
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %25

73:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp** %3, align 8
  %80 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %87 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %78
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %74

96:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %144, %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %147

101:                                              ; preds = %97
  %102 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %103 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* @I40E_CEE_PGID_STRICT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %101
  %114 = load %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp** %3, align 8
  %115 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, 1
  %118 = trunc i64 %117 to i32
  %119 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %120 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %118, i32* %125, align 4
  %126 = load i32, i32* @I40E_IEEE_TSA_STRICT, align 4
  %127 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %128 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %126, i32* %133, align 4
  br label %143

134:                                              ; preds = %101
  %135 = load i32, i32* @I40E_IEEE_TSA_ETS, align 4
  %136 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %137 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %135, i32* %142, align 4
  br label %143

143:                                              ; preds = %134, %113
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %97

147:                                              ; preds = %97
  %148 = load %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp** %3, align 8
  %149 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %152 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %155 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %156 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @I40E_AQC_CEE_APP_STATUS_MASK, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @I40E_AQC_CEE_APP_STATUS_SHIFT, align 4
  %162 = ashr i32 %160, %161
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @I40E_TLV_STATUS_ERR, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %241, label %171

171:                                              ; preds = %147
  %172 = load i32, i32* @I40E_CEE_OPER_MAX_APPS, align 4
  %173 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %174 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @I40E_AQC_CEE_APP_FCOE_MASK, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* @I40E_AQC_CEE_APP_FCOE_SHIFT, align 4
  %179 = ashr i32 %177, %178
  %180 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %181 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %180, i32 0, i32 0
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 8
  %185 = load i8*, i8** @I40E_APP_SEL_ETHTYPE, align 8
  %186 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %187 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %186, i32 0, i32 0
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  store i8* %185, i8** %190, align 8
  %191 = load i32, i32* @I40E_APP_PROTOID_FCOE, align 4
  %192 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %193 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  store i32 %191, i32* %196, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @I40E_AQC_CEE_APP_ISCSI_MASK, align 4
  %199 = and i32 %197, %198
  %200 = load i32, i32* @I40E_AQC_CEE_APP_ISCSI_SHIFT, align 4
  %201 = ashr i32 %199, %200
  %202 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %203 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %202, i32 0, i32 0
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 1
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  store i32 %201, i32* %206, align 8
  %207 = load i8*, i8** @I40E_APP_SEL_TCPIP, align 8
  %208 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %209 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %208, i32 0, i32 0
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i64 1
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  store i8* %207, i8** %212, align 8
  %213 = load i32, i32* @I40E_APP_PROTOID_ISCSI, align 4
  %214 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %215 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %214, i32 0, i32 0
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 1
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  store i32 %213, i32* %218, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @I40E_AQC_CEE_APP_FIP_MASK, align 4
  %221 = and i32 %219, %220
  %222 = load i32, i32* @I40E_AQC_CEE_APP_FIP_SHIFT, align 4
  %223 = ashr i32 %221, %222
  %224 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %225 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %224, i32 0, i32 0
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i64 2
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  store i32 %223, i32* %228, align 8
  %229 = load i8*, i8** @I40E_APP_SEL_ETHTYPE, align 8
  %230 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %231 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %230, i32 0, i32 0
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i64 2
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  store i8* %229, i8** %234, align 8
  %235 = load i32, i32* @I40E_APP_PROTOID_FIP, align 4
  %236 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %237 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %236, i32 0, i32 0
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i64 2
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  store i32 %235, i32* %240, align 4
  br label %241

241:                                              ; preds = %171, %147
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
