; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_add_cloud_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_add_cloud_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i32, i32, %struct.TYPE_16__*, i32, i32, %struct.i40e_pf* }
%struct.TYPE_16__ = type { i64 }
%struct.i40e_pf = type { %struct.TYPE_19__, %struct.TYPE_17__*, %struct.i40e_vsi** }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.i40e_vsi = type { i32 }
%struct.virtchnl_filter = type { i32, i64, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.virtchnl_l4_spec }
%struct.virtchnl_l4_spec = type { i32*, i32*, i32, i32, i32, i32*, i32* }
%struct.TYPE_11__ = type { %struct.virtchnl_l4_spec }
%struct.i40e_cloud_filter = type { i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"VF %d: ADq is not enabled, can't apply cloud filter\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"VF %d: Invalid input/s, can't apply cloud filter\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"VF %d: Flow type not configured\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"VF %d: Failed to add cloud filter, err %s aq_err %s\0A\00", align 1
@VIRTCHNL_OP_ADD_CLOUD_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_add_cloud_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_add_cloud_filter(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.virtchnl_filter*, align 8
  %7 = alloca %struct.virtchnl_l4_spec, align 8
  %8 = alloca %struct.virtchnl_l4_spec, align 8
  %9 = alloca %struct.i40e_cloud_filter*, align 8
  %10 = alloca %struct.i40e_pf*, align 8
  %11 = alloca %struct.i40e_vsi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.virtchnl_filter*
  store %struct.virtchnl_filter* %16, %struct.virtchnl_filter** %6, align 8
  %17 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %6, align 8
  %18 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = bitcast %struct.virtchnl_l4_spec* %7 to i8*
  %21 = bitcast %struct.virtchnl_l4_spec* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 48, i1 false)
  %22 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %6, align 8
  %23 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = bitcast %struct.virtchnl_l4_spec* %8 to i8*
  %26 = bitcast %struct.virtchnl_l4_spec* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 48, i1 false)
  store %struct.i40e_cloud_filter* null, %struct.i40e_cloud_filter** %9, align 8
  %27 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %28 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %27, i32 0, i32 6
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %28, align 8
  store %struct.i40e_pf* %29, %struct.i40e_pf** %10, align 8
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %11, align 8
  store i32 0, i32* %12, align 4
  %30 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %31 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %32 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %31, i32 0, i32 5
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %36, i32* %12, align 4
  br label %332

37:                                               ; preds = %2
  %38 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %39 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %44 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %43, i32 0, i32 1
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %48 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %51, i32* %12, align 4
  br label %332

52:                                               ; preds = %37
  %53 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %54 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %6, align 8
  %55 = call i64 @i40e_validate_cloud_filter(%struct.i40e_vf* %53, %struct.virtchnl_filter* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %59 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %58, i32 0, i32 1
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %63 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %66, i32* %12, align 4
  br label %332

67:                                               ; preds = %52
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.i40e_cloud_filter* @kzalloc(i32 64, i32 %68)
  store %struct.i40e_cloud_filter* %69, %struct.i40e_cloud_filter** %9, align 8
  %70 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %71 = icmp ne %struct.i40e_cloud_filter* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %337

75:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %7, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %86, %92
  %94 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %95 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  br label %100

100:                                              ; preds = %80
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %76

103:                                              ; preds = %76
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %128, %103
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @ETH_ALEN, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %131

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %7, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %114, %120
  %122 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %123 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  br label %128

128:                                              ; preds = %108
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %104

131:                                              ; preds = %104
  %132 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %7, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %133, %135
  %137 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %138 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %7, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %140, %142
  %144 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %145 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %7, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %147, %149
  %151 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %152 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %6, align 8
  %154 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  switch i32 %155, label %247 [
    i32 129, label %156
    i32 128, label %205
  ]

156:                                              ; preds = %131
  %157 = load i32, i32* @ETH_P_IP, align 4
  %158 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %159 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %158, i32 0, i32 9
  store i32 %157, i32* %159, align 8
  %160 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %7, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %163, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %156
  %171 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %172 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %171, i32 0, i32 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 5
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @ARRAY_SIZE(i32* %178)
  %180 = call i32 @memcpy(i32* %174, i32* %176, i32 %179)
  br label %204

181:                                              ; preds = %156
  %182 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %7, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %185, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %181
  %193 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %194 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %193, i32 0, i32 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 6
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @ARRAY_SIZE(i32* %200)
  %202 = call i32 @memcpy(i32* %196, i32* %198, i32 %201)
  br label %203

203:                                              ; preds = %192, %181
  br label %204

204:                                              ; preds = %203, %170
  br label %256

205:                                              ; preds = %131
  %206 = load i32, i32* @ETH_P_IPV6, align 4
  %207 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %208 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %207, i32 0, i32 9
  store i32 %206, i32* %208, align 8
  %209 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %7, i32 0, i32 5
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 3
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 3
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %212, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %205
  %220 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %221 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %220, i32 0, i32 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @memcpy(i32* %223, i32* %225, i32 4)
  br label %227

227:                                              ; preds = %219, %205
  %228 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %7, i32 0, i32 6
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 3
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 6
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 3
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %231, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %227
  %239 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %240 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %239, i32 0, i32 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 6
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @memcpy(i32* %242, i32* %244, i32 4)
  br label %246

246:                                              ; preds = %238, %227
  br label %256

247:                                              ; preds = %131
  %248 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %249 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %248, i32 0, i32 1
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %253 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @dev_info(i32* %251, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %254)
  br label %256

256:                                              ; preds = %247, %246, %204
  %257 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %258 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %257, i32 0, i32 2
  %259 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %258, align 8
  %260 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %261 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %260, i32 0, i32 3
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %261, align 8
  %263 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %6, align 8
  %264 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %259, i64 %268
  %270 = load %struct.i40e_vsi*, %struct.i40e_vsi** %269, align 8
  store %struct.i40e_vsi* %270, %struct.i40e_vsi** %11, align 8
  %271 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %272 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %275 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %274, i32 0, i32 7
  store i32 %273, i32* %275, align 4
  %276 = load %struct.virtchnl_filter*, %struct.virtchnl_filter** %6, align 8
  %277 = getelementptr inbounds %struct.virtchnl_filter, %struct.virtchnl_filter* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %280 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %279, i32 0, i32 6
  store i32 %278, i32* %280, align 8
  %281 = getelementptr inbounds %struct.virtchnl_l4_spec, %struct.virtchnl_l4_spec* %8, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %256
  %285 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %286 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %287 = call i32 @i40e_add_del_cloud_filter_big_buf(%struct.i40e_vsi* %285, %struct.i40e_cloud_filter* %286, i32 1)
  store i32 %287, i32* %14, align 4
  br label %292

288:                                              ; preds = %256
  %289 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %290 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %291 = call i32 @i40e_add_del_cloud_filter(%struct.i40e_vsi* %289, %struct.i40e_cloud_filter* %290, i32 1)
  store i32 %291, i32* %14, align 4
  br label %292

292:                                              ; preds = %288, %284
  %293 = load i32, i32* %14, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %316

295:                                              ; preds = %292
  %296 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %297 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %296, i32 0, i32 1
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 0
  %300 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %301 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %304 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %303, i32 0, i32 0
  %305 = load i32, i32* %14, align 4
  %306 = call i32 @i40e_stat_str(%struct.TYPE_19__* %304, i32 %305)
  %307 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %308 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %307, i32 0, i32 0
  %309 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %310 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @i40e_aq_str(%struct.TYPE_19__* %308, i32 %313)
  %315 = call i32 @dev_err(i32* %299, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %302, i32 %306, i32 %314)
  br label %329

316:                                              ; preds = %292
  %317 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %318 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %317, i32 0, i32 5
  %319 = call i32 @INIT_HLIST_NODE(i32* %318)
  %320 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %321 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %320, i32 0, i32 5
  %322 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %323 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %322, i32 0, i32 1
  %324 = call i32 @hlist_add_head(i32* %321, i32* %323)
  store %struct.i40e_cloud_filter* null, %struct.i40e_cloud_filter** %9, align 8
  %325 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %326 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 8
  br label %329

329:                                              ; preds = %316, %295
  %330 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %9, align 8
  %331 = call i32 @kfree(%struct.i40e_cloud_filter* %330)
  br label %332

332:                                              ; preds = %329, %57, %42, %35
  %333 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %334 = load i32, i32* @VIRTCHNL_OP_ADD_CLOUD_FILTER, align 4
  %335 = load i32, i32* %12, align 4
  %336 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %333, i32 %334, i32 %335)
  store i32 %336, i32* %3, align 4
  br label %337

337:                                              ; preds = %332, %72
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_bit(i32, i32*) #2

declare dso_local i32 @dev_info(i32*, i8*, i32) #2

declare dso_local i64 @i40e_validate_cloud_filter(%struct.i40e_vf*, %struct.virtchnl_filter*) #2

declare dso_local %struct.i40e_cloud_filter* @kzalloc(i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @i40e_add_del_cloud_filter_big_buf(%struct.i40e_vsi*, %struct.i40e_cloud_filter*, i32) #2

declare dso_local i32 @i40e_add_del_cloud_filter(%struct.i40e_vsi*, %struct.i40e_cloud_filter*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @i40e_stat_str(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @i40e_aq_str(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @INIT_HLIST_NODE(i32*) #2

declare dso_local i32 @hlist_add_head(i32*, i32*) #2

declare dso_local i32 @kfree(%struct.i40e_cloud_filter*) #2

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
