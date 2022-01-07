; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_setup_shmem_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_setup_shmem_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.pcmcia_device = type { %struct.TYPE_6__**, %struct.net_device* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.net_device = type { i64, i64 }
%struct.pcnet_dev = type { i32, i32* }

@WIN_DATA_WIDTH_16 = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_CM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@WIN_USE_WAIT = common dso_local global i32 0, align 4
@mem_speed = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_PAGES = common dso_local global i32 0, align 4
@ei_status = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@shmem_get_8390_hdr = common dso_local global i32 0, align 4
@shmem_block_input = common dso_local global i32 0, align 4
@shmem_block_output = common dso_local global i32 0, align 4
@USE_SHMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i32, i32, i32)* @setup_shmem_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_shmem_window(%struct.pcmcia_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.pcnet_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = call %struct.pcnet_dev* @PRIV(%struct.net_device* %19)
  store %struct.pcnet_dev* %20, %struct.pcnet_dev** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  %24 = shl i32 %23, 8
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp sgt i32 %25, 32768
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 32768, i32* %13, align 4
  br label %28

28:                                               ; preds = %27, %4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @roundup_pow_of_two(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @WIN_DATA_WIDTH_16, align 4
  %32 = load i32, i32* @WIN_MEMORY_TYPE_CM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @WIN_ENABLE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %35
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @WIN_USE_WAIT, align 4
  %45 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %46 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %44
  store i32 %52, i32* %50, align 8
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %54 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 3
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %61 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %62, i64 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %59, i32* %65, align 4
  %66 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %67 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %68 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* @mem_speed, align 4
  %73 = call i32 @pcmcia_request_window(%struct.pcmcia_device* %66, %struct.TYPE_6__* %71, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %28
  br label %248

77:                                               ; preds = %28
  %78 = load i32, i32* %7, align 4
  %79 = shl i32 %78, 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %13, align 4
  %84 = srem i32 %82, %83
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %14, align 4
  %87 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %88 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %89 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %90, i64 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @pcmcia_map_mem_page(%struct.pcmcia_device* %87, %struct.TYPE_6__* %92, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %77
  br label %248

98:                                               ; preds = %77
  %99 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %100 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %101, i64 3
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %107 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %108, i64 3
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call i32 @resource_size(%struct.TYPE_6__* %110)
  %112 = call i32* @ioremap(i64 %105, i32 %111)
  %113 = load %struct.pcnet_dev*, %struct.pcnet_dev** %11, align 8
  %114 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = load %struct.pcnet_dev*, %struct.pcnet_dev** %11, align 8
  %116 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %98
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %15, align 4
  br label %248

126:                                              ; preds = %98
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %145, %126
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @TX_PAGES, align 4
  %130 = shl i32 %129, 8
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %127
  %133 = load i32, i32* %12, align 4
  %134 = ashr i32 %133, 1
  %135 = load %struct.pcnet_dev*, %struct.pcnet_dev** %11, align 8
  %136 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = call i32 @__raw_writew(i32 %134, i32* %143)
  br label %145

145:                                              ; preds = %132
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 2
  store i32 %147, i32* %12, align 4
  br label %127

148:                                              ; preds = %127
  %149 = call i32 @udelay(i32 100)
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %171, %148
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @TX_PAGES, align 4
  %153 = shl i32 %152, 8
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %155, label %174

155:                                              ; preds = %150
  %156 = load %struct.pcnet_dev*, %struct.pcnet_dev** %11, align 8
  %157 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = call i32 @__raw_readw(i32* %164)
  %166 = load i32, i32* %12, align 4
  %167 = ashr i32 %166, 1
  %168 = icmp ne i32 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  br label %174

170:                                              ; preds = %155
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %12, align 4
  br label %150

174:                                              ; preds = %169, %150
  %175 = load %struct.net_device*, %struct.net_device** %10, align 8
  %176 = call i32 @pcnet_reset_8390(%struct.net_device* %175)
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @TX_PAGES, align 4
  %179 = shl i32 %178, 8
  %180 = icmp ne i32 %177, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %174
  %182 = load %struct.pcnet_dev*, %struct.pcnet_dev** %11, align 8
  %183 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @iounmap(i32* %184)
  %186 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %187 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %188 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %187, i32 0, i32 0
  %189 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %189, i64 3
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = call i32 @pcmcia_release_window(%struct.pcmcia_device* %186, %struct.TYPE_6__* %191)
  %193 = load %struct.pcnet_dev*, %struct.pcnet_dev** %11, align 8
  %194 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %193, i32 0, i32 1
  store i32* null, i32** %194, align 8
  br label %248

195:                                              ; preds = %174
  %196 = load %struct.pcnet_dev*, %struct.pcnet_dev** %11, align 8
  %197 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32* %201, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ei_status, i32 0, i32 7), align 8
  %202 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %203 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %202, i32 0, i32 0
  %204 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %204, i64 3
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = call i32 @resource_size(%struct.TYPE_6__* %206)
  store i32 %207, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ei_status, i32 0, i32 0), align 8
  %208 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ei_status, i32 0, i32 7), align 8
  %209 = ptrtoint i32* %208 to i64
  %210 = load %struct.net_device*, %struct.net_device** %10, align 8
  %211 = getelementptr inbounds %struct.net_device, %struct.net_device* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load %struct.net_device*, %struct.net_device** %10, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %216 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %215, i32 0, i32 0
  %217 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %217, i64 3
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = call i32 @resource_size(%struct.TYPE_6__* %219)
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %214, %221
  %223 = load %struct.net_device*, %struct.net_device** %10, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 1
  store i64 %222, i64* %224, align 8
  %225 = load i32, i32* %7, align 4
  store i32 %225, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ei_status, i32 0, i32 1), align 4
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* @TX_PAGES, align 4
  %228 = add nsw i32 %226, %227
  store i32 %228, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ei_status, i32 0, i32 2), align 8
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %231 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %230, i32 0, i32 0
  %232 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %232, i64 3
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = call i32 @resource_size(%struct.TYPE_6__* %234)
  %236 = load i32, i32* %14, align 4
  %237 = sub nsw i32 %235, %236
  %238 = ashr i32 %237, 8
  %239 = add nsw i32 %229, %238
  store i32 %239, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ei_status, i32 0, i32 3), align 4
  %240 = load i32, i32* @shmem_get_8390_hdr, align 4
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ei_status, i32 0, i32 6), align 8
  %241 = load i32, i32* @shmem_block_input, align 4
  store i32 %241, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ei_status, i32 0, i32 5), align 4
  %242 = load i32, i32* @shmem_block_output, align 4
  store i32 %242, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ei_status, i32 0, i32 4), align 8
  %243 = load i32, i32* @USE_SHMEM, align 4
  %244 = load %struct.pcnet_dev*, %struct.pcnet_dev** %11, align 8
  %245 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  store i32 0, i32* %5, align 4
  br label %249

248:                                              ; preds = %181, %123, %97, %76
  store i32 1, i32* %5, align 4
  br label %249

249:                                              ; preds = %248, %195
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local %struct.pcnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @pcmcia_request_window(%struct.pcmcia_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @pcmcia_map_mem_page(%struct.pcmcia_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_6__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__raw_writew(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__raw_readw(i32*) #1

declare dso_local i32 @pcnet_reset_8390(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pcmcia_release_window(%struct.pcmcia_device*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
