; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_cxgb4_set_hash_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_cxgb4_set_hash_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ch_filter_specification = type { i32, %struct.TYPE_10__, i64, %struct.TYPE_9__, i32, i64, i32, i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.filter_ctx = type { i32 }
%struct.adapter = type { %struct.TYPE_12__, %struct.TYPE_8__, %struct.tid_info }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tid_info = type { i32 }
%struct.port_info = type { i32 }
%struct.filter_entry = type { i32, i32*, i32*, %struct.ch_filter_specification, %struct.net_device*, %struct.filter_ctx* }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VNIC_F = common dso_local global i32 0, align 4
@USE_ENC_IDX_F = common dso_local global i32 0, align 4
@CPL_PRIORITY_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ch_filter_specification*, %struct.filter_ctx*)* @cxgb4_set_hash_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_set_hash_filter(%struct.net_device* %0, %struct.ch_filter_specification* %1, %struct.filter_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ch_filter_specification*, align 8
  %7 = alloca %struct.filter_ctx*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.port_info*, align 8
  %10 = alloca %struct.tid_info*, align 8
  %11 = alloca %struct.filter_entry*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.port_info*, align 8
  %19 = alloca [6 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ch_filter_specification* %1, %struct.ch_filter_specification** %6, align 8
  store %struct.filter_ctx* %2, %struct.filter_ctx** %7, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.adapter* @netdev2adap(%struct.net_device* %20)
  store %struct.adapter* %21, %struct.adapter** %8, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.port_info* @netdev_priv(%struct.net_device* %22)
  store %struct.port_info* %23, %struct.port_info** %9, align 8
  %24 = load %struct.adapter*, %struct.adapter** %8, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 2
  store %struct.tid_info* %25, %struct.tid_info** %10, align 8
  store i32 0, i32* %16, align 4
  %26 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %27 = call i32 @fill_default_mask(%struct.ch_filter_specification* %26)
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %30 = call i32 @validate_filter(%struct.net_device* %28, %struct.ch_filter_specification* %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %4, align 4
  br label %407

35:                                               ; preds = %3
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %38 = call i32 @get_filter_steerq(%struct.net_device* %36, %struct.ch_filter_specification* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %4, align 4
  br label %407

43:                                               ; preds = %35
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.filter_entry* @kzalloc(i32 168, i32 %44)
  store %struct.filter_entry* %45, %struct.filter_entry** %11, align 8
  %46 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %47 = icmp ne %struct.filter_entry* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %407

51:                                               ; preds = %43
  %52 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %53 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %52, i32 0, i32 3
  %54 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %55 = bitcast %struct.ch_filter_specification* %53 to i8*
  %56 = bitcast %struct.ch_filter_specification* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 128, i1 false)
  %57 = load %struct.filter_ctx*, %struct.filter_ctx** %7, align 8
  %58 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %59 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %58, i32 0, i32 5
  store %struct.filter_ctx* %57, %struct.filter_ctx** %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %62 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %61, i32 0, i32 4
  store %struct.net_device* %60, %struct.net_device** %62, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %65 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %68 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %51
  %73 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %74 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %72, %51
  %79 = load %struct.adapter*, %struct.adapter** %8, align 8
  %80 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %81 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %85 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %89 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call i32* @t4_l2t_alloc_switching(%struct.adapter* %79, i32 %83, i32 %87, i32 %91)
  %93 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %94 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %96 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %78
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %16, align 4
  br label %403

102:                                              ; preds = %78
  br label %103

103:                                              ; preds = %102, %72
  %104 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %105 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %140

109:                                              ; preds = %103
  %110 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %111 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %110, i32 0, i32 4
  %112 = load %struct.net_device*, %struct.net_device** %111, align 8
  %113 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %114 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32* @cxgb4_smt_alloc_switching(%struct.net_device* %112, i32 %116)
  %118 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %119 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %118, i32 0, i32 2
  store i32* %117, i32** %119, align 8
  %120 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %121 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %139, label %124

124:                                              ; preds = %109
  %125 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %126 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %131 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @cxgb4_l2t_release(i32* %132)
  %134 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %135 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %134, i32 0, i32 1
  store i32* null, i32** %135, align 8
  br label %136

136:                                              ; preds = %129, %124
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %16, align 4
  br label %390

139:                                              ; preds = %109
  br label %140

140:                                              ; preds = %139, %103
  %141 = load %struct.tid_info*, %struct.tid_info** %10, align 8
  %142 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %143 = call i32 @cxgb4_alloc_atid(%struct.tid_info* %141, %struct.filter_entry* %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %16, align 4
  br label %377

148:                                              ; preds = %140
  %149 = load %struct.adapter*, %struct.adapter** %8, align 8
  %150 = getelementptr inbounds %struct.adapter, %struct.adapter* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* @VNIC_F, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %203

158:                                              ; preds = %148
  %159 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %160 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 13
  %164 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %165 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %163, %167
  %169 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %170 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 8
  %173 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %174 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 13
  %178 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %179 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %177, %181
  %183 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %184 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  store i32 %182, i32* %186, align 8
  %187 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %188 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %192 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  store i32 %190, i32* %194, align 4
  %195 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %6, align 8
  %196 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %200 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 3
  store i32 %198, i32* %202, align 4
  br label %261

203:                                              ; preds = %148
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* @USE_ENC_IDX_F, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %260

208:                                              ; preds = %203
  %209 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %210 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %259

215:                                              ; preds = %208
  %216 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %217 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %216, i32 0, i32 4
  %218 = load %struct.net_device*, %struct.net_device** %217, align 8
  %219 = call %struct.port_info* @netdev_priv(%struct.net_device* %218)
  store %struct.port_info* %219, %struct.port_info** %18, align 8
  %220 = bitcast [6 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %220, i8 0, i64 24, i1 false)
  %221 = load %struct.adapter*, %struct.adapter** %8, align 8
  %222 = load %struct.port_info*, %struct.port_info** %18, align 8
  %223 = getelementptr inbounds %struct.port_info, %struct.port_info* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 0
  %226 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 0
  %227 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %228 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %233 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @t4_alloc_encap_mac_filt(%struct.adapter* %221, i32 %224, i32* %225, i32* %226, i32 %231, i32 %236, i32 0, i32 1, i32 1)
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %16, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %215
  br label %373

241:                                              ; preds = %215
  %242 = load i32, i32* %16, align 4
  %243 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %244 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  store i32 %242, i32* %246, align 8
  %247 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %248 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  store i32 65535, i32* %250, align 8
  %251 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %252 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 3
  store i32 1, i32* %254, align 4
  %255 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %256 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 3
  store i32 1, i32* %258, align 4
  br label %259

259:                                              ; preds = %241, %208
  br label %260

260:                                              ; preds = %259, %203
  br label %261

261:                                              ; preds = %260, %158
  store i32 4, i32* %15, align 4
  %262 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %263 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %301

267:                                              ; preds = %261
  %268 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %269 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %268, i32 0, i32 4
  %270 = load %struct.net_device*, %struct.net_device** %269, align 8
  %271 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %272 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 7
  %275 = call i32 @cxgb4_clip_get(%struct.net_device* %270, i32* %274, i32 1)
  store i32 %275, i32* %16, align 4
  %276 = load i32, i32* %16, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %267
  br label %347

279:                                              ; preds = %267
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* @GFP_KERNEL, align 4
  %282 = call %struct.sk_buff* @alloc_skb(i32 %280, i32 %281)
  store %struct.sk_buff* %282, %struct.sk_buff** %12, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %284 = icmp ne %struct.sk_buff* %283, null
  br i1 %284, label %288, label %285

285:                                              ; preds = %279
  %286 = load i32, i32* @ENOMEM, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %16, align 4
  br label %338

288:                                              ; preds = %279
  %289 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %290 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %291 = load %struct.adapter*, %struct.adapter** %8, align 8
  %292 = getelementptr inbounds %struct.adapter, %struct.adapter* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = shl i32 %295, 14
  %297 = load i32, i32* %14, align 4
  %298 = or i32 %296, %297
  %299 = load %struct.adapter*, %struct.adapter** %8, align 8
  %300 = call i32 @mk_act_open_req6(%struct.filter_entry* %289, %struct.sk_buff* %290, i32 %298, %struct.adapter* %299)
  br label %323

301:                                              ; preds = %261
  %302 = load i32, i32* %15, align 4
  %303 = load i32, i32* @GFP_KERNEL, align 4
  %304 = call %struct.sk_buff* @alloc_skb(i32 %302, i32 %303)
  store %struct.sk_buff* %304, %struct.sk_buff** %12, align 8
  %305 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %306 = icmp ne %struct.sk_buff* %305, null
  br i1 %306, label %310, label %307

307:                                              ; preds = %301
  %308 = load i32, i32* @ENOMEM, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %16, align 4
  br label %347

310:                                              ; preds = %301
  %311 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %312 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %313 = load %struct.adapter*, %struct.adapter** %8, align 8
  %314 = getelementptr inbounds %struct.adapter, %struct.adapter* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = shl i32 %317, 14
  %319 = load i32, i32* %14, align 4
  %320 = or i32 %318, %319
  %321 = load %struct.adapter*, %struct.adapter** %8, align 8
  %322 = call i32 @mk_act_open_req(%struct.filter_entry* %311, %struct.sk_buff* %312, i32 %320, %struct.adapter* %321)
  br label %323

323:                                              ; preds = %310, %288
  %324 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %325 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %324, i32 0, i32 0
  store i32 1, i32* %325, align 8
  %326 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %327 = load i32, i32* @CPL_PRIORITY_SETUP, align 4
  %328 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %329 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, 3
  %334 = call i32 @set_wr_txq(%struct.sk_buff* %326, i32 %327, i32 %333)
  %335 = load %struct.adapter*, %struct.adapter** %8, align 8
  %336 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %337 = call i32 @t4_ofld_send(%struct.adapter* %335, %struct.sk_buff* %336)
  store i32 0, i32* %4, align 4
  br label %407

338:                                              ; preds = %285
  %339 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %340 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %339, i32 0, i32 4
  %341 = load %struct.net_device*, %struct.net_device** %340, align 8
  %342 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %343 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 7
  %346 = call i32 @cxgb4_clip_release(%struct.net_device* %341, i32* %345, i32 1)
  br label %347

347:                                              ; preds = %338, %307, %278
  %348 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %349 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 6
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %372

354:                                              ; preds = %347
  %355 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %356 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %372

361:                                              ; preds = %354
  %362 = load %struct.adapter*, %struct.adapter** %8, align 8
  %363 = load %struct.port_info*, %struct.port_info** %9, align 8
  %364 = getelementptr inbounds %struct.port_info, %struct.port_info* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %367 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @t4_free_encap_mac_filt(%struct.adapter* %362, i32 %365, i32 %370, i32 1)
  br label %372

372:                                              ; preds = %361, %354, %347
  br label %373

373:                                              ; preds = %372, %240
  %374 = load %struct.tid_info*, %struct.tid_info** %10, align 8
  %375 = load i32, i32* %14, align 4
  %376 = call i32 @cxgb4_free_atid(%struct.tid_info* %374, i32 %375)
  br label %377

377:                                              ; preds = %373, %146
  %378 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %379 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %378, i32 0, i32 2
  %380 = load i32*, i32** %379, align 8
  %381 = icmp ne i32* %380, null
  br i1 %381, label %382, label %389

382:                                              ; preds = %377
  %383 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %384 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %383, i32 0, i32 2
  %385 = load i32*, i32** %384, align 8
  %386 = call i32 @cxgb4_smt_release(i32* %385)
  %387 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %388 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %387, i32 0, i32 2
  store i32* null, i32** %388, align 8
  br label %389

389:                                              ; preds = %382, %377
  br label %390

390:                                              ; preds = %389, %136
  %391 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %392 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %391, i32 0, i32 1
  %393 = load i32*, i32** %392, align 8
  %394 = icmp ne i32* %393, null
  br i1 %394, label %395, label %402

395:                                              ; preds = %390
  %396 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %397 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %396, i32 0, i32 1
  %398 = load i32*, i32** %397, align 8
  %399 = call i32 @cxgb4_l2t_release(i32* %398)
  %400 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %401 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %400, i32 0, i32 1
  store i32* null, i32** %401, align 8
  br label %402

402:                                              ; preds = %395, %390
  br label %403

403:                                              ; preds = %402, %99
  %404 = load %struct.filter_entry*, %struct.filter_entry** %11, align 8
  %405 = call i32 @kfree(%struct.filter_entry* %404)
  %406 = load i32, i32* %16, align 4
  store i32 %406, i32* %4, align 4
  br label %407

407:                                              ; preds = %403, %323, %48, %41, %33
  %408 = load i32, i32* %4, align 4
  ret i32 %408
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fill_default_mask(%struct.ch_filter_specification*) #1

declare dso_local i32 @validate_filter(%struct.net_device*, %struct.ch_filter_specification*) #1

declare dso_local i32 @get_filter_steerq(%struct.net_device*, %struct.ch_filter_specification*) #1

declare dso_local %struct.filter_entry* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @t4_l2t_alloc_switching(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32* @cxgb4_smt_alloc_switching(%struct.net_device*, i32) #1

declare dso_local i32 @cxgb4_l2t_release(i32*) #1

declare dso_local i32 @cxgb4_alloc_atid(%struct.tid_info*, %struct.filter_entry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @t4_alloc_encap_mac_filt(%struct.adapter*, i32, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cxgb4_clip_get(%struct.net_device*, i32*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @mk_act_open_req6(%struct.filter_entry*, %struct.sk_buff*, i32, %struct.adapter*) #1

declare dso_local i32 @mk_act_open_req(%struct.filter_entry*, %struct.sk_buff*, i32, %struct.adapter*) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @t4_ofld_send(%struct.adapter*, %struct.sk_buff*) #1

declare dso_local i32 @cxgb4_clip_release(%struct.net_device*, i32*, i32) #1

declare dso_local i32 @t4_free_encap_mac_filt(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @cxgb4_free_atid(%struct.tid_info*, i32) #1

declare dso_local i32 @cxgb4_smt_release(i32*) #1

declare dso_local i32 @kfree(%struct.filter_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
