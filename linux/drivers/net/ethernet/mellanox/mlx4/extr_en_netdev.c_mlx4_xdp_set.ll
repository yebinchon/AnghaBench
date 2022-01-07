; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_xdp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_xdp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.mlx4_en_priv = type { i32, i32*, i32, i32, %struct.TYPE_3__**, i64, %struct.TYPE_4__*, %struct.mlx4_en_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_en_dev = type { i32, i32 }
%struct.mlx4_en_port_profile = type { i32* }

@TX_XDP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX = common dso_local global i64 0, align 8
@MAX_TX_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Reducing the number of TX rings, to not exceed the max total rings number.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed starting port %d for XDP change\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.bpf_prog*)* @mlx4_xdp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_xdp_set(%struct.net_device* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca %struct.mlx4_en_port_profile, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca %struct.mlx4_en_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.mlx4_en_priv* %17, %struct.mlx4_en_priv** %6, align 8
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 7
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %19, align 8
  store %struct.mlx4_en_dev* %20, %struct.mlx4_en_dev** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %22 = icmp ne %struct.bpf_prog* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 0, %27 ]
  store i32 %29, i32* %12, align 4
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @TX_XDP, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %103

38:                                               ; preds = %28
  %39 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %40 = icmp ne %struct.bpf_prog* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = call %struct.bpf_prog* @bpf_prog_add(%struct.bpf_prog* %42, i32 %46)
  store %struct.bpf_prog* %47, %struct.bpf_prog** %5, align 8
  %48 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %49 = call i64 @IS_ERR(%struct.bpf_prog* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %53 = call i32 @PTR_ERR(%struct.bpf_prog* %52)
  store i32 %53, i32* %3, align 4
  br label %288

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %38
  %56 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %96, %55
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %59
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %66, i32 0, i32 4
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %68, i64 %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %75, i32 0, i32 0
  %77 = call i32 @lockdep_is_held(i32* %76)
  %78 = call %struct.bpf_prog* @rcu_dereference_protected(i32 %74, i32 %77)
  store %struct.bpf_prog* %78, %struct.bpf_prog** %9, align 8
  %79 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %79, i32 0, i32 4
  %81 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %81, i64 %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %89 = call i32 @rcu_assign_pointer(i32 %87, %struct.bpf_prog* %88)
  %90 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %91 = icmp ne %struct.bpf_prog* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %65
  %93 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %94 = call i32 @bpf_prog_put(%struct.bpf_prog* %93)
  br label %95

95:                                               ; preds = %92, %65
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %59

99:                                               ; preds = %59
  %100 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  store i32 0, i32* %3, align 4
  br label %288

103:                                              ; preds = %28
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @mlx4_en_check_xdp_mtu(%struct.net_device* %104, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @EOPNOTSUPP, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %288

113:                                              ; preds = %103
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call %struct.mlx4_en_priv* @kzalloc(i32 56, i32 %114)
  store %struct.mlx4_en_priv* %115, %struct.mlx4_en_priv** %10, align 8
  %116 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %117 = icmp ne %struct.mlx4_en_priv* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %288

121:                                              ; preds = %113
  %122 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %123 = icmp ne %struct.bpf_prog* %122, null
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %126 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %127 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 1
  %130 = call %struct.bpf_prog* @bpf_prog_add(%struct.bpf_prog* %125, i32 %129)
  store %struct.bpf_prog* %130, %struct.bpf_prog** %5, align 8
  %131 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %132 = call i64 @IS_ERR(%struct.bpf_prog* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %124
  %135 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %136 = call i32 @PTR_ERR(%struct.bpf_prog* %135)
  store i32 %136, i32* %14, align 4
  br label %284

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %121
  %139 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %140 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %139, i32 0, i32 0
  %141 = call i32 @mutex_lock(i32* %140)
  %142 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %143 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %142, i32 0, i32 6
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = call i32 @memcpy(%struct.mlx4_en_port_profile* %8, %struct.TYPE_4__* %144, i32 8)
  %146 = load i32, i32* %12, align 4
  %147 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %8, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @TX_XDP, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32 %146, i32* %150, align 4
  %151 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %152 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* @TX, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* @MAX_TX_RINGS, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %138
  store i32 1, i32* %11, align 4
  %162 = load i32, i32* @MAX_TX_RINGS, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %165 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %164, i32 0, i32 6
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @ALIGN(i32 %163, i32 %168)
  %170 = sub nsw i32 %162, %169
  %171 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %8, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @TX, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32 %170, i32* %174, align 4
  %175 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %176 = call i32 @en_warn(%struct.mlx4_en_priv* %175, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  br label %177

177:                                              ; preds = %161, %138
  %178 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %179 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %180 = call i32 @mlx4_en_try_alloc_resources(%struct.mlx4_en_priv* %178, %struct.mlx4_en_priv* %179, %struct.mlx4_en_port_profile* %8, i32 0)
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %177
  %184 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %185 = icmp ne %struct.bpf_prog* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %188 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %189 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, 1
  %192 = call i32 @bpf_prog_sub(%struct.bpf_prog* %187, i32 %191)
  br label %193

193:                                              ; preds = %186, %183
  br label %280

194:                                              ; preds = %177
  %195 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %196 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  store i32 1, i32* %13, align 4
  %200 = load %struct.net_device*, %struct.net_device** %4, align 8
  %201 = call i32 @mlx4_en_stop_port(%struct.net_device* %200, i32 1)
  br label %202

202:                                              ; preds = %199, %194
  %203 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %204 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %205 = call i32 @mlx4_en_safe_replace_resources(%struct.mlx4_en_priv* %203, %struct.mlx4_en_priv* %204)
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %202
  %209 = load %struct.net_device*, %struct.net_device** %4, align 8
  %210 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %211 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* @TX, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %209, i32 %215)
  br label %217

217:                                              ; preds = %208, %202
  store i32 0, i32* %15, align 4
  br label %218

218:                                              ; preds = %255, %217
  %219 = load i32, i32* %15, align 4
  %220 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %221 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %258

224:                                              ; preds = %218
  %225 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %226 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %225, i32 0, i32 4
  %227 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %226, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %227, i64 %229
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %235 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %234, i32 0, i32 0
  %236 = call i32 @lockdep_is_held(i32* %235)
  %237 = call %struct.bpf_prog* @rcu_dereference_protected(i32 %233, i32 %236)
  store %struct.bpf_prog* %237, %struct.bpf_prog** %9, align 8
  %238 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %239 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %238, i32 0, i32 4
  %240 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %239, align 8
  %241 = load i32, i32* %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %240, i64 %242
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %248 = call i32 @rcu_assign_pointer(i32 %246, %struct.bpf_prog* %247)
  %249 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %250 = icmp ne %struct.bpf_prog* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %224
  %252 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %253 = call i32 @bpf_prog_put(%struct.bpf_prog* %252)
  br label %254

254:                                              ; preds = %251, %224
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %15, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %15, align 4
  br label %218

258:                                              ; preds = %218
  %259 = load i32, i32* %13, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %279

261:                                              ; preds = %258
  %262 = load %struct.net_device*, %struct.net_device** %4, align 8
  %263 = call i32 @mlx4_en_start_port(%struct.net_device* %262)
  store i32 %263, i32* %14, align 4
  %264 = load i32, i32* %14, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %278

266:                                              ; preds = %261
  %267 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %268 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %269 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @en_err(%struct.mlx4_en_priv* %267, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %270)
  %272 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %273 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %276 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %275, i32 0, i32 2
  %277 = call i32 @queue_work(i32 %274, i32* %276)
  br label %278

278:                                              ; preds = %266, %261
  br label %279

279:                                              ; preds = %278, %258
  br label %280

280:                                              ; preds = %279, %193
  %281 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %282 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %281, i32 0, i32 0
  %283 = call i32 @mutex_unlock(i32* %282)
  br label %284

284:                                              ; preds = %280, %134
  %285 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  %286 = call i32 @kfree(%struct.mlx4_en_priv* %285)
  %287 = load i32, i32* %14, align 4
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %284, %118, %110, %99, %51
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.bpf_prog* @bpf_prog_add(%struct.bpf_prog*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bpf_prog* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_en_check_xdp_mtu(%struct.net_device*, i32) #1

declare dso_local %struct.mlx4_en_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.mlx4_en_port_profile*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_try_alloc_resources(%struct.mlx4_en_priv*, %struct.mlx4_en_priv*, %struct.mlx4_en_port_profile*, i32) #1

declare dso_local i32 @bpf_prog_sub(%struct.bpf_prog*, i32) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.net_device*, i32) #1

declare dso_local i32 @mlx4_en_safe_replace_resources(%struct.mlx4_en_priv*, %struct.mlx4_en_priv*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @mlx4_en_start_port(%struct.net_device*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_en_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
