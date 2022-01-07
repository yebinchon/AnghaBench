; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_src_or_dst_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_eth_l2_src_or_dst_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec }
%struct.mlx5dr_match_spec = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.dr_hw_ste_format = type { i32* }
%struct.mlx5dr_match_misc = type { i64, i64, i64, i64, i64, i64, i64 }

@eth_l2_src = common dso_local global i32 0, align 4
@first_vlan_id = common dso_local global i32 0, align 4
@first_vid = common dso_local global i32 0, align 4
@first_cfi = common dso_local global i32 0, align 4
@first_priority = common dso_local global i32 0, align 4
@first_prio = common dso_local global i32 0, align 4
@ip_fragmented = common dso_local global i32 0, align 4
@frag = common dso_local global i32 0, align 4
@l3_ethertype = common dso_local global i32 0, align 4
@ethertype = common dso_local global i32 0, align 4
@IP_VERSION_IPV4 = common dso_local global i64 0, align 8
@ste_eth_l2_src = common dso_local global i32 0, align 4
@l3_type = common dso_local global i32 0, align 4
@STE_IPV4 = common dso_local global i32 0, align 4
@IP_VERSION_IPV6 = common dso_local global i64 0, align 8
@STE_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported ip_version value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@first_vlan_qualifier = common dso_local global i32 0, align 4
@DR_STE_CVLAN = common dso_local global i32 0, align 4
@DR_STE_SVLAN = common dso_local global i32 0, align 4
@second_vlan_qualifier = common dso_local global i32 0, align 4
@second_vlan_id = common dso_local global i32 0, align 4
@inner_second_vid = common dso_local global i32 0, align 4
@second_cfi = common dso_local global i32 0, align 4
@inner_second_cfi = common dso_local global i32 0, align 4
@second_priority = common dso_local global i32 0, align 4
@inner_second_prio = common dso_local global i32 0, align 4
@outer_second_vid = common dso_local global i32 0, align 4
@outer_second_cfi = common dso_local global i32 0, align 4
@outer_second_prio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, i32, i32*)* @dr_ste_build_eth_l2_src_or_dst_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_eth_l2_src_or_dst_tag(%struct.mlx5dr_match_param* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_match_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dr_hw_ste_format*, align 8
  %9 = alloca %struct.mlx5dr_match_spec*, align 8
  %10 = alloca %struct.mlx5dr_match_misc*, align 8
  %11 = alloca i32*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = bitcast i32* %12 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %13, %struct.dr_hw_ste_format** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %17, i32 0, i32 2
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %20, i32 0, i32 1
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi %struct.mlx5dr_match_spec* [ %18, %16 ], [ %21, %19 ]
  store %struct.mlx5dr_match_spec* %23, %struct.mlx5dr_match_spec** %9, align 8
  %24 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %24, i32 0, i32 0
  %26 = bitcast %struct.mlx5dr_match_spec* %25 to %struct.mlx5dr_match_misc*
  store %struct.mlx5dr_match_misc* %26, %struct.mlx5dr_match_misc** %10, align 8
  %27 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %8, align 8
  %28 = getelementptr inbounds %struct.dr_hw_ste_format, %struct.dr_hw_ste_format* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  %30 = load i32, i32* @eth_l2_src, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* @first_vlan_id, align 4
  %33 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %34 = load i32, i32* @first_vid, align 4
  %35 = call i32 @DR_STE_SET_TAG(i32 %30, i32* %31, i32 %32, %struct.mlx5dr_match_spec* %33, i32 %34)
  %36 = load i32, i32* @eth_l2_src, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @first_cfi, align 4
  %39 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %40 = load i32, i32* @first_cfi, align 4
  %41 = call i32 @DR_STE_SET_TAG(i32 %36, i32* %37, i32 %38, %struct.mlx5dr_match_spec* %39, i32 %40)
  %42 = load i32, i32* @eth_l2_src, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @first_priority, align 4
  %45 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %46 = load i32, i32* @first_prio, align 4
  %47 = call i32 @DR_STE_SET_TAG(i32 %42, i32* %43, i32 %44, %struct.mlx5dr_match_spec* %45, i32 %46)
  %48 = load i32, i32* @eth_l2_src, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @ip_fragmented, align 4
  %51 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %52 = load i32, i32* @frag, align 4
  %53 = call i32 @DR_STE_SET_TAG(i32 %48, i32* %49, i32 %50, %struct.mlx5dr_match_spec* %51, i32 %52)
  %54 = load i32, i32* @eth_l2_src, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @l3_ethertype, align 4
  %57 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %58 = load i32, i32* @ethertype, align 4
  %59 = call i32 @DR_STE_SET_TAG(i32 %54, i32* %55, i32 %56, %struct.mlx5dr_match_spec* %57, i32 %58)
  %60 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %61 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %22
  %65 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %66 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IP_VERSION_IPV4, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i32, i32* @ste_eth_l2_src, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @l3_type, align 4
  %74 = load i32, i32* @STE_IPV4, align 4
  %75 = call i32 @MLX5_SET(i32 %71, i32* %72, i32 %73, i32 %74)
  %76 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %77 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %97

78:                                               ; preds = %64
  %79 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %80 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IP_VERSION_IPV6, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i32, i32* @ste_eth_l2_src, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* @l3_type, align 4
  %88 = load i32, i32* @STE_IPV6, align 4
  %89 = call i32 @MLX5_SET(i32 %85, i32* %86, i32 %87, i32 %88)
  %90 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %91 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %96

92:                                               ; preds = %78
  %93 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %227

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %70
  br label %98

98:                                               ; preds = %97, %22
  %99 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %100 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32, i32* @ste_eth_l2_src, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* @first_vlan_qualifier, align 4
  %107 = load i32, i32* @DR_STE_CVLAN, align 4
  %108 = call i32 @MLX5_SET(i32 %104, i32* %105, i32 %106, i32 %107)
  %109 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %110 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %109, i32 0, i32 6
  store i64 0, i64* %110, align 8
  br label %125

111:                                              ; preds = %98
  %112 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %113 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i32, i32* @ste_eth_l2_src, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* @first_vlan_qualifier, align 4
  %120 = load i32, i32* @DR_STE_SVLAN, align 4
  %121 = call i32 @MLX5_SET(i32 %117, i32* %118, i32 %119, i32 %120)
  %122 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %9, align 8
  %123 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %122, i32 0, i32 5
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %116, %111
  br label %125

125:                                              ; preds = %124, %103
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %177

128:                                              ; preds = %125
  %129 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %130 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load i32, i32* @ste_eth_l2_src, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* @second_vlan_qualifier, align 4
  %137 = load i32, i32* @DR_STE_CVLAN, align 4
  %138 = call i32 @MLX5_SET(i32 %134, i32* %135, i32 %136, i32 %137)
  %139 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %140 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %139, i32 0, i32 4
  store i64 0, i64* %140, align 8
  br label %155

141:                                              ; preds = %128
  %142 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %143 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load i32, i32* @ste_eth_l2_src, align 4
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* @second_vlan_qualifier, align 4
  %150 = load i32, i32* @DR_STE_SVLAN, align 4
  %151 = call i32 @MLX5_SET(i32 %147, i32* %148, i32 %149, i32 %150)
  %152 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %153 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %152, i32 0, i32 3
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %146, %141
  br label %155

155:                                              ; preds = %154, %133
  %156 = load i32, i32* @eth_l2_src, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* @second_vlan_id, align 4
  %159 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %160 = bitcast %struct.mlx5dr_match_misc* %159 to %struct.mlx5dr_match_spec*
  %161 = load i32, i32* @inner_second_vid, align 4
  %162 = call i32 @DR_STE_SET_TAG(i32 %156, i32* %157, i32 %158, %struct.mlx5dr_match_spec* %160, i32 %161)
  %163 = load i32, i32* @eth_l2_src, align 4
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* @second_cfi, align 4
  %166 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %167 = bitcast %struct.mlx5dr_match_misc* %166 to %struct.mlx5dr_match_spec*
  %168 = load i32, i32* @inner_second_cfi, align 4
  %169 = call i32 @DR_STE_SET_TAG(i32 %163, i32* %164, i32 %165, %struct.mlx5dr_match_spec* %167, i32 %168)
  %170 = load i32, i32* @eth_l2_src, align 4
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* @second_priority, align 4
  %173 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %174 = bitcast %struct.mlx5dr_match_misc* %173 to %struct.mlx5dr_match_spec*
  %175 = load i32, i32* @inner_second_prio, align 4
  %176 = call i32 @DR_STE_SET_TAG(i32 %170, i32* %171, i32 %172, %struct.mlx5dr_match_spec* %174, i32 %175)
  br label %226

177:                                              ; preds = %125
  %178 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %179 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %177
  %183 = load i32, i32* @ste_eth_l2_src, align 4
  %184 = load i32*, i32** %11, align 8
  %185 = load i32, i32* @second_vlan_qualifier, align 4
  %186 = load i32, i32* @DR_STE_CVLAN, align 4
  %187 = call i32 @MLX5_SET(i32 %183, i32* %184, i32 %185, i32 %186)
  %188 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %189 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %188, i32 0, i32 2
  store i64 0, i64* %189, align 8
  br label %204

190:                                              ; preds = %177
  %191 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %192 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %190
  %196 = load i32, i32* @ste_eth_l2_src, align 4
  %197 = load i32*, i32** %11, align 8
  %198 = load i32, i32* @second_vlan_qualifier, align 4
  %199 = load i32, i32* @DR_STE_SVLAN, align 4
  %200 = call i32 @MLX5_SET(i32 %196, i32* %197, i32 %198, i32 %199)
  %201 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %202 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %201, i32 0, i32 1
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %195, %190
  br label %204

204:                                              ; preds = %203, %182
  %205 = load i32, i32* @eth_l2_src, align 4
  %206 = load i32*, i32** %11, align 8
  %207 = load i32, i32* @second_vlan_id, align 4
  %208 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %209 = bitcast %struct.mlx5dr_match_misc* %208 to %struct.mlx5dr_match_spec*
  %210 = load i32, i32* @outer_second_vid, align 4
  %211 = call i32 @DR_STE_SET_TAG(i32 %205, i32* %206, i32 %207, %struct.mlx5dr_match_spec* %209, i32 %210)
  %212 = load i32, i32* @eth_l2_src, align 4
  %213 = load i32*, i32** %11, align 8
  %214 = load i32, i32* @second_cfi, align 4
  %215 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %216 = bitcast %struct.mlx5dr_match_misc* %215 to %struct.mlx5dr_match_spec*
  %217 = load i32, i32* @outer_second_cfi, align 4
  %218 = call i32 @DR_STE_SET_TAG(i32 %212, i32* %213, i32 %214, %struct.mlx5dr_match_spec* %216, i32 %217)
  %219 = load i32, i32* @eth_l2_src, align 4
  %220 = load i32*, i32** %11, align 8
  %221 = load i32, i32* @second_priority, align 4
  %222 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %10, align 8
  %223 = bitcast %struct.mlx5dr_match_misc* %222 to %struct.mlx5dr_match_spec*
  %224 = load i32, i32* @outer_second_prio, align 4
  %225 = call i32 @DR_STE_SET_TAG(i32 %219, i32* %220, i32 %221, %struct.mlx5dr_match_spec* %223, i32 %224)
  br label %226

226:                                              ; preds = %204, %155
  store i32 0, i32* %4, align 4
  br label %227

227:                                              ; preds = %226, %92
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @DR_STE_SET_TAG(i32, i32*, i32, %struct.mlx5dr_match_spec*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
