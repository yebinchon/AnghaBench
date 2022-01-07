; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_adap_init0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_adap_init0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_6__, %struct.sge }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.sge_params }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.sge_params = type { i32, i32, i32, i32 }
%struct.sge = type { i32*, i8** }

@.str = private unnamed_addr constant [25 x i8] c"FW reset failed: err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"unable to retrieve adapter device parameters: err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"unable to retrieve adapter VPD parameters: err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"unable to retrieve adapter SGE parameters: err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"unable to retrieve adapter RSS parameters: err=%d\0A\00", align 1
@FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"unable to operate with global RSS mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"unable to use adapter parameters: err=%d\0A\00", align 1
@FW_PARAMS_MNEM_PFVF = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_PFVF_CPLFW4MSG_ENCAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"unable to get virtual interface resources: err=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"no port access configured\0Ausable!\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"no virtual interfaces configured/usable!\0A\00", align 1
@CXGB4VF_FW_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @adap_init0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adap_init0(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_params*, align 8
  %5 = alloca %struct.sge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store %struct.sge_params* %11, %struct.sge_params** %4, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 3
  store %struct.sge* %13, %struct.sge** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = call i32 @t4vf_fw_reset(%struct.adapter* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %252

25:                                               ; preds = %1
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = call i32 @t4vf_get_dev_params(%struct.adapter* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %252

37:                                               ; preds = %25
  %38 = load %struct.adapter*, %struct.adapter** %3, align 8
  %39 = call i32 @t4vf_get_vpd_params(%struct.adapter* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %252

49:                                               ; preds = %37
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = call i32 @t4vf_get_sge_params(%struct.adapter* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.adapter*, %struct.adapter** %3, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %252

61:                                               ; preds = %49
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = call i32 @t4vf_get_rss_glb_config(%struct.adapter* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %252

73:                                               ; preds = %61
  %74 = load %struct.adapter*, %struct.adapter** %3, align 8
  %75 = getelementptr inbounds %struct.adapter, %struct.adapter* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %73
  %82 = load %struct.adapter*, %struct.adapter** %3, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.adapter*, %struct.adapter** %3, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %252

93:                                               ; preds = %73
  %94 = load %struct.adapter*, %struct.adapter** %3, align 8
  %95 = call i32 @t4vf_sge_init(%struct.adapter* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.adapter*, %struct.adapter** %3, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %101, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %252

105:                                              ; preds = %93
  %106 = load i32, i32* @FW_PARAMS_MNEM_PFVF, align 4
  %107 = call i32 @FW_PARAMS_MNEM_V(i32 %106)
  %108 = load i32, i32* @FW_PARAMS_PARAM_PFVF_CPLFW4MSG_ENCAP, align 4
  %109 = call i32 @FW_PARAMS_PARAM_X_V(i32 %108)
  %110 = or i32 %107, %109
  store i32 %110, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %111 = load %struct.adapter*, %struct.adapter** %3, align 8
  %112 = call i32 @t4vf_set_params(%struct.adapter* %111, i32 1, i32* %7, i32* %8)
  %113 = load %struct.adapter*, %struct.adapter** %3, align 8
  %114 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %115 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @TIMERVALUE0_G(i32 %116)
  %118 = call i8* @core_ticks_to_us(%struct.adapter* %113, i32 %117)
  %119 = load %struct.sge*, %struct.sge** %5, align 8
  %120 = getelementptr inbounds %struct.sge, %struct.sge* %119, i32 0, i32 1
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  store i8* %118, i8** %122, align 8
  %123 = load %struct.adapter*, %struct.adapter** %3, align 8
  %124 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %125 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @TIMERVALUE1_G(i32 %126)
  %128 = call i8* @core_ticks_to_us(%struct.adapter* %123, i32 %127)
  %129 = load %struct.sge*, %struct.sge** %5, align 8
  %130 = getelementptr inbounds %struct.sge, %struct.sge* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  store i8* %128, i8** %132, align 8
  %133 = load %struct.adapter*, %struct.adapter** %3, align 8
  %134 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %135 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @TIMERVALUE0_G(i32 %136)
  %138 = call i8* @core_ticks_to_us(%struct.adapter* %133, i32 %137)
  %139 = load %struct.sge*, %struct.sge** %5, align 8
  %140 = getelementptr inbounds %struct.sge, %struct.sge* %139, i32 0, i32 1
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 2
  store i8* %138, i8** %142, align 8
  %143 = load %struct.adapter*, %struct.adapter** %3, align 8
  %144 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %145 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @TIMERVALUE1_G(i32 %146)
  %148 = call i8* @core_ticks_to_us(%struct.adapter* %143, i32 %147)
  %149 = load %struct.sge*, %struct.sge** %5, align 8
  %150 = getelementptr inbounds %struct.sge, %struct.sge* %149, i32 0, i32 1
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 3
  store i8* %148, i8** %152, align 8
  %153 = load %struct.adapter*, %struct.adapter** %3, align 8
  %154 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %155 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @TIMERVALUE0_G(i32 %156)
  %158 = call i8* @core_ticks_to_us(%struct.adapter* %153, i32 %157)
  %159 = load %struct.sge*, %struct.sge** %5, align 8
  %160 = getelementptr inbounds %struct.sge, %struct.sge* %159, i32 0, i32 1
  %161 = load i8**, i8*** %160, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 4
  store i8* %158, i8** %162, align 8
  %163 = load %struct.adapter*, %struct.adapter** %3, align 8
  %164 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %165 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @TIMERVALUE1_G(i32 %166)
  %168 = call i8* @core_ticks_to_us(%struct.adapter* %163, i32 %167)
  %169 = load %struct.sge*, %struct.sge** %5, align 8
  %170 = getelementptr inbounds %struct.sge, %struct.sge* %169, i32 0, i32 1
  %171 = load i8**, i8*** %170, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 5
  store i8* %168, i8** %172, align 8
  %173 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %174 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @THRESHOLD_0_G(i32 %175)
  %177 = load %struct.sge*, %struct.sge** %5, align 8
  %178 = getelementptr inbounds %struct.sge, %struct.sge* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 %176, i32* %180, align 4
  %181 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %182 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @THRESHOLD_1_G(i32 %183)
  %185 = load %struct.sge*, %struct.sge** %5, align 8
  %186 = getelementptr inbounds %struct.sge, %struct.sge* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  store i32 %184, i32* %188, align 4
  %189 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %190 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @THRESHOLD_2_G(i32 %191)
  %193 = load %struct.sge*, %struct.sge** %5, align 8
  %194 = getelementptr inbounds %struct.sge, %struct.sge* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  store i32 %192, i32* %196, align 4
  %197 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %198 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @THRESHOLD_3_G(i32 %199)
  %201 = load %struct.sge*, %struct.sge** %5, align 8
  %202 = getelementptr inbounds %struct.sge, %struct.sge* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 3
  store i32 %200, i32* %204, align 4
  %205 = load %struct.adapter*, %struct.adapter** %3, align 8
  %206 = call i32 @t4vf_get_vfres(%struct.adapter* %205)
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %105
  %210 = load %struct.adapter*, %struct.adapter** %3, align 8
  %211 = getelementptr inbounds %struct.adapter, %struct.adapter* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %6, align 4
  %214 = call i32 (i32, i8*, ...) @dev_err(i32 %212, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* %6, align 4
  store i32 %215, i32* %2, align 4
  br label %252

216:                                              ; preds = %105
  %217 = load %struct.adapter*, %struct.adapter** %3, align 8
  %218 = getelementptr inbounds %struct.adapter, %struct.adapter* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %216
  %224 = load %struct.adapter*, %struct.adapter** %3, align 8
  %225 = getelementptr inbounds %struct.adapter, %struct.adapter* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i32, i8*, ...) @dev_err(i32 %226, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %2, align 4
  br label %252

230:                                              ; preds = %216
  %231 = load %struct.adapter*, %struct.adapter** %3, align 8
  %232 = getelementptr inbounds %struct.adapter, %struct.adapter* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load %struct.adapter*, %struct.adapter** %3, align 8
  %239 = getelementptr inbounds %struct.adapter, %struct.adapter* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i32, i8*, ...) @dev_err(i32 %240, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %2, align 4
  br label %252

244:                                              ; preds = %230
  %245 = load %struct.adapter*, %struct.adapter** %3, align 8
  %246 = call i32 @size_nports_qsets(%struct.adapter* %245)
  %247 = load i32, i32* @CXGB4VF_FW_OK, align 4
  %248 = load %struct.adapter*, %struct.adapter** %3, align 8
  %249 = getelementptr inbounds %struct.adapter, %struct.adapter* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  store i32 0, i32* %2, align 4
  br label %252

252:                                              ; preds = %244, %237, %223, %209, %98, %81, %66, %54, %42, %30, %18
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @t4vf_fw_reset(%struct.adapter*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @t4vf_get_dev_params(%struct.adapter*) #1

declare dso_local i32 @t4vf_get_vpd_params(%struct.adapter*) #1

declare dso_local i32 @t4vf_get_sge_params(%struct.adapter*) #1

declare dso_local i32 @t4vf_get_rss_glb_config(%struct.adapter*) #1

declare dso_local i32 @t4vf_sge_init(%struct.adapter*) #1

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @t4vf_set_params(%struct.adapter*, i32, i32*, i32*) #1

declare dso_local i8* @core_ticks_to_us(%struct.adapter*, i32) #1

declare dso_local i32 @TIMERVALUE0_G(i32) #1

declare dso_local i32 @TIMERVALUE1_G(i32) #1

declare dso_local i32 @THRESHOLD_0_G(i32) #1

declare dso_local i32 @THRESHOLD_1_G(i32) #1

declare dso_local i32 @THRESHOLD_2_G(i32) #1

declare dso_local i32 @THRESHOLD_3_G(i32) #1

declare dso_local i32 @t4vf_get_vfres(%struct.adapter*) #1

declare dso_local i32 @size_nports_qsets(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
