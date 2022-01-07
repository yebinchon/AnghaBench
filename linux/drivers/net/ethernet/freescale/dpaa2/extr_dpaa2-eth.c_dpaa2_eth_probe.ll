; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.dpaa2_eth_priv = type { i32, i32, i32*, i32*, i32, i32, %struct.net_device* }

@DPAA2_ETH_MAX_NETDEV_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"alloc_etherdev_mq() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FSL_MC_IO_ATOMIC_CONTEXT_PORTAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"MC portal allocation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"alloc_percpu(percpu_stats) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"alloc_percpu(percpu_extras) failed\0A\00", align 1
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Failed to set link interrupt, fall back to polling\0A\00", align 1
@poll_link_state = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"%s_poll_link\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Error starting polling thread\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"register_netdev() failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Probed interface %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @dpaa2_eth_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_probe(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dpaa2_eth_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  store %struct.net_device* null, %struct.net_device** %5, align 8
  store %struct.dpaa2_eth_priv* null, %struct.dpaa2_eth_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @DPAA2_ETH_MAX_NETDEV_QUEUES, align 4
  %11 = call %struct.net_device* @alloc_etherdev_mq(i32 40, i32 %10)
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %255

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @SET_NETDEV_DEV(%struct.net_device* %20, %struct.device* %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i32 @dev_set_drvdata(%struct.device* %23, %struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %26)
  store %struct.dpaa2_eth_priv* %27, %struct.dpaa2_eth_priv** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %30 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %29, i32 0, i32 6
  store %struct.net_device* %28, %struct.net_device** %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @iommu_get_domain_for_dev(%struct.device* %31)
  %33 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %34 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %36 = load i32, i32* @FSL_MC_IO_ATOMIC_CONTEXT_PORTAL, align 4
  %37 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %38 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %37, i32 0, i32 1
  %39 = call i32 @fsl_mc_portal_allocate(%struct.fsl_mc_device* %35, i32 %36, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %19
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %53

50:                                               ; preds = %42
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %47
  br label %249

54:                                               ; preds = %19
  %55 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %56 = call i32 @setup_dpni(%struct.fsl_mc_device* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %244

60:                                               ; preds = %54
  %61 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %62 = call i32 @setup_dpio(%struct.dpaa2_eth_priv* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %241

66:                                               ; preds = %60
  %67 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %68 = call i32 @setup_fqs(%struct.dpaa2_eth_priv* %67)
  %69 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %70 = call i32 @setup_dpbp(%struct.dpaa2_eth_priv* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %238

74:                                               ; preds = %66
  %75 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %76 = call i32 @bind_dpni(%struct.dpaa2_eth_priv* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %235

80:                                               ; preds = %74
  %81 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %82 = call i32 @add_ch_napi(%struct.dpaa2_eth_priv* %81)
  %83 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %84 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @alloc_percpu(i32 %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %90 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %89, i32 0, i32 2
  store i32* %88, i32** %90, align 8
  %91 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %92 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %80
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %232

100:                                              ; preds = %80
  %101 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %102 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @alloc_percpu(i32 %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %108 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %107, i32 0, i32 3
  store i32* %106, i32** %108, align 8
  %109 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %110 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %100
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %7, align 4
  br label %227

118:                                              ; preds = %100
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = call i32 @netdev_init(%struct.net_device* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %222

124:                                              ; preds = %118
  %125 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %126 = load %struct.net_device*, %struct.net_device** %5, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 @set_rx_csum(%struct.dpaa2_eth_priv* %125, i32 %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %124
  br label %221

139:                                              ; preds = %124
  %140 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %141 = load %struct.net_device*, %struct.net_device** %5, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %145 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %146 = or i32 %144, %145
  %147 = and i32 %143, %146
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i32 @set_tx_csum(%struct.dpaa2_eth_priv* %140, i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %139
  br label %221

156:                                              ; preds = %139
  %157 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %158 = call i32 @alloc_rings(%struct.dpaa2_eth_priv* %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %220

162:                                              ; preds = %156
  %163 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %164 = call i32 @setup_irqs(%struct.fsl_mc_device* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %162
  %168 = load %struct.net_device*, %struct.net_device** %5, align 8
  %169 = call i32 @netdev_warn(%struct.net_device* %168, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i32, i32* @poll_link_state, align 4
  %171 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %172 = load %struct.net_device*, %struct.net_device** %5, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @kthread_run(i32 %170, %struct.dpaa2_eth_priv* %171, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %174)
  %176 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %177 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  %178 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %179 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @IS_ERR(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %167
  %184 = load %struct.device*, %struct.device** %4, align 8
  %185 = call i32 @dev_err(%struct.device* %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %217

186:                                              ; preds = %167
  %187 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %188 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %186, %162
  %190 = load %struct.net_device*, %struct.net_device** %5, align 8
  %191 = call i32 @register_netdev(%struct.net_device* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load %struct.device*, %struct.device** %4, align 8
  %196 = call i32 @dev_err(%struct.device* %195, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %203

197:                                              ; preds = %189
  %198 = load %struct.device*, %struct.device** %4, align 8
  %199 = load %struct.net_device*, %struct.net_device** %5, align 8
  %200 = getelementptr inbounds %struct.net_device, %struct.net_device* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @dev_info(%struct.device* %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %201)
  store i32 0, i32* %2, align 4
  br label %255

203:                                              ; preds = %194
  %204 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %205 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %210 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @kthread_stop(i32 %211)
  br label %216

213:                                              ; preds = %203
  %214 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %215 = call i32 @fsl_mc_free_irqs(%struct.fsl_mc_device* %214)
  br label %216

216:                                              ; preds = %213, %208
  br label %217

217:                                              ; preds = %216, %183
  %218 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %219 = call i32 @free_rings(%struct.dpaa2_eth_priv* %218)
  br label %220

220:                                              ; preds = %217, %161
  br label %221

221:                                              ; preds = %220, %155, %138
  br label %222

222:                                              ; preds = %221, %123
  %223 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %224 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @free_percpu(i32* %225)
  br label %227

227:                                              ; preds = %222, %113
  %228 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %229 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @free_percpu(i32* %230)
  br label %232

232:                                              ; preds = %227, %95
  %233 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %234 = call i32 @del_ch_napi(%struct.dpaa2_eth_priv* %233)
  br label %235

235:                                              ; preds = %232, %79
  %236 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %237 = call i32 @free_dpbp(%struct.dpaa2_eth_priv* %236)
  br label %238

238:                                              ; preds = %235, %73
  %239 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %240 = call i32 @free_dpio(%struct.dpaa2_eth_priv* %239)
  br label %241

241:                                              ; preds = %238, %65
  %242 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %243 = call i32 @free_dpni(%struct.dpaa2_eth_priv* %242)
  br label %244

244:                                              ; preds = %241, %59
  %245 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %246 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @fsl_mc_portal_free(i32 %247)
  br label %249

249:                                              ; preds = %244, %53
  %250 = load %struct.device*, %struct.device** %4, align 8
  %251 = call i32 @dev_set_drvdata(%struct.device* %250, %struct.net_device* null)
  %252 = load %struct.net_device*, %struct.net_device** %5, align 8
  %253 = call i32 @free_netdev(%struct.net_device* %252)
  %254 = load i32, i32* %7, align 4
  store i32 %254, i32* %2, align 4
  br label %255

255:                                              ; preds = %249, %197, %14
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.net_device*) #1

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @iommu_get_domain_for_dev(%struct.device*) #1

declare dso_local i32 @fsl_mc_portal_allocate(%struct.fsl_mc_device*, i32, i32*) #1

declare dso_local i32 @setup_dpni(%struct.fsl_mc_device*) #1

declare dso_local i32 @setup_dpio(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @setup_fqs(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @setup_dpbp(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @bind_dpni(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @add_ch_napi(%struct.dpaa2_eth_priv*) #1

declare dso_local i8* @alloc_percpu(i32) #1

declare dso_local i32 @netdev_init(%struct.net_device*) #1

declare dso_local i32 @set_rx_csum(%struct.dpaa2_eth_priv*, i32) #1

declare dso_local i32 @set_tx_csum(%struct.dpaa2_eth_priv*, i32) #1

declare dso_local i32 @alloc_rings(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @setup_irqs(%struct.fsl_mc_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @kthread_run(i32, %struct.dpaa2_eth_priv*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @fsl_mc_free_irqs(%struct.fsl_mc_device*) #1

declare dso_local i32 @free_rings(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @free_percpu(i32*) #1

declare dso_local i32 @del_ch_napi(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @free_dpbp(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @free_dpio(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @free_dpni(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @fsl_mc_portal_free(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
