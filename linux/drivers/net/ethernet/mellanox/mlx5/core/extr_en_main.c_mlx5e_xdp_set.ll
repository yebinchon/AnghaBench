; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_xdp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_xdp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.mlx5e_channel**, %struct.TYPE_8__ }
%struct.mlx5e_channel = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32* }
%struct.TYPE_7__ = type { i32, %struct.bpf_prog* }
%struct.TYPE_6__ = type { i32, %struct.bpf_prog* }
%struct.TYPE_8__ = type { %struct.bpf_prog* }
%struct.mlx5e_channels = type { %struct.TYPE_8__ }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@mlx5e_xdp_update_state = common dso_local global i32 0, align 4
@MLX5E_CHANNEL_STATE_XSK = common dso_local global i32 0, align 4
@MLX5E_RQ_STATE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.bpf_prog*)* @mlx5e_xdp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xdp_set(%struct.net_device* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5e_channels, align 8
  %12 = alloca %struct.mlx5e_channel*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mlx5e_priv* %15, %struct.mlx5e_priv** %5, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %20 = icmp ne %struct.bpf_prog* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %23 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %24 = call i32 @mlx5e_xdp_allowed(%struct.mlx5e_priv* %22, %struct.bpf_prog* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %220

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %31, i32 0, i32 3
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %37, align 8
  %39 = icmp ne %struct.bpf_prog* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %42 = icmp ne %struct.bpf_prog* %41, null
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %40, %29
  %45 = phi i1 [ true, %29 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %49
  %53 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %54 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.bpf_prog* @bpf_prog_add(%struct.bpf_prog* %53, i32 %57)
  store %struct.bpf_prog* %58, %struct.bpf_prog** %4, align 8
  %59 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %60 = call i64 @IS_ERR(%struct.bpf_prog* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %64 = call i32 @PTR_ERR(%struct.bpf_prog* %63)
  store i32 %64, i32* %9, align 4
  br label %220

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %49, %44
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %69
  %73 = bitcast %struct.mlx5e_channels* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %73, i8 0, i64 8, i1 false)
  %74 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %11, i32 0, i32 0
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %76 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = bitcast %struct.TYPE_8__* %74 to i8*
  %79 = bitcast %struct.TYPE_8__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 8, i1 false)
  %80 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %81 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %11, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store %struct.bpf_prog* %80, %struct.bpf_prog** %82, align 8
  %83 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %84 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %11, i32 0, i32 0
  %87 = call i32 @mlx5e_set_rq_type(i32 %85, %struct.TYPE_8__* %86)
  %88 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.bpf_prog*, %struct.bpf_prog** %91, align 8
  store %struct.bpf_prog* %92, %struct.bpf_prog** %6, align 8
  %93 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %94 = load i32, i32* @mlx5e_xdp_update_state, align 4
  %95 = call i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv* %93, %struct.mlx5e_channels* %11, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %72
  br label %220

99:                                               ; preds = %72
  br label %107

100:                                              ; preds = %69, %66
  %101 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %102 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %106 = call %struct.bpf_prog* @xchg(%struct.bpf_prog** %104, %struct.bpf_prog* %105)
  store %struct.bpf_prog* %106, %struct.bpf_prog** %6, align 8
  br label %107

107:                                              ; preds = %100, %99
  %108 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %109 = icmp ne %struct.bpf_prog* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %112 = call i32 @bpf_prog_put(%struct.bpf_prog* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %121 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %124 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = call i32 @mlx5e_set_rq_type(i32 %122, %struct.TYPE_8__* %125)
  br label %127

127:                                              ; preds = %119, %116, %113
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130, %127
  br label %220

134:                                              ; preds = %130
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %216, %134
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %138 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %136, %140
  br i1 %141, label %142, label %219

142:                                              ; preds = %135
  %143 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %144 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %146, i64 %148
  %150 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %149, align 8
  store %struct.mlx5e_channel* %150, %struct.mlx5e_channel** %12, align 8
  %151 = load i32, i32* @MLX5E_CHANNEL_STATE_XSK, align 4
  %152 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %12, align 8
  %153 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @test_bit(i32 %151, i32* %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* @MLX5E_RQ_STATE_ENABLED, align 4
  %157 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %12, align 8
  %158 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = call i32 @clear_bit(i32 %156, i32* %159)
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %142
  %164 = load i32, i32* @MLX5E_RQ_STATE_ENABLED, align 4
  %165 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %12, align 8
  %166 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = call i32 @clear_bit(i32 %164, i32* %167)
  br label %169

169:                                              ; preds = %163, %142
  %170 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %12, align 8
  %171 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %170, i32 0, i32 0
  %172 = call i32 @napi_synchronize(i32* %171)
  %173 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %12, align 8
  %174 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %177 = call %struct.bpf_prog* @xchg(%struct.bpf_prog** %175, %struct.bpf_prog* %176)
  store %struct.bpf_prog* %177, %struct.bpf_prog** %6, align 8
  %178 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %179 = icmp ne %struct.bpf_prog* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %169
  %181 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %182 = call i32 @bpf_prog_put(%struct.bpf_prog* %181)
  br label %183

183:                                              ; preds = %180, %169
  %184 = load i32, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %183
  %187 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %12, align 8
  %188 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %191 = call %struct.bpf_prog* @xchg(%struct.bpf_prog** %189, %struct.bpf_prog* %190)
  store %struct.bpf_prog* %191, %struct.bpf_prog** %6, align 8
  %192 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %193 = icmp ne %struct.bpf_prog* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %186
  %195 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %196 = call i32 @bpf_prog_put(%struct.bpf_prog* %195)
  br label %197

197:                                              ; preds = %194, %186
  br label %198

198:                                              ; preds = %197, %183
  %199 = load i32, i32* @MLX5E_RQ_STATE_ENABLED, align 4
  %200 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %12, align 8
  %201 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = call i32 @set_bit(i32 %199, i32* %202)
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %198
  %207 = load i32, i32* @MLX5E_RQ_STATE_ENABLED, align 4
  %208 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %12, align 8
  %209 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = call i32 @set_bit(i32 %207, i32* %210)
  br label %212

212:                                              ; preds = %206, %198
  %213 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %12, align 8
  %214 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %213, i32 0, i32 0
  %215 = call i32 @napi_schedule(i32* %214)
  br label %216

216:                                              ; preds = %212
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %135

219:                                              ; preds = %135
  br label %220

220:                                              ; preds = %219, %133, %98, %62, %27
  %221 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %222 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %221, i32 0, i32 0
  %223 = call i32 @mutex_unlock(i32* %222)
  %224 = load i32, i32* %9, align 4
  ret i32 %224
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5e_xdp_allowed(%struct.mlx5e_priv*, %struct.bpf_prog*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.bpf_prog* @bpf_prog_add(%struct.bpf_prog*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx5e_set_rq_type(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv*, %struct.mlx5e_channels*, i32) #1

declare dso_local %struct.bpf_prog* @xchg(%struct.bpf_prog**, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
