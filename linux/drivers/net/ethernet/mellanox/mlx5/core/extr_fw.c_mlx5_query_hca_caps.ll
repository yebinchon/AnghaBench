; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fw.c_mlx5_query_hca_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fw.c_mlx5_query_hca_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@MLX5_CAP_GENERAL = common dso_local global i32 0, align 4
@eth_net_offloads = common dso_local global i32 0, align 4
@MLX5_CAP_ETHERNET_OFFLOADS = common dso_local global i32 0, align 4
@ipoib_enhanced_offloads = common dso_local global i32 0, align 4
@MLX5_CAP_IPOIB_ENHANCED_OFFLOADS = common dso_local global i32 0, align 4
@pg = common dso_local global i32 0, align 4
@MLX5_CAP_ODP = common dso_local global i32 0, align 4
@atomic = common dso_local global i32 0, align 4
@MLX5_CAP_ATOMIC = common dso_local global i32 0, align 4
@roce = common dso_local global i32 0, align 4
@MLX5_CAP_ROCE = common dso_local global i32 0, align 4
@nic_flow_table = common dso_local global i32 0, align 4
@MLX5_CAP_FLOW_TABLE = common dso_local global i32 0, align 4
@vport_group_manager = common dso_local global i32 0, align 4
@MLX5_CAP_ESWITCH_FLOW_TABLE = common dso_local global i32 0, align 4
@MLX5_CAP_ESWITCH = common dso_local global i32 0, align 4
@vector_calc = common dso_local global i32 0, align 4
@MLX5_CAP_VECTOR_CALC = common dso_local global i32 0, align 4
@qos = common dso_local global i32 0, align 4
@MLX5_CAP_QOS = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@MLX5_CAP_DEBUG = common dso_local global i32 0, align 4
@pcam_reg = common dso_local global i32 0, align 4
@mcam_reg = common dso_local global i32 0, align 4
@qcam_reg = common dso_local global i32 0, align 4
@device_memory = common dso_local global i32 0, align 4
@MLX5_CAP_DEV_MEM = common dso_local global i32 0, align 4
@event_cap = common dso_local global i32 0, align 4
@MLX5_CAP_DEV_EVENT = common dso_local global i32 0, align 4
@tls = common dso_local global i32 0, align 4
@MLX5_CAP_TLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_hca_caps(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = load i32, i32* @MLX5_CAP_GENERAL, align 4
  %7 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %236

12:                                               ; preds = %1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = load i32, i32* @eth_net_offloads, align 4
  %15 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = load i32, i32* @MLX5_CAP_ETHERNET_OFFLOADS, align 4
  %20 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %236

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %28 = load i32, i32* @ipoib_enhanced_offloads, align 4
  %29 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = load i32, i32* @MLX5_CAP_IPOIB_ENHANCED_OFFLOADS, align 4
  %34 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %236

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %42 = load i32, i32* @pg, align 4
  %43 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %47 = load i32, i32* @MLX5_CAP_ODP, align 4
  %48 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %236

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %56 = load i32, i32* @atomic, align 4
  %57 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %61 = load i32, i32* @MLX5_CAP_ATOMIC, align 4
  %62 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %236

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %54
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %70 = load i32, i32* @roce, align 4
  %71 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %75 = load i32, i32* @MLX5_CAP_ROCE, align 4
  %76 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %236

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %68
  %83 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %84 = load i32, i32* @nic_flow_table, align 4
  %85 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %89 = load i32, i32* @ipoib_enhanced_offloads, align 4
  %90 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87, %82
  %93 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %94 = load i32, i32* @MLX5_CAP_FLOW_TABLE, align 4
  %95 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %93, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %236

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %87
  %102 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %103 = load i32, i32* @vport_group_manager, align 4
  %104 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %108 = call i64 @MLX5_ESWITCH_MANAGER(%struct.mlx5_core_dev* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %112 = load i32, i32* @MLX5_CAP_ESWITCH_FLOW_TABLE, align 4
  %113 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %111, i32 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %236

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %106, %101
  %120 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %121 = call i64 @MLX5_ESWITCH_MANAGER(%struct.mlx5_core_dev* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %125 = load i32, i32* @MLX5_CAP_ESWITCH, align 4
  %126 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %124, i32 %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* %2, align 4
  br label %236

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %119
  %133 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %134 = load i32, i32* @vector_calc, align 4
  %135 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %139 = load i32, i32* @MLX5_CAP_VECTOR_CALC, align 4
  %140 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %138, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  br label %236

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145, %132
  %147 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %148 = load i32, i32* @qos, align 4
  %149 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %153 = load i32, i32* @MLX5_CAP_QOS, align 4
  %154 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %152, i32 %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %2, align 4
  br label %236

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %146
  %161 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %162 = load i32, i32* @debug, align 4
  %163 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %167 = load i32, i32* @MLX5_CAP_DEBUG, align 4
  %168 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %160
  %170 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %171 = load i32, i32* @pcam_reg, align 4
  %172 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %176 = call i32 @mlx5_get_pcam_reg(%struct.mlx5_core_dev* %175)
  br label %177

177:                                              ; preds = %174, %169
  %178 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %179 = load i32, i32* @mcam_reg, align 4
  %180 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %184 = call i32 @mlx5_get_mcam_reg(%struct.mlx5_core_dev* %183)
  br label %185

185:                                              ; preds = %182, %177
  %186 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %187 = load i32, i32* @qcam_reg, align 4
  %188 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %192 = call i32 @mlx5_get_qcam_reg(%struct.mlx5_core_dev* %191)
  br label %193

193:                                              ; preds = %190, %185
  %194 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %195 = load i32, i32* @device_memory, align 4
  %196 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %200 = load i32, i32* @MLX5_CAP_DEV_MEM, align 4
  %201 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %199, i32 %200)
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* %4, align 4
  store i32 %205, i32* %2, align 4
  br label %236

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %193
  %208 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %209 = load i32, i32* @event_cap, align 4
  %210 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %207
  %213 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %214 = load i32, i32* @MLX5_CAP_DEV_EVENT, align 4
  %215 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %213, i32 %214)
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %4, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = load i32, i32* %4, align 4
  store i32 %219, i32* %2, align 4
  br label %236

220:                                              ; preds = %212
  br label %221

221:                                              ; preds = %220, %207
  %222 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %223 = load i32, i32* @tls, align 4
  %224 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %221
  %227 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %228 = load i32, i32* @MLX5_CAP_TLS, align 4
  %229 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %227, i32 %228)
  store i32 %229, i32* %4, align 4
  %230 = load i32, i32* %4, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %226
  %233 = load i32, i32* %4, align 4
  store i32 %233, i32* %2, align 4
  br label %236

234:                                              ; preds = %226
  br label %235

235:                                              ; preds = %234, %221
  store i32 0, i32* %2, align 4
  br label %236

236:                                              ; preds = %235, %232, %218, %204, %157, %143, %129, %116, %98, %79, %65, %51, %37, %23, %10
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @mlx5_core_get_caps(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_ESWITCH_MANAGER(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_get_pcam_reg(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_get_mcam_reg(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_get_qcam_reg(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
