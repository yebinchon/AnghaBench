; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.net_device = type { i64, i32 }
%struct.ei_device = type { i64*, i32*, i32 }
%struct.ax_device = type { i32, i64*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i32 }
%struct.resource = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no IRQ specified\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IRQF_TRIGGER_MASK = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_SHAREABLE = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no MEM specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot reserve registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Cannot ioremap area %pR\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot map reset register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ax_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ei_device*, align 8
  %6 = alloca %struct.ax_device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %13 = call %struct.net_device* @ax__alloc_ei_netdev(i32 32)
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = icmp eq %struct.net_device* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %305

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @SET_NETDEV_DEV(%struct.net_device* %20, i32* %22)
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call %struct.ei_device* @netdev_priv(%struct.net_device* %24)
  store %struct.ei_device* %25, %struct.ei_device** %5, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %26)
  store %struct.ax_device* %27, %struct.ax_device** %6, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call %struct.TYPE_2__* @dev_get_platdata(i32* %29)
  %31 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %32 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %31, i32 0, i32 3
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @platform_set_drvdata(%struct.platform_device* %33, %struct.net_device* %34)
  %36 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %37 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %42 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_IRQ, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %7, align 8
  %46 = load %struct.resource*, %struct.resource** %7, align 8
  %47 = icmp ne %struct.resource* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %19
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %299

54:                                               ; preds = %19
  %55 = load %struct.resource*, %struct.resource** %7, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.resource*, %struct.resource** %7, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %66 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.resource*, %struct.resource** %7, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IORESOURCE_IRQ_SHAREABLE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %54
  %74 = load i32, i32* @IRQF_SHARED, align 4
  %75 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %76 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %54
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load i32, i32* @IORESOURCE_MEM, align 4
  %82 = call %struct.resource* @platform_get_resource(%struct.platform_device* %80, i32 %81, i32 0)
  store %struct.resource* %82, %struct.resource** %8, align 8
  %83 = load %struct.resource*, %struct.resource** %8, align 8
  %84 = icmp ne %struct.resource* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @ENXIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %12, align 4
  br label %299

91:                                               ; preds = %79
  %92 = load %struct.resource*, %struct.resource** %8, align 8
  %93 = call i64 @resource_size(%struct.resource* %92)
  store i64 %93, i64* %10, align 8
  %94 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %95 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %102 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %101, i32 0, i32 3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %107 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %106, i32 0, i32 0
  store i64* %105, i64** %107, align 8
  br label %133

108:                                              ; preds = %91
  %109 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %110 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %113 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %112, i32 0, i32 0
  store i64* %111, i64** %113, align 8
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %129, %108
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 24
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = load i64, i64* %10, align 8
  %119 = udiv i64 %118, 24
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %119, %121
  %123 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %124 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  store i64 %122, i64* %128, align 8
  br label %129

129:                                              ; preds = %117
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %114

132:                                              ; preds = %114
  br label %133

133:                                              ; preds = %132, %100
  %134 = load %struct.resource*, %struct.resource** %8, align 8
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* %10, align 8
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @request_mem_region(i32 %136, i64 %137, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %133
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 (i32*, i8*, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* @ENXIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %12, align 4
  br label %299

149:                                              ; preds = %133
  %150 = load %struct.resource*, %struct.resource** %8, align 8
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %10, align 8
  %154 = call i8* @ioremap(i32 %152, i64 %153)
  %155 = bitcast i8* %154 to i32*
  %156 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %157 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %156, i32 0, i32 1
  store i32* %155, i32** %157, align 8
  %158 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %159 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = ptrtoint i32* %160 to i64
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %165 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %149
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = load %struct.resource*, %struct.resource** %8, align 8
  %172 = call i32 (i32*, i8*, ...) @dev_err(i32* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), %struct.resource* %171)
  %173 = load i32, i32* @ENXIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %12, align 4
  br label %293

175:                                              ; preds = %149
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = load i32, i32* @IORESOURCE_MEM, align 4
  %178 = call %struct.resource* @platform_get_resource(%struct.platform_device* %176, i32 %177, i32 1)
  store %struct.resource* %178, %struct.resource** %9, align 8
  %179 = load %struct.resource*, %struct.resource** %9, align 8
  %180 = icmp ne %struct.resource* %179, null
  br i1 %180, label %209, label %181

181:                                              ; preds = %175
  %182 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %183 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %182, i32 0, i32 3
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = icmp ne i64* %186, null
  br i1 %187, label %208, label %188

188:                                              ; preds = %181
  store i32 0, i32* %12, align 4
  br label %189

189:                                              ; preds = %204, %188
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %190, 32
  br i1 %191, label %192, label %207

192:                                              ; preds = %189
  %193 = load i64, i64* %10, align 8
  %194 = udiv i64 %193, 32
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = mul i64 %194, %196
  %198 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %199 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %198, i32 0, i32 1
  %200 = load i64*, i64** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  store i64 %197, i64* %203, align 8
  br label %204

204:                                              ; preds = %192
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %12, align 4
  br label %189

207:                                              ; preds = %189
  br label %208

208:                                              ; preds = %207, %181
  br label %261

209:                                              ; preds = %175
  %210 = load %struct.resource*, %struct.resource** %9, align 8
  %211 = call i64 @resource_size(%struct.resource* %210)
  store i64 %211, i64* %11, align 8
  %212 = load %struct.resource*, %struct.resource** %9, align 8
  %213 = getelementptr inbounds %struct.resource, %struct.resource* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i64, i64* %11, align 8
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @request_mem_region(i32 %214, i64 %215, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %209
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = call i32 (i32*, i8*, ...) @dev_err(i32* %223, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %225 = load i32, i32* @ENXIO, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %12, align 4
  br label %288

227:                                              ; preds = %209
  %228 = load %struct.resource*, %struct.resource** %9, align 8
  %229 = getelementptr inbounds %struct.resource, %struct.resource* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i64, i64* %11, align 8
  %232 = call i8* @ioremap(i32 %230, i64 %231)
  %233 = bitcast i8* %232 to i32*
  %234 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %235 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %234, i32 0, i32 2
  store i32* %233, i32** %235, align 8
  %236 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %237 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %246, label %240

240:                                              ; preds = %227
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %241, i32 0, i32 0
  %243 = call i32 (i32*, i8*, ...) @dev_err(i32* %242, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %244 = load i32, i32* @ENXIO, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %12, align 4
  br label %278

246:                                              ; preds = %227
  %247 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %248 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %251 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = ptrtoint i32* %249 to i64
  %254 = ptrtoint i32* %252 to i64
  %255 = sub i64 %253, %254
  %256 = sdiv exact i64 %255, 4
  %257 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %258 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %257, i32 0, i32 0
  %259 = load i64*, i64** %258, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 31
  store i64 %256, i64* %260, align 8
  br label %261

261:                                              ; preds = %246, %208
  %262 = load %struct.net_device*, %struct.net_device** %4, align 8
  %263 = call i32 @ax_init_dev(%struct.net_device* %262)
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %261
  store i32 0, i32* %2, align 4
  br label %305

267:                                              ; preds = %261
  %268 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %269 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %273, label %272

272:                                              ; preds = %267
  br label %288

273:                                              ; preds = %267
  %274 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %275 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = call i32 @iounmap(i32* %276)
  br label %278

278:                                              ; preds = %273, %240
  %279 = load %struct.resource*, %struct.resource** %9, align 8
  %280 = icmp ne %struct.resource* %279, null
  br i1 %280, label %281, label %287

281:                                              ; preds = %278
  %282 = load %struct.resource*, %struct.resource** %9, align 8
  %283 = getelementptr inbounds %struct.resource, %struct.resource* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i64, i64* %11, align 8
  %286 = call i32 @release_mem_region(i32 %284, i64 %285)
  br label %287

287:                                              ; preds = %281, %278
  br label %288

288:                                              ; preds = %287, %272, %221
  %289 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %290 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @iounmap(i32* %291)
  br label %293

293:                                              ; preds = %288, %168
  %294 = load %struct.resource*, %struct.resource** %8, align 8
  %295 = getelementptr inbounds %struct.resource, %struct.resource* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i64, i64* %10, align 8
  %298 = call i32 @release_mem_region(i32 %296, i64 %297)
  br label %299

299:                                              ; preds = %293, %143, %85, %48
  %300 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %301 = call i32 @platform_set_drvdata(%struct.platform_device* %300, %struct.net_device* null)
  %302 = load %struct.net_device*, %struct.net_device** %4, align 8
  %303 = call i32 @free_netdev(%struct.net_device* %302)
  %304 = load i32, i32* %12, align 4
  store i32 %304, i32* %2, align 4
  br label %305

305:                                              ; preds = %299, %266, %16
  %306 = load i32, i32* %2, align 4
  ret i32 %306
}

declare dso_local %struct.net_device* @ax__alloc_ei_netdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @dev_get_platdata(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @request_mem_region(i32, i64, i32) #1

declare dso_local i8* @ioremap(i32, i64) #1

declare dso_local i32 @ax_init_dev(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
