; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_set_ste_builders.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_set_ste_builders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.mlx5dr_match_misc3, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc3 = type { i32 }
%struct.TYPE_7__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { i64, i64, %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build*, %struct.TYPE_6__* }
%struct.mlx5dr_ste_build = type { i32 }
%struct.TYPE_6__ = type { %struct.mlx5dr_domain_rx_tx* }
%struct.mlx5dr_domain_rx_tx = type { i64 }
%struct.mlx5dr_match_param = type { i32, %struct.mlx5dr_match_misc3, i32, i32, i32 }

@MLX5DR_STE_TYPE_RX = common dso_local global i64 0, align 8
@DR_MATCHER_CRITERIA_OUTER = common dso_local global i32 0, align 4
@DR_MATCHER_CRITERIA_MISC = common dso_local global i32 0, align 4
@DR_MATCHER_CRITERIA_INNER = common dso_local global i32 0, align 4
@DR_MATCHER_CRITERIA_MISC2 = common dso_local global i32 0, align 4
@DR_MATCHER_CRITERIA_MISC3 = common dso_local global i32 0, align 4
@MLX5DR_DOMAIN_TYPE_FDB = common dso_local global i64 0, align 8
@MLX5DR_DOMAIN_TYPE_NIC_RX = common dso_local global i64 0, align 8
@outer = common dso_local global i32 0, align 4
@DR_MATCHER_CRITERIA_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Cannot generate any valid rules from mask\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Mask contains unsupported parameters\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, i32)* @dr_matcher_set_ste_builders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_matcher_set_ste_builders(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher_rx_tx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_matcher*, align 8
  %6 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5dr_domain_rx_tx*, align 8
  %9 = alloca %struct.mlx5dr_domain*, align 8
  %10 = alloca %struct.mlx5dr_match_param, align 4
  %11 = alloca %struct.mlx5dr_match_misc3*, align 8
  %12 = alloca %struct.mlx5dr_ste_build*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %5, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %19, i32 0, i32 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %22, align 8
  store %struct.mlx5dr_domain_rx_tx* %23, %struct.mlx5dr_domain_rx_tx** %8, align 8
  %24 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %27, align 8
  store %struct.mlx5dr_domain* %28, %struct.mlx5dr_domain** %9, align 8
  %29 = bitcast %struct.mlx5dr_match_param* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 20, i1 false)
  store i32 0, i32* %16, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %33, i32 0, i32 3
  %35 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %34, align 8
  store %struct.mlx5dr_ste_build* %35, %struct.mlx5dr_ste_build** %12, align 8
  %36 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %36, i32 0, i32 0
  store i64* %37, i64** %13, align 8
  br label %44

38:                                               ; preds = %3
  %39 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %39, i32 0, i32 2
  %41 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %40, align 8
  store %struct.mlx5dr_ste_build* %41, %struct.mlx5dr_ste_build** %12, align 8
  %42 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %42, i32 0, i32 1
  store i64* %43, i64** %13, align 8
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %8, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MLX5DR_STE_TYPE_RX, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %15, align 4
  %51 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %52 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DR_MATCHER_CRITERIA_OUTER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 4
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %44
  %64 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DR_MATCHER_CRITERIA_MISC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %72 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 3
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %78 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DR_MATCHER_CRITERIA_INNER, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %85 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 2
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %76
  %90 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %91 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @DR_MATCHER_CRITERIA_MISC2, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %98 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %96, %89
  %103 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %104 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @DR_MATCHER_CRITERIA_MISC3, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 1
  %111 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %112 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = bitcast %struct.mlx5dr_match_misc3* %110 to i8*
  %115 = bitcast %struct.mlx5dr_match_misc3* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 4, i1 false)
  br label %116

116:                                              ; preds = %109, %102
  %117 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %118 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %119 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %122 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %121, i32 0, i32 1
  %123 = call i32 @mlx5dr_ste_build_pre_check(%struct.mlx5dr_domain* %117, i32 %120, %struct.TYPE_8__* %122, i32* null)
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %4, align 4
  br label %696

128:                                              ; preds = %116
  %129 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %130 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @DR_MATCHER_CRITERIA_OUTER, align 4
  %133 = load i32, i32* @DR_MATCHER_CRITERIA_MISC, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @DR_MATCHER_CRITERIA_MISC2, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @DR_MATCHER_CRITERIA_MISC3, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %131, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %451

141:                                              ; preds = %128
  store i32 0, i32* %14, align 4
  %142 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 0
  %143 = call i64 @dr_mask_is_wqe_metadata_set(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %146, i64 %149
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @mlx5dr_ste_build_general_purpose(%struct.mlx5dr_ste_build* %150, %struct.mlx5dr_match_param* %10, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %145, %141
  %155 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 0
  %156 = call i64 @dr_mask_is_reg_c_0_3_set(i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %159, i64 %162
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @mlx5dr_ste_build_register_0(%struct.mlx5dr_ste_build* %163, %struct.mlx5dr_match_param* %10, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %158, %154
  %168 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 0
  %169 = call i64 @dr_mask_is_reg_c_4_7_set(i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %172, i64 %175
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @mlx5dr_ste_build_register_1(%struct.mlx5dr_ste_build* %176, %struct.mlx5dr_match_param* %10, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %171, %167
  %181 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 3
  %182 = call i64 @dr_mask_is_gvmi_or_qpn_set(i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %211

184:                                              ; preds = %180
  %185 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %186 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @MLX5DR_DOMAIN_TYPE_FDB, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %184
  %191 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %192 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @MLX5DR_DOMAIN_TYPE_NIC_RX, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %190, %184
  %197 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %16, align 4
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %197, i64 %200
  %202 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @mlx5dr_ste_build_src_gvmi_qpn(%struct.mlx5dr_ste_build* %201, %struct.mlx5dr_match_param* %10, %struct.mlx5dr_domain* %202, i32 %203, i32 %204)
  store i32 %205, i32* %17, align 4
  %206 = load i32, i32* %17, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %196
  %209 = load i32, i32* %17, align 4
  store i32 %209, i32* %4, align 4
  br label %696

210:                                              ; preds = %196
  br label %211

211:                                              ; preds = %210, %190, %180
  %212 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 4
  %213 = call i64 @dr_mask_is_smac_set(i32* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %233

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 4
  %217 = call i64 @dr_mask_is_dmac_set(i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %215
  %220 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %16, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %220, i64 %223
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* %15, align 4
  %227 = call i32 @mlx5dr_ste_build_eth_l2_src_des(%struct.mlx5dr_ste_build* %224, %struct.mlx5dr_match_param* %10, i32 %225, i32 %226)
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %17, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %219
  %231 = load i32, i32* %17, align 4
  store i32 %231, i32* %4, align 4
  br label %696

232:                                              ; preds = %219
  br label %233

233:                                              ; preds = %232, %215, %211
  %234 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 4
  %235 = call i64 @dr_mask_is_smac_set(i32* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %233
  %238 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %239 = load i32, i32* %16, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %16, align 4
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %238, i64 %241
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @mlx5dr_ste_build_eth_l2_src(%struct.mlx5dr_ste_build* %242, %struct.mlx5dr_match_param* %10, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %237, %233
  %247 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @outer, align 4
  %252 = call i64 @DR_MASK_IS_L2_DST(i32 %248, i32 %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %246
  %255 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %256 = load i32, i32* %16, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %16, align 4
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %255, i64 %258
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* %15, align 4
  %262 = call i32 @mlx5dr_ste_build_eth_l2_dst(%struct.mlx5dr_ste_build* %259, %struct.mlx5dr_match_param* %10, i32 %260, i32 %261)
  br label %263

263:                                              ; preds = %254, %246
  %264 = load i32, i32* %7, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %310

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 4
  %268 = call i64 @dr_mask_is_dst_addr_set(i32* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %266
  %271 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %272 = load i32, i32* %16, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %16, align 4
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %271, i64 %274
  %276 = load i32, i32* %14, align 4
  %277 = load i32, i32* %15, align 4
  %278 = call i32 @mlx5dr_ste_build_eth_l3_ipv6_dst(%struct.mlx5dr_ste_build* %275, %struct.mlx5dr_match_param* %10, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %270, %266
  %280 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 4
  %281 = call i64 @dr_mask_is_src_addr_set(i32* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %279
  %284 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %285 = load i32, i32* %16, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %16, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %284, i64 %287
  %289 = load i32, i32* %14, align 4
  %290 = load i32, i32* %15, align 4
  %291 = call i32 @mlx5dr_ste_build_eth_l3_ipv6_src(%struct.mlx5dr_ste_build* %288, %struct.mlx5dr_match_param* %10, i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %283, %279
  %293 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @outer, align 4
  %298 = call i64 @DR_MASK_IS_ETH_L4_SET(i32 %294, i32 %296, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %309

300:                                              ; preds = %292
  %301 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %302 = load i32, i32* %16, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %16, align 4
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %301, i64 %304
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %15, align 4
  %308 = call i32 @mlx5dr_ste_build_ipv6_l3_l4(%struct.mlx5dr_ste_build* %305, %struct.mlx5dr_match_param* %10, i32 %306, i32 %307)
  br label %309

309:                                              ; preds = %300, %292
  br label %337

310:                                              ; preds = %263
  %311 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 4
  %312 = call i64 @dr_mask_is_ipv4_5_tuple_set(i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %323

314:                                              ; preds = %310
  %315 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %316 = load i32, i32* %16, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %16, align 4
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %315, i64 %318
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* %15, align 4
  %322 = call i32 @mlx5dr_ste_build_eth_l3_ipv4_5_tuple(%struct.mlx5dr_ste_build* %319, %struct.mlx5dr_match_param* %10, i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %314, %310
  %324 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 4
  %325 = call i64 @dr_mask_is_ttl_set(i32* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %323
  %328 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %329 = load i32, i32* %16, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %16, align 4
  %331 = sext i32 %329 to i64
  %332 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %328, i64 %331
  %333 = load i32, i32* %14, align 4
  %334 = load i32, i32* %15, align 4
  %335 = call i32 @mlx5dr_ste_build_eth_l3_ipv4_misc(%struct.mlx5dr_ste_build* %332, %struct.mlx5dr_match_param* %10, i32 %333, i32 %334)
  br label %336

336:                                              ; preds = %327, %323
  br label %337

337:                                              ; preds = %336, %309
  %338 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 1
  %339 = call i64 @dr_mask_is_flex_parser_tnl_set(%struct.mlx5dr_match_misc3* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %354

341:                                              ; preds = %337
  %342 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %343 = call i64 @dr_matcher_supp_flex_parser_vxlan_gpe(%struct.mlx5dr_domain* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %354

345:                                              ; preds = %341
  %346 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %347 = load i32, i32* %16, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %16, align 4
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %346, i64 %349
  %351 = load i32, i32* %14, align 4
  %352 = load i32, i32* %15, align 4
  %353 = call i32 @mlx5dr_ste_build_flex_parser_tnl(%struct.mlx5dr_ste_build* %350, %struct.mlx5dr_match_param* %10, i32 %351, i32 %352)
  br label %354

354:                                              ; preds = %345, %341, %337
  %355 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 1
  %356 = load i32, i32* @outer, align 4
  %357 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %355, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i64 @DR_MASK_IS_ETH_L4_MISC_SET(i32 %358, i32 %356)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %354
  %362 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %363 = load i32, i32* %16, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %16, align 4
  %365 = sext i32 %363 to i64
  %366 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %362, i64 %365
  %367 = load i32, i32* %14, align 4
  %368 = load i32, i32* %15, align 4
  %369 = call i32 @mlx5dr_ste_build_eth_l4_misc(%struct.mlx5dr_ste_build* %366, %struct.mlx5dr_match_param* %10, i32 %367, i32 %368)
  br label %370

370:                                              ; preds = %361, %354
  %371 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @outer, align 4
  %374 = call i64 @DR_MASK_IS_FIRST_MPLS_SET(i32 %372, i32 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %385

376:                                              ; preds = %370
  %377 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %378 = load i32, i32* %16, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %16, align 4
  %380 = sext i32 %378 to i64
  %381 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %377, i64 %380
  %382 = load i32, i32* %14, align 4
  %383 = load i32, i32* %15, align 4
  %384 = call i32 @mlx5dr_ste_build_mpls(%struct.mlx5dr_ste_build* %381, %struct.mlx5dr_match_param* %10, i32 %382, i32 %383)
  br label %385

385:                                              ; preds = %376, %370
  %386 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i64 @DR_MASK_IS_FLEX_PARSER_0_SET(i32 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %399

390:                                              ; preds = %385
  %391 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %392 = load i32, i32* %16, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %16, align 4
  %394 = sext i32 %392 to i64
  %395 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %391, i64 %394
  %396 = load i32, i32* %14, align 4
  %397 = load i32, i32* %15, align 4
  %398 = call i32 @mlx5dr_ste_build_flex_parser_0(%struct.mlx5dr_ste_build* %395, %struct.mlx5dr_match_param* %10, i32 %396, i32 %397)
  br label %399

399:                                              ; preds = %390, %385
  %400 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 1
  store %struct.mlx5dr_match_misc3* %400, %struct.mlx5dr_match_misc3** %11, align 8
  %401 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %11, align 8
  %402 = call i64 @DR_MASK_IS_FLEX_PARSER_ICMPV4_SET(%struct.mlx5dr_match_misc3* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %399
  %405 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %406 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 0
  %408 = call i64 @mlx5dr_matcher_supp_flex_parser_icmp_v4(i32* %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %420, label %410

410:                                              ; preds = %404, %399
  %411 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 1
  %412 = call i64 @dr_mask_is_flex_parser_icmpv6_set(%struct.mlx5dr_match_misc3* %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %437

414:                                              ; preds = %410
  %415 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %416 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 0
  %418 = call i64 @mlx5dr_matcher_supp_flex_parser_icmp_v6(i32* %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %437

420:                                              ; preds = %414, %404
  %421 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %422 = load i32, i32* %16, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %16, align 4
  %424 = sext i32 %422 to i64
  %425 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %421, i64 %424
  %426 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %427 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 0
  %429 = load i32, i32* %14, align 4
  %430 = load i32, i32* %15, align 4
  %431 = call i32 @mlx5dr_ste_build_flex_parser_1(%struct.mlx5dr_ste_build* %425, %struct.mlx5dr_match_param* %10, i32* %428, i32 %429, i32 %430)
  store i32 %431, i32* %17, align 4
  %432 = load i32, i32* %17, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %420
  %435 = load i32, i32* %17, align 4
  store i32 %435, i32* %4, align 4
  br label %696

436:                                              ; preds = %420
  br label %437

437:                                              ; preds = %436, %414, %410
  %438 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 3
  %439 = call i64 @dr_mask_is_gre_set(i32* %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %450

441:                                              ; preds = %437
  %442 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %443 = load i32, i32* %16, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %16, align 4
  %445 = sext i32 %443 to i64
  %446 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %442, i64 %445
  %447 = load i32, i32* %14, align 4
  %448 = load i32, i32* %15, align 4
  %449 = call i32 @mlx5dr_ste_build_gre(%struct.mlx5dr_ste_build* %446, %struct.mlx5dr_match_param* %10, i32 %447, i32 %448)
  br label %450

450:                                              ; preds = %441, %437
  br label %451

451:                                              ; preds = %450, %128
  %452 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %453 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @DR_MATCHER_CRITERIA_INNER, align 4
  %456 = load i32, i32* @DR_MATCHER_CRITERIA_MISC, align 4
  %457 = or i32 %455, %456
  %458 = load i32, i32* @DR_MATCHER_CRITERIA_MISC2, align 4
  %459 = or i32 %457, %458
  %460 = load i32, i32* @DR_MATCHER_CRITERIA_MISC3, align 4
  %461 = or i32 %459, %460
  %462 = and i32 %454, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %649

464:                                              ; preds = %451
  store i32 1, i32* %14, align 4
  %465 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 3
  %466 = call i64 @dr_mask_is_eth_l2_tnl_set(i32* %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %477

468:                                              ; preds = %464
  %469 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %470 = load i32, i32* %16, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %16, align 4
  %472 = sext i32 %470 to i64
  %473 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %469, i64 %472
  %474 = load i32, i32* %14, align 4
  %475 = load i32, i32* %15, align 4
  %476 = call i32 @mlx5dr_ste_build_eth_l2_tnl(%struct.mlx5dr_ste_build* %473, %struct.mlx5dr_match_param* %10, i32 %474, i32 %475)
  br label %477

477:                                              ; preds = %468, %464
  %478 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 2
  %479 = call i64 @dr_mask_is_smac_set(i32* %478)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %499

481:                                              ; preds = %477
  %482 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 2
  %483 = call i64 @dr_mask_is_dmac_set(i32* %482)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %499

485:                                              ; preds = %481
  %486 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %487 = load i32, i32* %16, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %16, align 4
  %489 = sext i32 %487 to i64
  %490 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %486, i64 %489
  %491 = load i32, i32* %14, align 4
  %492 = load i32, i32* %15, align 4
  %493 = call i32 @mlx5dr_ste_build_eth_l2_src_des(%struct.mlx5dr_ste_build* %490, %struct.mlx5dr_match_param* %10, i32 %491, i32 %492)
  store i32 %493, i32* %17, align 4
  %494 = load i32, i32* %17, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %498

496:                                              ; preds = %485
  %497 = load i32, i32* %17, align 4
  store i32 %497, i32* %4, align 4
  br label %696

498:                                              ; preds = %485
  br label %499

499:                                              ; preds = %498, %481, %477
  %500 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 2
  %501 = call i64 @dr_mask_is_smac_set(i32* %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %512

503:                                              ; preds = %499
  %504 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %505 = load i32, i32* %16, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %16, align 4
  %507 = sext i32 %505 to i64
  %508 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %504, i64 %507
  %509 = load i32, i32* %14, align 4
  %510 = load i32, i32* %15, align 4
  %511 = call i32 @mlx5dr_ste_build_eth_l2_src(%struct.mlx5dr_ste_build* %508, %struct.mlx5dr_match_param* %10, i32 %509, i32 %510)
  br label %512

512:                                              ; preds = %503, %499
  %513 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 2
  %514 = load i32, i32* %513, align 4
  %515 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 3
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* %14, align 4
  %518 = call i64 @DR_MASK_IS_L2_DST(i32 %514, i32 %516, i32 %517)
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %529

520:                                              ; preds = %512
  %521 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %522 = load i32, i32* %16, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %16, align 4
  %524 = sext i32 %522 to i64
  %525 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %521, i64 %524
  %526 = load i32, i32* %14, align 4
  %527 = load i32, i32* %15, align 4
  %528 = call i32 @mlx5dr_ste_build_eth_l2_dst(%struct.mlx5dr_ste_build* %525, %struct.mlx5dr_match_param* %10, i32 %526, i32 %527)
  br label %529

529:                                              ; preds = %520, %512
  %530 = load i32, i32* %7, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %576

532:                                              ; preds = %529
  %533 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 2
  %534 = call i64 @dr_mask_is_dst_addr_set(i32* %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %545

536:                                              ; preds = %532
  %537 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %538 = load i32, i32* %16, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %16, align 4
  %540 = sext i32 %538 to i64
  %541 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %537, i64 %540
  %542 = load i32, i32* %14, align 4
  %543 = load i32, i32* %15, align 4
  %544 = call i32 @mlx5dr_ste_build_eth_l3_ipv6_dst(%struct.mlx5dr_ste_build* %541, %struct.mlx5dr_match_param* %10, i32 %542, i32 %543)
  br label %545

545:                                              ; preds = %536, %532
  %546 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 2
  %547 = call i64 @dr_mask_is_src_addr_set(i32* %546)
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %558

549:                                              ; preds = %545
  %550 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %551 = load i32, i32* %16, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %16, align 4
  %553 = sext i32 %551 to i64
  %554 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %550, i64 %553
  %555 = load i32, i32* %14, align 4
  %556 = load i32, i32* %15, align 4
  %557 = call i32 @mlx5dr_ste_build_eth_l3_ipv6_src(%struct.mlx5dr_ste_build* %554, %struct.mlx5dr_match_param* %10, i32 %555, i32 %556)
  br label %558

558:                                              ; preds = %549, %545
  %559 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 2
  %560 = load i32, i32* %559, align 4
  %561 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 3
  %562 = load i32, i32* %561, align 4
  %563 = load i32, i32* %14, align 4
  %564 = call i64 @DR_MASK_IS_ETH_L4_SET(i32 %560, i32 %562, i32 %563)
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %575

566:                                              ; preds = %558
  %567 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %568 = load i32, i32* %16, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %16, align 4
  %570 = sext i32 %568 to i64
  %571 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %567, i64 %570
  %572 = load i32, i32* %14, align 4
  %573 = load i32, i32* %15, align 4
  %574 = call i32 @mlx5dr_ste_build_ipv6_l3_l4(%struct.mlx5dr_ste_build* %571, %struct.mlx5dr_match_param* %10, i32 %572, i32 %573)
  br label %575

575:                                              ; preds = %566, %558
  br label %603

576:                                              ; preds = %529
  %577 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 2
  %578 = call i64 @dr_mask_is_ipv4_5_tuple_set(i32* %577)
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %589

580:                                              ; preds = %576
  %581 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %582 = load i32, i32* %16, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %16, align 4
  %584 = sext i32 %582 to i64
  %585 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %581, i64 %584
  %586 = load i32, i32* %14, align 4
  %587 = load i32, i32* %15, align 4
  %588 = call i32 @mlx5dr_ste_build_eth_l3_ipv4_5_tuple(%struct.mlx5dr_ste_build* %585, %struct.mlx5dr_match_param* %10, i32 %586, i32 %587)
  br label %589

589:                                              ; preds = %580, %576
  %590 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 2
  %591 = call i64 @dr_mask_is_ttl_set(i32* %590)
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %602

593:                                              ; preds = %589
  %594 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %595 = load i32, i32* %16, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* %16, align 4
  %597 = sext i32 %595 to i64
  %598 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %594, i64 %597
  %599 = load i32, i32* %14, align 4
  %600 = load i32, i32* %15, align 4
  %601 = call i32 @mlx5dr_ste_build_eth_l3_ipv4_misc(%struct.mlx5dr_ste_build* %598, %struct.mlx5dr_match_param* %10, i32 %599, i32 %600)
  br label %602

602:                                              ; preds = %593, %589
  br label %603

603:                                              ; preds = %602, %575
  %604 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 1
  %605 = load i32, i32* %14, align 4
  %606 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %604, i32 0, i32 0
  %607 = load i32, i32* %606, align 4
  %608 = call i64 @DR_MASK_IS_ETH_L4_MISC_SET(i32 %607, i32 %605)
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %619

610:                                              ; preds = %603
  %611 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %612 = load i32, i32* %16, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %16, align 4
  %614 = sext i32 %612 to i64
  %615 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %611, i64 %614
  %616 = load i32, i32* %14, align 4
  %617 = load i32, i32* %15, align 4
  %618 = call i32 @mlx5dr_ste_build_eth_l4_misc(%struct.mlx5dr_ste_build* %615, %struct.mlx5dr_match_param* %10, i32 %616, i32 %617)
  br label %619

619:                                              ; preds = %610, %603
  %620 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 0
  %621 = load i32, i32* %620, align 4
  %622 = load i32, i32* %14, align 4
  %623 = call i64 @DR_MASK_IS_FIRST_MPLS_SET(i32 %621, i32 %622)
  %624 = icmp ne i64 %623, 0
  br i1 %624, label %625, label %634

625:                                              ; preds = %619
  %626 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %627 = load i32, i32* %16, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %16, align 4
  %629 = sext i32 %627 to i64
  %630 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %626, i64 %629
  %631 = load i32, i32* %14, align 4
  %632 = load i32, i32* %15, align 4
  %633 = call i32 @mlx5dr_ste_build_mpls(%struct.mlx5dr_ste_build* %630, %struct.mlx5dr_match_param* %10, i32 %631, i32 %632)
  br label %634

634:                                              ; preds = %625, %619
  %635 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %10, i32 0, i32 0
  %636 = load i32, i32* %635, align 4
  %637 = call i64 @DR_MASK_IS_FLEX_PARSER_0_SET(i32 %636)
  %638 = icmp ne i64 %637, 0
  br i1 %638, label %639, label %648

639:                                              ; preds = %634
  %640 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %641 = load i32, i32* %16, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %16, align 4
  %643 = sext i32 %641 to i64
  %644 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %640, i64 %643
  %645 = load i32, i32* %14, align 4
  %646 = load i32, i32* %15, align 4
  %647 = call i32 @mlx5dr_ste_build_flex_parser_0(%struct.mlx5dr_ste_build* %644, %struct.mlx5dr_match_param* %10, i32 %645, i32 %646)
  br label %648

648:                                              ; preds = %639, %634
  br label %649

649:                                              ; preds = %648, %451
  %650 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %651 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = load i32, i32* @DR_MATCHER_CRITERIA_EMPTY, align 4
  %654 = icmp eq i32 %652, %653
  br i1 %654, label %655, label %663

655:                                              ; preds = %649
  %656 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %12, align 8
  %657 = load i32, i32* %16, align 4
  %658 = add nsw i32 %657, 1
  store i32 %658, i32* %16, align 4
  %659 = sext i32 %657 to i64
  %660 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %656, i64 %659
  %661 = load i32, i32* %15, align 4
  %662 = call i32 @mlx5dr_ste_build_empty_always_hit(%struct.mlx5dr_ste_build* %660, i32 %661)
  br label %663

663:                                              ; preds = %655, %649
  %664 = load i32, i32* %16, align 4
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %671

666:                                              ; preds = %663
  %667 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %668 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %667, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %669 = load i32, i32* @EINVAL, align 4
  %670 = sub nsw i32 0, %669
  store i32 %670, i32* %4, align 4
  br label %696

671:                                              ; preds = %663
  store i32 0, i32* %18, align 4
  br label %672

672:                                              ; preds = %689, %671
  %673 = load i32, i32* %18, align 4
  %674 = sext i32 %673 to i64
  %675 = icmp ult i64 %674, 20
  br i1 %675, label %676, label %692

676:                                              ; preds = %672
  %677 = bitcast %struct.mlx5dr_match_param* %10 to i64*
  %678 = load i32, i32* %18, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds i64, i64* %677, i64 %679
  %681 = load i64, i64* %680, align 4
  %682 = icmp ne i64 %681, 0
  br i1 %682, label %683, label %688

683:                                              ; preds = %676
  %684 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %685 = call i32 @mlx5dr_info(%struct.mlx5dr_domain* %684, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %686 = load i32, i32* @EOPNOTSUPP, align 4
  %687 = sub nsw i32 0, %686
  store i32 %687, i32* %4, align 4
  br label %696

688:                                              ; preds = %676
  br label %689

689:                                              ; preds = %688
  %690 = load i32, i32* %18, align 4
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %18, align 4
  br label %672

692:                                              ; preds = %672
  %693 = load i32, i32* %16, align 4
  %694 = sext i32 %693 to i64
  %695 = load i64*, i64** %13, align 8
  store i64 %694, i64* %695, align 8
  store i32 0, i32* %4, align 4
  br label %696

696:                                              ; preds = %692, %683, %666, %496, %434, %230, %208, %126
  %697 = load i32, i32* %4, align 4
  ret i32 %697
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mlx5dr_ste_build_pre_check(%struct.mlx5dr_domain*, i32, %struct.TYPE_8__*, i32*) #2

declare dso_local i64 @dr_mask_is_wqe_metadata_set(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_general_purpose(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @dr_mask_is_reg_c_0_3_set(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_register_0(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @dr_mask_is_reg_c_4_7_set(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_register_1(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @dr_mask_is_gvmi_or_qpn_set(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_src_gvmi_qpn(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, %struct.mlx5dr_domain*, i32, i32) #2

declare dso_local i64 @dr_mask_is_smac_set(i32*) #2

declare dso_local i64 @dr_mask_is_dmac_set(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_eth_l2_src_des(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i32 @mlx5dr_ste_build_eth_l2_src(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @DR_MASK_IS_L2_DST(i32, i32, i32) #2

declare dso_local i32 @mlx5dr_ste_build_eth_l2_dst(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @dr_mask_is_dst_addr_set(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_eth_l3_ipv6_dst(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @dr_mask_is_src_addr_set(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_eth_l3_ipv6_src(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @DR_MASK_IS_ETH_L4_SET(i32, i32, i32) #2

declare dso_local i32 @mlx5dr_ste_build_ipv6_l3_l4(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @dr_mask_is_ipv4_5_tuple_set(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_eth_l3_ipv4_5_tuple(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @dr_mask_is_ttl_set(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_eth_l3_ipv4_misc(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @dr_mask_is_flex_parser_tnl_set(%struct.mlx5dr_match_misc3*) #2

declare dso_local i64 @dr_matcher_supp_flex_parser_vxlan_gpe(%struct.mlx5dr_domain*) #2

declare dso_local i32 @mlx5dr_ste_build_flex_parser_tnl(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @DR_MASK_IS_ETH_L4_MISC_SET(i32, i32) #2

declare dso_local i32 @mlx5dr_ste_build_eth_l4_misc(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @DR_MASK_IS_FIRST_MPLS_SET(i32, i32) #2

declare dso_local i32 @mlx5dr_ste_build_mpls(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @DR_MASK_IS_FLEX_PARSER_0_SET(i32) #2

declare dso_local i32 @mlx5dr_ste_build_flex_parser_0(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @DR_MASK_IS_FLEX_PARSER_ICMPV4_SET(%struct.mlx5dr_match_misc3*) #2

declare dso_local i64 @mlx5dr_matcher_supp_flex_parser_icmp_v4(i32*) #2

declare dso_local i64 @dr_mask_is_flex_parser_icmpv6_set(%struct.mlx5dr_match_misc3*) #2

declare dso_local i64 @mlx5dr_matcher_supp_flex_parser_icmp_v6(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_flex_parser_1(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32*, i32, i32) #2

declare dso_local i64 @dr_mask_is_gre_set(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_gre(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i64 @dr_mask_is_eth_l2_tnl_set(i32*) #2

declare dso_local i32 @mlx5dr_ste_build_eth_l2_tnl(%struct.mlx5dr_ste_build*, %struct.mlx5dr_match_param*, i32, i32) #2

declare dso_local i32 @mlx5dr_ste_build_empty_always_hit(%struct.mlx5dr_ste_build*, i32) #2

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #2

declare dso_local i32 @mlx5dr_info(%struct.mlx5dr_domain*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
