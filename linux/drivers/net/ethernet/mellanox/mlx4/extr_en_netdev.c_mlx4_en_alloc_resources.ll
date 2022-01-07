; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32*, i32, i64**, i64**, i64*, i32, i64*, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.mlx4_en_port_profile* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_en_port_profile = type { i32, i32 }

@MLX4_EN_NUM_TX_TYPES = common dso_local global i32 0, align 4
@TXBB_SIZE = common dso_local global i32 0, align 4
@RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate NIC resources\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_port_profile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  %8 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %8, i32 0, i32 10
  %10 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %9, align 8
  store %struct.mlx4_en_port_profile* %10, %struct.mlx4_en_port_profile** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %77, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MLX4_EN_NUM_TX_TYPES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %80

15:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %73, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %17, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (...) @num_online_cpus()
  %29 = srem i32 %27, %28
  %30 = call i32 @cpu_to_node(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 2
  %34 = load i64**, i64*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64*, i64** %34, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @mlx4_en_create_cq(%struct.mlx4_en_priv* %31, i64* %41, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %26
  br label %132

51:                                               ; preds = %26
  %52 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %53, i32 0, i32 3
  %55 = load i64**, i64*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64*, i64** %55, i64 %57
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TXBB_SIZE, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @mlx4_en_create_tx_ring(%struct.mlx4_en_priv* %52, i64* %62, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %51
  br label %132

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %16

76:                                               ; preds = %16
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %11

80:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %128, %80
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %131

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (...) @num_online_cpus()
  %90 = srem i32 %88, %89
  %91 = call i32 @cpu_to_node(i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %93 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %93, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %4, align 8
  %100 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @RX, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @mlx4_en_create_cq(%struct.mlx4_en_priv* %92, i64* %98, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %87
  br label %132

108:                                              ; preds = %87
  %109 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %110 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %111 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %110, i32 0, i32 6
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %4, align 8
  %117 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i64 @mlx4_en_create_rx_ring(%struct.mlx4_en_priv* %109, i64* %115, i32 %118, i32 %121, i32 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %108
  br label %132

127:                                              ; preds = %108
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %81

131:                                              ; preds = %81
  store i32 0, i32* %2, align 4
  br label %266

132:                                              ; preds = %126, %107, %71, %50
  %133 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %134 = call i32 @en_err(%struct.mlx4_en_priv* %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %184, %132
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %138 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %187

141:                                              ; preds = %135
  %142 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %143 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %142, i32 0, i32 6
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %141
  %151 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %152 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %153 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %152, i32 0, i32 6
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %4, align 8
  %159 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %162 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @mlx4_en_destroy_rx_ring(%struct.mlx4_en_priv* %151, i64* %157, i32 %160, i32 %163)
  br label %165

165:                                              ; preds = %150, %141
  %166 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %167 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %166, i32 0, i32 4
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %165
  %175 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %176 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %177 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %176, i32 0, i32 4
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = call i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv* %175, i64* %181)
  br label %183

183:                                              ; preds = %174, %165
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %135

187:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %260, %187
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @MLX4_EN_NUM_TX_TYPES, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %263

192:                                              ; preds = %188
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %256, %192
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %196 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %194, %201
  br i1 %202, label %203, label %259

203:                                              ; preds = %193
  %204 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %205 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %204, i32 0, i32 3
  %206 = load i64**, i64*** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64*, i64** %206, i64 %208
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %203
  %217 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %218 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %219 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %218, i32 0, i32 3
  %220 = load i64**, i64*** %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64*, i64** %220, i64 %222
  %224 = load i64*, i64** %223, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = call i32 @mlx4_en_destroy_tx_ring(%struct.mlx4_en_priv* %217, i64* %227)
  br label %229

229:                                              ; preds = %216, %203
  %230 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %231 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %230, i32 0, i32 2
  %232 = load i64**, i64*** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64*, i64** %232, i64 %234
  %236 = load i64*, i64** %235, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64, i64* %236, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %255

242:                                              ; preds = %229
  %243 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %244 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %245 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %244, i32 0, i32 2
  %246 = load i64**, i64*** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64*, i64** %246, i64 %248
  %250 = load i64*, i64** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = call i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv* %243, i64* %253)
  br label %255

255:                                              ; preds = %242, %229
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %5, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %5, align 4
  br label %193

259:                                              ; preds = %193
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  br label %188

263:                                              ; preds = %188
  %264 = load i32, i32* @ENOMEM, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %263, %131
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i64 @mlx4_en_create_cq(%struct.mlx4_en_priv*, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_en_create_tx_ring(%struct.mlx4_en_priv*, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_en_create_rx_ring(%struct.mlx4_en_priv*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_destroy_rx_ring(%struct.mlx4_en_priv*, i64*, i32, i32) #1

declare dso_local i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv*, i64*) #1

declare dso_local i32 @mlx4_en_destroy_tx_ring(%struct.mlx4_en_priv*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
