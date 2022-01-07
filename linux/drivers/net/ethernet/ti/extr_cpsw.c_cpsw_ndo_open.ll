; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_priv = type { i32, i32, i64, %struct.net_device*, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32, %struct.cpsw_priv* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cpsw_common = type { i32, i32, i64, %struct.net_device*, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32, %struct.cpsw_common* }
%struct.ethtool_coalesce = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"cannot set real number of tx queues\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot set real number of rx queues\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"initializing cpsw version %d.%d (%d)\0A\00", align 1
@cpsw_slave_open = common dso_local global i32 0, align 4
@ALE_ALL_PORTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"error registering cpts device\0A\00", align 1
@cpsw_slave_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cpsw_ndo_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ndo_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cpsw_priv*, align 8
  %5 = alloca %struct.cpsw_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethtool_coalesce, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.cpsw_priv* %10, %struct.cpsw_priv** %4, align 8
  %11 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %12 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %11, i32 0, i32 17
  %13 = load %struct.cpsw_priv*, %struct.cpsw_priv** %12, align 8
  %14 = bitcast %struct.cpsw_priv* %13 to %struct.cpsw_common*
  store %struct.cpsw_common* %14, %struct.cpsw_common** %5, align 8
  %15 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %16 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %23 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pm_runtime_put_noidle(i32 %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %233

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netif_carrier_off(%struct.net_device* %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %32 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %39 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %205

42:                                               ; preds = %27
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %45 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %52 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %205

55:                                               ; preds = %42
  %56 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %57 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %60 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @CPSW_MAJOR_VERSION(i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @CPSW_MINOR_VERSION(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @CPSW_RTL_VERSION(i32 %66)
  %68 = call i32 @dev_info(i32 %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %65, i32 %67)
  %69 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %70 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %55
  %74 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %75 = call i32 @cpsw_init_host_port(%struct.cpsw_priv* %74)
  br label %76

76:                                               ; preds = %73, %55
  %77 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %78 = load i32, i32* @cpsw_slave_open, align 4
  %79 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %80 = call i32 @for_each_slave(%struct.cpsw_priv* %77, i32 %78, %struct.cpsw_priv* %79)
  %81 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %82 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %81, i32 0, i32 12
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %76
  %87 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %88 = call i32 @cpsw_add_default_vlan(%struct.cpsw_priv* %87)
  br label %100

89:                                               ; preds = %76
  %90 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %91 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %90, i32 0, i32 13
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %94 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %93, i32 0, i32 12
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ALE_ALL_PORTS, align 4
  %98 = load i32, i32* @ALE_ALL_PORTS, align 4
  %99 = call i32 @cpsw_ale_add_vlan(i32 %92, i32 %96, i32 %97, i32 %98, i32 0, i32 0)
  br label %100

100:                                              ; preds = %89, %86
  %101 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %102 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %179, label %105

105:                                              ; preds = %100
  %106 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %107 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %106, i32 0, i32 11
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = call i32 @writel_relaxed(i32 0, i32* %109)
  %111 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %112 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %111, i32 0, i32 11
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = call i32 @writel_relaxed(i32 7, i32* %114)
  %116 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %117 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %116, i32 0, i32 11
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = call i32 @writel(i32 7, i32* %119)
  %121 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %122 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %121, i32 0, i32 10
  %123 = call i32 @napi_enable(i32* %122)
  %124 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %125 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %124, i32 0, i32 9
  %126 = call i32 @napi_enable(i32* %125)
  %127 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %128 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %105
  %132 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %133 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %135 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %134, i32 0, i32 8
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @enable_irq(i32 %138)
  br label %140

140:                                              ; preds = %131, %105
  %141 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %142 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %147 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %146, i32 0, i32 1
  store i32 0, i32* %147, align 4
  %148 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %149 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %148, i32 0, i32 8
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @enable_irq(i32 %152)
  br label %154

154:                                              ; preds = %145, %140
  %155 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %156 = bitcast %struct.cpsw_common* %155 to %struct.cpsw_priv*
  %157 = call i32 @cpsw_create_xdp_rxqs(%struct.cpsw_priv* %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %205

161:                                              ; preds = %154
  %162 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %163 = call i32 @cpsw_fill_rx_channels(%struct.cpsw_priv* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %205

167:                                              ; preds = %161
  %168 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %169 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @cpts_register(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %175 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @dev_err(i32 %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %178

178:                                              ; preds = %173, %167
  br label %179

179:                                              ; preds = %178, %100
  %180 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %181 = call i32 @cpsw_restore(%struct.cpsw_priv* %180)
  %182 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %183 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %188 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 0
  store i64 %189, i64* %190, align 8
  %191 = load %struct.net_device*, %struct.net_device** %3, align 8
  %192 = call i32 @cpsw_set_coalesce(%struct.net_device* %191, %struct.ethtool_coalesce* %8)
  br label %193

193:                                              ; preds = %186, %179
  %194 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %195 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @cpdma_ctlr_start(i32 %196)
  %198 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %199 = bitcast %struct.cpsw_common* %198 to %struct.cpsw_priv*
  %200 = call i32 @cpsw_intr_enable(%struct.cpsw_priv* %199)
  %201 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %202 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 8
  store i32 0, i32* %2, align 4
  br label %233

205:                                              ; preds = %166, %160, %50, %37
  %206 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %207 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %205
  %211 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %212 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @cpdma_ctlr_stop(i32 %213)
  %215 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %216 = bitcast %struct.cpsw_common* %215 to %struct.cpsw_priv*
  %217 = call i32 @cpsw_destroy_xdp_rxqs(%struct.cpsw_priv* %216)
  br label %218

218:                                              ; preds = %210, %205
  %219 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %220 = load i32, i32* @cpsw_slave_stop, align 4
  %221 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %222 = bitcast %struct.cpsw_common* %221 to %struct.cpsw_priv*
  %223 = call i32 @for_each_slave(%struct.cpsw_priv* %219, i32 %220, %struct.cpsw_priv* %222)
  %224 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %225 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @pm_runtime_put_sync(i32 %226)
  %228 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %229 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %228, i32 0, i32 3
  %230 = load %struct.net_device*, %struct.net_device** %229, align 8
  %231 = call i32 @netif_carrier_off(%struct.net_device* %230)
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %218, %193, %21
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @CPSW_MAJOR_VERSION(i32) #1

declare dso_local i32 @CPSW_MINOR_VERSION(i32) #1

declare dso_local i32 @CPSW_RTL_VERSION(i32) #1

declare dso_local i32 @cpsw_init_host_port(%struct.cpsw_priv*) #1

declare dso_local i32 @for_each_slave(%struct.cpsw_priv*, i32, %struct.cpsw_priv*) #1

declare dso_local i32 @cpsw_add_default_vlan(%struct.cpsw_priv*) #1

declare dso_local i32 @cpsw_ale_add_vlan(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @cpsw_create_xdp_rxqs(%struct.cpsw_priv*) #1

declare dso_local i32 @cpsw_fill_rx_channels(%struct.cpsw_priv*) #1

declare dso_local i64 @cpts_register(i32) #1

declare dso_local i32 @cpsw_restore(%struct.cpsw_priv*) #1

declare dso_local i32 @cpsw_set_coalesce(%struct.net_device*, %struct.ethtool_coalesce*) #1

declare dso_local i32 @cpdma_ctlr_start(i32) #1

declare dso_local i32 @cpsw_intr_enable(%struct.cpsw_priv*) #1

declare dso_local i32 @cpdma_ctlr_stop(i32) #1

declare dso_local i32 @cpsw_destroy_xdp_rxqs(%struct.cpsw_priv*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
