; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_init_resource_tracker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_init_resource_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.resource_allocator*, i32, i32*, %struct.TYPE_7__* }
%struct.resource_allocator = type { i32*, i32*, i32*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.mlx4_active_ports = type { i32 }
%struct.mlx4_slaves_pport = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NUM_OF_RESOURCE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Started init_resource_tracker: %ld slaves\0A\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@MLX4_MAX_MAC_NUM = common dso_local global i8* null, align 8
@MLX4_MAX_VLAN_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_init_resource_tracker(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource_allocator*, align 8
  %9 = alloca %struct.mlx4_active_ports, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_slaves_pport, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %14 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %13)
  store %struct.mlx4_priv* %14, %struct.mlx4_priv** %4, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kcalloc(i32 %17, i32 4, i32 %18)
  %20 = bitcast i8* %19 to %struct.TYPE_7__*
  %21 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %25, align 8
  %26 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %609

36:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %79, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @MLX4_NUM_OF_RESOURCE_TYPE, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %50 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  br label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %44

67:                                               ; preds = %44
  %68 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %69 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = call i32 @mutex_init(i32* %77)
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %37

82:                                               ; preds = %37
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %84 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %85 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @mlx4_dbg(%struct.mlx4_dev* %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %86)
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %103, %82
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @MLX4_NUM_OF_RESOURCE_TYPE, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i32, i32* @RB_ROOT, align 4
  %94 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %95 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %93, i32* %102, align 4
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %88

106:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %521, %106
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @MLX4_NUM_OF_RESOURCE_TYPE, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %524

111:                                              ; preds = %107
  %112 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %113 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.resource_allocator*, %struct.resource_allocator** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %117, i64 %119
  store %struct.resource_allocator* %120, %struct.resource_allocator** %8, align 8
  %121 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %121, i32 0, i32 2
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i8* @kmalloc_array(i32 %126, i32 4, i32 %127)
  %129 = bitcast i8* %128 to i32*
  %130 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %131 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %130, i32 0, i32 0
  store i32* %129, i32** %131, align 8
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %133 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %132, i32 0, i32 2
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call i8* @kmalloc_array(i32 %137, i32 4, i32 %138)
  %140 = bitcast i8* %139 to i32*
  %141 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %142 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %141, i32 0, i32 1
  store i32* %140, i32** %142, align 8
  %143 = load i32, i32* %5, align 4
  %144 = icmp eq i32 %143, 133
  br i1 %144, label %148, label %145

145:                                              ; preds = %111
  %146 = load i32, i32* %5, align 4
  %147 = icmp eq i32 %146, 128
  br i1 %147, label %148, label %162

148:                                              ; preds = %145, %111
  %149 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %150 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %151 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %150, i32 0, i32 2
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  %156 = mul nsw i32 %149, %155
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i8* @kcalloc(i32 %156, i32 4, i32 %157)
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %161 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %160, i32 0, i32 2
  store i32* %159, i32** %161, align 8
  br label %174

162:                                              ; preds = %145
  %163 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %164 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %163, i32 0, i32 2
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* @GFP_KERNEL, align 4
  %170 = call i8* @kcalloc(i32 %168, i32 4, i32 %169)
  %171 = bitcast i8* %170 to i32*
  %172 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %173 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %172, i32 0, i32 2
  store i32* %171, i32** %173, align 8
  br label %174

174:                                              ; preds = %162, %148
  %175 = load i32, i32* %5, align 4
  %176 = icmp eq i32 %175, 135
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %179 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %181, 1
  %183 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %184 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %177, %174
  %186 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %187 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %200

190:                                              ; preds = %185
  %191 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %192 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %197 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %195, %190, %185
  br label %531

201:                                              ; preds = %195
  %202 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %203 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %202, i32 0, i32 7
  %204 = call i32 @spin_lock_init(i32* %203)
  store i32 0, i32* %7, align 4
  br label %205

205:                                              ; preds = %517, %201
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %208 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %207, i32 0, i32 2
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  %213 = icmp slt i32 %206, %212
  br i1 %213, label %214, label %520

214:                                              ; preds = %205
  %215 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %215, i32 %216)
  %218 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %9, i32 0, i32 0
  store i32 %217, i32* %218, align 4
  %219 = load i32, i32* %5, align 4
  switch i32 %219, label %462 [
    i32 130, label %220
    i32 134, label %237
    i32 129, label %251
    i32 132, label %265
    i32 131, label %279
    i32 133, label %293
    i32 128, label %382
    i32 135, label %441
  ]

220:                                              ; preds = %214
  %221 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %222 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %223 = load i32, i32* %7, align 4
  %224 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %225 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 11
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %229 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 10
  %231 = load i64, i64* %230, align 8
  %232 = sub nsw i64 %227, %231
  %233 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %234 = call i64 @mlx4_num_reserved_sqps(%struct.mlx4_dev* %233)
  %235 = sub nsw i64 %232, %234
  %236 = call i32 @initialize_res_quotas(%struct.mlx4_dev* %221, %struct.resource_allocator* %222, i32 130, i32 %223, i64 %235)
  br label %463

237:                                              ; preds = %214
  %238 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %239 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %240 = load i32, i32* %7, align 4
  %241 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %242 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 9
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %246 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 8
  %248 = load i64, i64* %247, align 8
  %249 = sub nsw i64 %244, %248
  %250 = call i32 @initialize_res_quotas(%struct.mlx4_dev* %238, %struct.resource_allocator* %239, i32 134, i32 %240, i64 %249)
  br label %463

251:                                              ; preds = %214
  %252 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %253 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %254 = load i32, i32* %7, align 4
  %255 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %256 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 7
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %260 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 6
  %262 = load i64, i64* %261, align 8
  %263 = sub nsw i64 %258, %262
  %264 = call i32 @initialize_res_quotas(%struct.mlx4_dev* %252, %struct.resource_allocator* %253, i32 129, i32 %254, i64 %263)
  br label %463

265:                                              ; preds = %214
  %266 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %267 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %268 = load i32, i32* %7, align 4
  %269 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %270 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 5
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %274 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 4
  %276 = load i64, i64* %275, align 8
  %277 = sub nsw i64 %272, %276
  %278 = call i32 @initialize_res_quotas(%struct.mlx4_dev* %266, %struct.resource_allocator* %267, i32 132, i32 %268, i64 %277)
  br label %463

279:                                              ; preds = %214
  %280 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %281 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %282 = load i32, i32* %7, align 4
  %283 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %284 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %288 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = sub nsw i64 %286, %290
  %292 = call i32 @initialize_res_quotas(%struct.mlx4_dev* %280, %struct.resource_allocator* %281, i32 131, i32 %282, i64 %291)
  br label %463

293:                                              ; preds = %214
  %294 = load i32, i32* %7, align 4
  %295 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %296 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %295)
  %297 = icmp eq i32 %294, %296
  br i1 %297, label %298, label %366

298:                                              ; preds = %293
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %299

299:                                              ; preds = %326, %298
  %300 = load i32, i32* %6, align 4
  %301 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %302 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = icmp slt i32 %300, %304
  br i1 %305, label %306, label %329

306:                                              ; preds = %299
  %307 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %308 = load i32, i32* %6, align 4
  %309 = add nsw i32 %308, 1
  %310 = call i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev* %307, i32 %309)
  %311 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %11, i32 0, i32 0
  store i32 %310, i32* %311, align 4
  %312 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %11, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %315 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @bitmap_weight(i32 %313, i32 %317)
  %319 = sub nsw i32 %318, 1
  store i32 %319, i32* %12, align 4
  %320 = load i32, i32* %10, align 4
  %321 = load i32, i32* %12, align 4
  %322 = icmp ult i32 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %306
  %324 = load i32, i32* %12, align 4
  store i32 %324, i32* %10, align 4
  br label %325

325:                                              ; preds = %323, %306
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %6, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %6, align 4
  br label %299

329:                                              ; preds = %299
  %330 = load i8*, i8** @MLX4_MAX_MAC_NUM, align 8
  %331 = load i32, i32* %10, align 4
  %332 = mul nsw i32 2, %331
  %333 = sext i32 %332 to i64
  %334 = sub i64 0, %333
  %335 = getelementptr i8, i8* %330, i64 %334
  %336 = ptrtoint i8* %335 to i32
  %337 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %338 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  store i32 %336, i32* %342, align 4
  %343 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %344 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %7, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  store i32 2, i32* %348, align 4
  store i32 0, i32* %6, align 4
  br label %349

349:                                              ; preds = %362, %329
  %350 = load i32, i32* %6, align 4
  %351 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %365

353:                                              ; preds = %349
  %354 = load i8*, i8** @MLX4_MAX_MAC_NUM, align 8
  %355 = ptrtoint i8* %354 to i32
  %356 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %357 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %356, i32 0, i32 4
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %6, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  store i32 %355, i32* %361, align 4
  br label %362

362:                                              ; preds = %353
  %363 = load i32, i32* %6, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %6, align 4
  br label %349

365:                                              ; preds = %349
  br label %381

366:                                              ; preds = %293
  %367 = load i8*, i8** @MLX4_MAX_MAC_NUM, align 8
  %368 = ptrtoint i8* %367 to i32
  %369 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %370 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %7, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  store i32 %368, i32* %374, align 4
  %375 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %376 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %7, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  store i32 2, i32* %380, align 4
  br label %381

381:                                              ; preds = %366, %365
  br label %463

382:                                              ; preds = %214
  %383 = load i32, i32* %7, align 4
  %384 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %385 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %384)
  %386 = icmp eq i32 %383, %385
  br i1 %386, label %387, label %425

387:                                              ; preds = %382
  %388 = load i32, i32* @MLX4_MAX_VLAN_NUM, align 4
  %389 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %390 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  store i32 %388, i32* %394, align 4
  %395 = load i32, i32* @MLX4_MAX_VLAN_NUM, align 4
  %396 = sdiv i32 %395, 2
  %397 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %398 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %397, i32 0, i32 1
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %7, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  store i32 %396, i32* %402, align 4
  store i32 0, i32* %6, align 4
  br label %403

403:                                              ; preds = %421, %387
  %404 = load i32, i32* %6, align 4
  %405 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %424

407:                                              ; preds = %403
  %408 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %409 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %408, i32 0, i32 0
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %7, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %416 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %415, i32 0, i32 4
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %6, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  store i32 %414, i32* %420, align 4
  br label %421

421:                                              ; preds = %407
  %422 = load i32, i32* %6, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %6, align 4
  br label %403

424:                                              ; preds = %403
  br label %440

425:                                              ; preds = %382
  %426 = load i32, i32* @MLX4_MAX_VLAN_NUM, align 4
  %427 = sdiv i32 %426, 2
  %428 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %429 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %428, i32 0, i32 0
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %7, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  store i32 %427, i32* %433, align 4
  %434 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %435 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %434, i32 0, i32 1
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %7, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  store i32 0, i32* %439, align 4
  br label %440

440:                                              ; preds = %425, %424
  br label %463

441:                                              ; preds = %214
  %442 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %443 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %447 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = load i32, i32* %7, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  store i32 %445, i32* %451, align 4
  %452 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %453 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %454 = load i32, i32* %7, align 4
  %455 = call i32 @mlx4_calc_res_counter_guaranteed(%struct.mlx4_dev* %452, %struct.resource_allocator* %453, i32 %454)
  %456 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %457 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %456, i32 0, i32 1
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %7, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  store i32 %455, i32* %461, align 4
  br label %463

462:                                              ; preds = %214
  br label %463

463:                                              ; preds = %462, %441, %440, %381, %279, %265, %251, %237, %220
  %464 = load i32, i32* %5, align 4
  %465 = icmp eq i32 %464, 133
  br i1 %465, label %469, label %466

466:                                              ; preds = %463
  %467 = load i32, i32* %5, align 4
  %468 = icmp eq i32 %467, 128
  br i1 %468, label %469, label %504

469:                                              ; preds = %466, %463
  store i32 0, i32* %6, align 4
  br label %470

470:                                              ; preds = %500, %469
  %471 = load i32, i32* %6, align 4
  %472 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %473 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = icmp slt i32 %471, %475
  br i1 %476, label %477, label %503

477:                                              ; preds = %470
  %478 = load i32, i32* %6, align 4
  %479 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %9, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = call i64 @test_bit(i32 %478, i32 %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %499

483:                                              ; preds = %477
  %484 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %485 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %484, i32 0, i32 1
  %486 = load i32*, i32** %485, align 8
  %487 = load i32, i32* %7, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %486, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %492 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %491, i32 0, i32 6
  %493 = load i32*, i32** %492, align 8
  %494 = load i32, i32* %6, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = add nsw i32 %497, %490
  store i32 %498, i32* %496, align 4
  br label %499

499:                                              ; preds = %483, %477
  br label %500

500:                                              ; preds = %499
  %501 = load i32, i32* %6, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %6, align 4
  br label %470

503:                                              ; preds = %470
  br label %516

504:                                              ; preds = %466
  %505 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %506 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %505, i32 0, i32 1
  %507 = load i32*, i32** %506, align 8
  %508 = load i32, i32* %7, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.resource_allocator*, %struct.resource_allocator** %8, align 8
  %513 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %512, i32 0, i32 5
  %514 = load i32, i32* %513, align 8
  %515 = add nsw i32 %514, %511
  store i32 %515, i32* %513, align 8
  br label %516

516:                                              ; preds = %504, %503
  br label %517

517:                                              ; preds = %516
  %518 = load i32, i32* %7, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %7, align 4
  br label %205

520:                                              ; preds = %205
  br label %521

521:                                              ; preds = %520
  %522 = load i32, i32* %5, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %5, align 4
  br label %107

524:                                              ; preds = %107
  %525 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %526 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %528, i32 0, i32 1
  %530 = call i32 @spin_lock_init(i32* %529)
  store i32 0, i32* %2, align 4
  br label %609

531:                                              ; preds = %200
  store i32 0, i32* %5, align 4
  br label %532

532:                                              ; preds = %603, %531
  %533 = load i32, i32* %5, align 4
  %534 = load i32, i32* @MLX4_NUM_OF_RESOURCE_TYPE, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %606

536:                                              ; preds = %532
  %537 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %538 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 0
  %542 = load %struct.resource_allocator*, %struct.resource_allocator** %541, align 8
  %543 = load i32, i32* %5, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %542, i64 %544
  %546 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %545, i32 0, i32 2
  %547 = load i32*, i32** %546, align 8
  %548 = call i32 @kfree(i32* %547)
  %549 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %550 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %549, i32 0, i32 0
  %551 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %552, i32 0, i32 0
  %554 = load %struct.resource_allocator*, %struct.resource_allocator** %553, align 8
  %555 = load i32, i32* %5, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %554, i64 %556
  %558 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %557, i32 0, i32 2
  store i32* null, i32** %558, align 8
  %559 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %560 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %562, i32 0, i32 0
  %564 = load %struct.resource_allocator*, %struct.resource_allocator** %563, align 8
  %565 = load i32, i32* %5, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %564, i64 %566
  %568 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %567, i32 0, i32 1
  %569 = load i32*, i32** %568, align 8
  %570 = call i32 @kfree(i32* %569)
  %571 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %572 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %574, i32 0, i32 0
  %576 = load %struct.resource_allocator*, %struct.resource_allocator** %575, align 8
  %577 = load i32, i32* %5, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %576, i64 %578
  %580 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %579, i32 0, i32 1
  store i32* null, i32** %580, align 8
  %581 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %582 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %584, i32 0, i32 0
  %586 = load %struct.resource_allocator*, %struct.resource_allocator** %585, align 8
  %587 = load i32, i32* %5, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %586, i64 %588
  %590 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %589, i32 0, i32 0
  %591 = load i32*, i32** %590, align 8
  %592 = call i32 @kfree(i32* %591)
  %593 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %594 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %593, i32 0, i32 0
  %595 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %596, i32 0, i32 0
  %598 = load %struct.resource_allocator*, %struct.resource_allocator** %597, align 8
  %599 = load i32, i32* %5, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %598, i64 %600
  %602 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %601, i32 0, i32 0
  store i32* null, i32** %602, align 8
  br label %603

603:                                              ; preds = %536
  %604 = load i32, i32* %5, align 4
  %605 = add nsw i32 %604, 1
  store i32 %605, i32* %5, align 4
  br label %532

606:                                              ; preds = %532
  %607 = load i32, i32* @ENOMEM, align 4
  %608 = sub nsw i32 0, %607
  store i32 %608, i32* %2, align 4
  br label %609

609:                                              ; preds = %606, %524, %33
  %610 = load i32, i32* %2, align 4
  ret i32 %610
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @initialize_res_quotas(%struct.mlx4_dev*, %struct.resource_allocator*, i32, i32, i64) #1

declare dso_local i64 @mlx4_num_reserved_sqps(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @mlx4_calc_res_counter_guaranteed(%struct.mlx4_dev*, %struct.resource_allocator*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
