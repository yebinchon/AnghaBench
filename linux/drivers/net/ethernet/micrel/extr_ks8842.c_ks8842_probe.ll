; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8842.c_ks8842_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8842.c_ks8842_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.resource = type { i32, i32 }
%struct.net_device = type { i32, i32, i32, i32*, i32* }
%struct.ks8842_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_7__*, i32, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ks8842_platform_data = type { i32, i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@ks8842_tx_timeout_work = common dso_local global i32 0, align 4
@MICREL_KS884X = common dso_local global i32 0, align 4
@ks8842_tasklet = common dso_local global i32 0, align 4
@ks8842_netdev_ops = common dso_local global i32 0, align 4
@ks8842_ethtool_ops = common dso_local global i32 0, align 4
@REG_SW_ID_AND_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Found chip, family: 0x%x, id: 0x%x, rev: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ks8842_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8842_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ks8842_adapter*, align 8
  %8 = alloca %struct.ks8842_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.ks8842_platform_data* @dev_get_platdata(%struct.TYPE_7__* %14)
  store %struct.ks8842_platform_data* %15, %struct.ks8842_platform_data** %8, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %5, align 8
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @resource_size(%struct.resource* %22)
  %24 = load i32, i32* @DRV_NAME, align 4
  %25 = call i32 @request_mem_region(i32 %21, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %257

28:                                               ; preds = %1
  %29 = call %struct.net_device* @alloc_etherdev(i32 56)
  store %struct.net_device* %29, %struct.net_device** %6, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %250

33:                                               ; preds = %28
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @SET_NETDEV_DEV(%struct.net_device* %34, %struct.TYPE_7__* %36)
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = call %struct.ks8842_adapter* @netdev_priv(%struct.net_device* %38)
  store %struct.ks8842_adapter* %39, %struct.ks8842_adapter** %7, align 8
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %41, i32 0, i32 9
  store %struct.net_device* %40, %struct.net_device** %42, align 8
  %43 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %44 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %43, i32 0, i32 8
  %45 = load i32, i32* @ks8842_tx_timeout_work, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load %struct.resource*, %struct.resource** %5, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.resource*, %struct.resource** %5, align 8
  %51 = call i32 @resource_size(%struct.resource* %50)
  %52 = call i32 @ioremap(i32 %49, i32 %51)
  %53 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %54 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %59 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %61 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %33
  br label %247

65:                                               ; preds = %33
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = call i32 @platform_get_irq(%struct.platform_device* %66, i32 0)
  %68 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %69 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %71 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %76 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %4, align 4
  br label %242

78:                                               ; preds = %65
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  br label %92

89:                                               ; preds = %78
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi %struct.TYPE_7__* [ %88, %84 ], [ %91, %89 ]
  %94 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %95 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %94, i32 0, i32 7
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %95, align 8
  %96 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %97 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MICREL_KS884X, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %128, label %102

102:                                              ; preds = %92
  %103 = load %struct.ks8842_platform_data*, %struct.ks8842_platform_data** %8, align 8
  %104 = icmp ne %struct.ks8842_platform_data* %103, null
  br i1 %104, label %105, label %128

105:                                              ; preds = %102
  %106 = load %struct.ks8842_platform_data*, %struct.ks8842_platform_data** %8, align 8
  %107 = getelementptr inbounds %struct.ks8842_platform_data, %struct.ks8842_platform_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = load %struct.ks8842_platform_data*, %struct.ks8842_platform_data** %8, align 8
  %112 = getelementptr inbounds %struct.ks8842_platform_data, %struct.ks8842_platform_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load %struct.ks8842_platform_data*, %struct.ks8842_platform_data** %8, align 8
  %117 = getelementptr inbounds %struct.ks8842_platform_data, %struct.ks8842_platform_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %120 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.ks8842_platform_data*, %struct.ks8842_platform_data** %8, align 8
  %123 = getelementptr inbounds %struct.ks8842_platform_data, %struct.ks8842_platform_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %126 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  br label %135

128:                                              ; preds = %110, %105, %102, %92
  %129 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %130 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32 -1, i32* %131, align 8
  %132 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %133 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i32 -1, i32* %134, align 4
  br label %135

135:                                              ; preds = %128, %115
  %136 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %137 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %136, i32 0, i32 4
  %138 = load i32, i32* @ks8842_tasklet, align 4
  %139 = load %struct.net_device*, %struct.net_device** %6, align 8
  %140 = ptrtoint %struct.net_device* %139 to i64
  %141 = call i32 @tasklet_init(i32* %137, i32 %138, i64 %140)
  %142 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %143 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %142, i32 0, i32 3
  %144 = call i32 @spin_lock_init(i32* %143)
  %145 = load %struct.net_device*, %struct.net_device** %6, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 4
  store i32* @ks8842_netdev_ops, i32** %146, align 8
  %147 = load %struct.net_device*, %struct.net_device** %6, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 3
  store i32* @ks8842_ethtool_ops, i32** %148, align 8
  %149 = load %struct.net_device*, %struct.net_device** %6, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %10, align 4
  %152 = load %struct.ks8842_platform_data*, %struct.ks8842_platform_data** %8, align 8
  %153 = icmp ne %struct.ks8842_platform_data* %152, null
  br i1 %153, label %154, label %193

154:                                              ; preds = %135
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %172, %154
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.net_device*, %struct.net_device** %6, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ult i32 %156, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %155
  %162 = load %struct.ks8842_platform_data*, %struct.ks8842_platform_data** %8, align 8
  %163 = getelementptr inbounds %struct.ks8842_platform_data, %struct.ks8842_platform_data* %162, i32 0, i32 2
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %175

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %10, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %155

175:                                              ; preds = %170, %155
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.net_device*, %struct.net_device** %6, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ult i32 %176, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  %182 = load %struct.net_device*, %struct.net_device** %6, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.ks8842_platform_data*, %struct.ks8842_platform_data** %8, align 8
  %186 = getelementptr inbounds %struct.ks8842_platform_data, %struct.ks8842_platform_data* %185, i32 0, i32 2
  %187 = load i64*, i64** %186, align 8
  %188 = load %struct.net_device*, %struct.net_device** %6, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @memcpy(i32 %184, i64* %187, i32 %190)
  br label %192

192:                                              ; preds = %181, %175
  br label %193

193:                                              ; preds = %192, %135
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.net_device*, %struct.net_device** %6, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %194, %197
  br i1 %198, label %199, label %214

199:                                              ; preds = %193
  %200 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %201 = load %struct.net_device*, %struct.net_device** %6, align 8
  %202 = getelementptr inbounds %struct.net_device, %struct.net_device* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @ks8842_read_mac_addr(%struct.ks8842_adapter* %200, i32 %203)
  %205 = load %struct.net_device*, %struct.net_device** %6, align 8
  %206 = getelementptr inbounds %struct.net_device, %struct.net_device* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @is_valid_ether_addr(i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %199
  %211 = load %struct.net_device*, %struct.net_device** %6, align 8
  %212 = call i32 @eth_hw_addr_random(%struct.net_device* %211)
  br label %213

213:                                              ; preds = %210, %199
  br label %214

214:                                              ; preds = %213, %193
  %215 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %216 = load i32, i32* @REG_SW_ID_AND_ENABLE, align 4
  %217 = call i32 @ks8842_read16(%struct.ks8842_adapter* %215, i32 32, i32 %216)
  store i32 %217, i32* %9, align 4
  %218 = load %struct.net_device*, %struct.net_device** %6, align 8
  %219 = getelementptr inbounds %struct.net_device, %struct.net_device* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @strcpy(i32 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %222 = load %struct.net_device*, %struct.net_device** %6, align 8
  %223 = call i32 @register_netdev(%struct.net_device* %222)
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* %4, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %214
  br label %241

227:                                              ; preds = %214
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = load %struct.net_device*, %struct.net_device** %6, align 8
  %230 = call i32 @platform_set_drvdata(%struct.platform_device* %228, %struct.net_device* %229)
  %231 = load i32, i32* %9, align 4
  %232 = ashr i32 %231, 8
  %233 = and i32 %232, 255
  %234 = load i32, i32* %9, align 4
  %235 = ashr i32 %234, 4
  %236 = and i32 %235, 15
  %237 = load i32, i32* %9, align 4
  %238 = ashr i32 %237, 1
  %239 = and i32 %238, 7
  %240 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %233, i32 %236, i32 %239)
  store i32 0, i32* %2, align 4
  br label %259

241:                                              ; preds = %226
  br label %242

242:                                              ; preds = %241, %74
  %243 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %7, align 8
  %244 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @iounmap(i32 %245)
  br label %247

247:                                              ; preds = %242, %64
  %248 = load %struct.net_device*, %struct.net_device** %6, align 8
  %249 = call i32 @free_netdev(%struct.net_device* %248)
  br label %250

250:                                              ; preds = %247, %32
  %251 = load %struct.resource*, %struct.resource** %5, align 8
  %252 = getelementptr inbounds %struct.resource, %struct.resource* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.resource*, %struct.resource** %5, align 8
  %255 = call i32 @resource_size(%struct.resource* %254)
  %256 = call i32 @release_mem_region(i32 %253, i32 %255)
  br label %257

257:                                              ; preds = %250, %27
  %258 = load i32, i32* %4, align 4
  store i32 %258, i32* %2, align 4
  br label %259

259:                                              ; preds = %257, %227
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local %struct.ks8842_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_7__*) #1

declare dso_local %struct.ks8842_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @ks8842_read_mac_addr(%struct.ks8842_adapter*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @ks8842_read16(%struct.ks8842_adapter*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
