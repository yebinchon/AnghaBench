; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_ldmvsw.c_vsw_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_ldmvsw.c_vsw_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32, i32 }
%struct.vio_device_id = type { i32 }
%struct.mdesc_handle = type { i32 }
%struct.vnet_port = type { i32*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.vnet*, %struct.vnet* }
%struct.vnet = type { i32, i32, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32 }

@remote_macaddr_prop = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Port lacks %s property\0A\00", align 1
@id_prop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get vnet for vsw-port\0A\00", align 1
@vsw_port_hwaddr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to alloc netdev for vsw-port\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@VDEV_NETWORK = common dso_local global i32 0, align 4
@vsw_versions = common dso_local global i32 0, align 4
@vsw_vio_ops = common dso_local global i32 0, align 4
@vsw_ldc_cfg = common dso_local global i32 0, align 4
@sunvnet_poll_common = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@sunvnet_clean_timer_expire_common = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot register net device, aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"LDOM vsw-port %pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: PORT ( remote-mac %pM%s )\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" switch-port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*, %struct.vio_device_id*)* @vsw_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsw_port_probe(%struct.vio_dev* %0, %struct.vio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.vio_device_id*, align 8
  %6 = alloca %struct.mdesc_handle*, align 8
  %7 = alloca %struct.vnet_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vnet*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %4, align 8
  store %struct.vio_device_id* %1, %struct.vio_device_id** %5, align 8
  %17 = call %struct.mdesc_handle* (...) @mdesc_grab()
  store %struct.mdesc_handle* %17, %struct.mdesc_handle** %6, align 8
  %18 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %19 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %20 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @remote_macaddr_prop, align 4
  %23 = call i32* @mdesc_get_property(%struct.mdesc_handle* %18, i32 %21, i32 %22, i32* %12)
  store i32* %23, i32** %11, align 8
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @remote_macaddr_prop, align 4
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %32 = call i32 @mdesc_release(%struct.mdesc_handle* %31)
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %3, align 4
  br label %244

34:                                               ; preds = %2
  %35 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %36 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %37 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @id_prop, align 4
  %40 = call i32* @mdesc_get_property(%struct.mdesc_handle* %35, i32 %38, i32 %39, i32* null)
  store i32* %40, i32** %15, align 8
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %14, align 4
  %43 = load i32*, i32** %15, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @id_prop, align 4
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %49 = call i32 @mdesc_release(%struct.mdesc_handle* %48)
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %3, align 4
  br label %244

51:                                               ; preds = %34
  %52 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %53 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %54 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.vnet* @vsw_get_vnet(%struct.mdesc_handle* %52, i32 %55, i32* %16)
  store %struct.vnet* %56, %struct.vnet** %9, align 8
  %57 = load %struct.vnet*, %struct.vnet** %9, align 8
  %58 = call i64 @IS_ERR(%struct.vnet* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.vnet*, %struct.vnet** %9, align 8
  %62 = call i32 @PTR_ERR(%struct.vnet* %61)
  store i32 %62, i32* %14, align 4
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %65 = call i32 @mdesc_release(%struct.mdesc_handle* %64)
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %3, align 4
  br label %244

67:                                               ; preds = %51
  %68 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %69 = call i32 @mdesc_release(%struct.mdesc_handle* %68)
  %70 = load i32, i32* @vsw_port_hwaddr, align 4
  %71 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.vnet* @vsw_alloc_netdev(i32 %70, %struct.vio_dev* %71, i32 %72, i32 %74)
  %76 = bitcast %struct.vnet* %75 to %struct.net_device*
  store %struct.net_device* %76, %struct.net_device** %10, align 8
  %77 = load %struct.net_device*, %struct.net_device** %10, align 8
  %78 = bitcast %struct.net_device* %77 to %struct.vnet*
  %79 = call i64 @IS_ERR(%struct.vnet* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %67
  %82 = load %struct.net_device*, %struct.net_device** %10, align 8
  %83 = bitcast %struct.net_device* %82 to %struct.vnet*
  %84 = call i32 @PTR_ERR(%struct.vnet* %83)
  store i32 %84, i32* %14, align 4
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %3, align 4
  br label %244

87:                                               ; preds = %67
  %88 = load %struct.net_device*, %struct.net_device** %10, align 8
  %89 = bitcast %struct.net_device* %88 to %struct.vnet*
  %90 = call %struct.vnet_port* @netdev_priv(%struct.vnet* %89)
  store %struct.vnet_port* %90, %struct.vnet_port** %7, align 8
  %91 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %92 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %91, i32 0, i32 6
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %112, %87
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 5, %101
  %103 = mul nsw i32 %102, 8
  %104 = ashr i32 %100, %103
  %105 = and i32 %104, 255
  %106 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %107 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  br label %112

112:                                              ; preds = %98
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %94

115:                                              ; preds = %94
  %116 = load %struct.vnet*, %struct.vnet** %9, align 8
  %117 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %118 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %117, i32 0, i32 10
  store %struct.vnet* %116, %struct.vnet** %118, align 8
  %119 = load %struct.net_device*, %struct.net_device** %10, align 8
  %120 = bitcast %struct.net_device* %119 to %struct.vnet*
  %121 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %122 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %121, i32 0, i32 9
  store %struct.vnet* %120, %struct.vnet** %122, align 8
  %123 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %124 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %123, i32 0, i32 1
  store i32 1, i32* %124, align 8
  %125 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %126 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %125, i32 0, i32 2
  store i32 0, i32* %126, align 4
  %127 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %128 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %127, i32 0, i32 8
  store i64 0, i64* %128, align 8
  %129 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %130 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %129, i32 0, i32 3
  store i32 1, i32* %130, align 8
  %131 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %132 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %131, i32 0, i32 4
  %133 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %134 = load i32, i32* @VDEV_NETWORK, align 4
  %135 = load i32, i32* @vsw_versions, align 4
  %136 = load i32, i32* @vsw_versions, align 4
  %137 = call i32 @ARRAY_SIZE(i32 %136)
  %138 = load %struct.net_device*, %struct.net_device** %10, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @vio_driver_init(i32* %132, %struct.vio_dev* %133, i32 %134, i32 %135, i32 %137, i32* @vsw_vio_ops, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %115
  br label %239

145:                                              ; preds = %115
  %146 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %147 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %146, i32 0, i32 4
  %148 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %149 = call i32 @vio_ldc_alloc(i32* %147, i32* @vsw_ldc_cfg, %struct.vnet_port* %148)
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %239

153:                                              ; preds = %145
  %154 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %155 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %154, i32 0, i32 0
  %156 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %157 = call i32 @dev_set_drvdata(i32* %155, %struct.vnet_port* %156)
  %158 = load %struct.net_device*, %struct.net_device** %10, align 8
  %159 = bitcast %struct.net_device* %158 to %struct.vnet*
  %160 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %161 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %160, i32 0, i32 5
  %162 = load i32, i32* @sunvnet_poll_common, align 4
  %163 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %164 = call i32 @netif_napi_add(%struct.vnet* %159, i32* %161, i32 %162, i32 %163)
  %165 = load %struct.vnet*, %struct.vnet** %9, align 8
  %166 = getelementptr inbounds %struct.vnet, %struct.vnet* %165, i32 0, i32 2
  %167 = load i64, i64* %8, align 8
  %168 = call i32 @spin_lock_irqsave(i32* %166, i64 %167)
  %169 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %170 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %169, i32 0, i32 6
  %171 = load %struct.vnet*, %struct.vnet** %9, align 8
  %172 = getelementptr inbounds %struct.vnet, %struct.vnet* %171, i32 0, i32 3
  %173 = call i32 @list_add_rcu(i32* %170, i32* %172)
  %174 = load %struct.vnet*, %struct.vnet** %9, align 8
  %175 = getelementptr inbounds %struct.vnet, %struct.vnet* %174, i32 0, i32 2
  %176 = load i64, i64* %8, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  %178 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %179 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %178, i32 0, i32 7
  %180 = load i32, i32* @sunvnet_clean_timer_expire_common, align 4
  %181 = call i32 @timer_setup(i32* %179, i32 %180, i32 0)
  %182 = load %struct.net_device*, %struct.net_device** %10, align 8
  %183 = bitcast %struct.net_device* %182 to %struct.vnet*
  %184 = call i32 @register_netdev(%struct.vnet* %183)
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %153
  %188 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %222

189:                                              ; preds = %153
  %190 = load %struct.vnet*, %struct.vnet** %9, align 8
  %191 = getelementptr inbounds %struct.vnet, %struct.vnet* %190, i32 0, i32 2
  %192 = load i64, i64* %8, align 8
  %193 = call i32 @spin_lock_irqsave(i32* %191, i64 %192)
  %194 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %195 = call i32 @sunvnet_port_add_txq_common(%struct.vnet_port* %194)
  %196 = load %struct.vnet*, %struct.vnet** %9, align 8
  %197 = getelementptr inbounds %struct.vnet, %struct.vnet* %196, i32 0, i32 2
  %198 = load i64, i64* %8, align 8
  %199 = call i32 @spin_unlock_irqrestore(i32* %197, i64 %198)
  %200 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %201 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %200, i32 0, i32 5
  %202 = call i32 @napi_enable(i32* %201)
  %203 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %204 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %203, i32 0, i32 4
  %205 = call i32 @vio_port_up(i32* %204)
  %206 = load %struct.net_device*, %struct.net_device** %10, align 8
  %207 = bitcast %struct.net_device* %206 to %struct.vnet*
  %208 = call i32 @netif_carrier_off(%struct.vnet* %207)
  %209 = load %struct.net_device*, %struct.net_device** %10, align 8
  %210 = bitcast %struct.net_device* %209 to %struct.vnet*
  %211 = load %struct.net_device*, %struct.net_device** %10, align 8
  %212 = getelementptr inbounds %struct.net_device, %struct.net_device* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @netdev_info(%struct.vnet* %210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %213)
  %215 = load %struct.net_device*, %struct.net_device** %10, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %219 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %217, i32* %220, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %244

222:                                              ; preds = %187
  %223 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %224 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %223, i32 0, i32 7
  %225 = call i32 @del_timer_sync(i32* %224)
  %226 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %227 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %226, i32 0, i32 6
  %228 = call i32 @list_del_rcu(i32* %227)
  %229 = call i32 (...) @synchronize_rcu()
  %230 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %231 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %230, i32 0, i32 5
  %232 = call i32 @netif_napi_del(i32* %231)
  %233 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %234 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %233, i32 0, i32 0
  %235 = call i32 @dev_set_drvdata(i32* %234, %struct.vnet_port* null)
  %236 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %237 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %236, i32 0, i32 4
  %238 = call i32 @vio_ldc_free(i32* %237)
  br label %239

239:                                              ; preds = %222, %152, %144
  %240 = load %struct.net_device*, %struct.net_device** %10, align 8
  %241 = bitcast %struct.net_device* %240 to %struct.vnet*
  %242 = call i32 @free_netdev(%struct.vnet* %241)
  %243 = load i32, i32* %14, align 4
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %239, %189, %81, %60, %45, %28
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local %struct.mdesc_handle* @mdesc_grab(...) #1

declare dso_local i32* @mdesc_get_property(%struct.mdesc_handle*, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mdesc_release(%struct.mdesc_handle*) #1

declare dso_local %struct.vnet* @vsw_get_vnet(%struct.mdesc_handle*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.vnet*) #1

declare dso_local i32 @PTR_ERR(%struct.vnet*) #1

declare dso_local %struct.vnet* @vsw_alloc_netdev(i32, %struct.vio_dev*, i32, i32) #1

declare dso_local %struct.vnet_port* @netdev_priv(%struct.vnet*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vio_driver_init(i32*, %struct.vio_dev*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @vio_ldc_alloc(i32*, i32*, %struct.vnet_port*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.vnet_port*) #1

declare dso_local i32 @netif_napi_add(%struct.vnet*, i32*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.vnet*) #1

declare dso_local i32 @sunvnet_port_add_txq_common(%struct.vnet_port*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @vio_port_up(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.vnet*) #1

declare dso_local i32 @netdev_info(%struct.vnet*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32*, i8*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @vio_ldc_free(i32*) #1

declare dso_local i32 @free_netdev(%struct.vnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
