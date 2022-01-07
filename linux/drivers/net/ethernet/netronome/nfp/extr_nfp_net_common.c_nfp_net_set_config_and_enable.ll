; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_config_and_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_config_and_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_3__ = type { i32 }

@NFP_NET_CFG_CTRL_RSS_ANY = common dso_local global i32 0, align 4
@NFP_NET_CFG_RSS_CTRL = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_RSS = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_IRQMOD = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_IRQMOD = common dso_local global i32 0, align 4
@NFP_NET_CFG_TXRS_ENABLE = common dso_local global i32 0, align 4
@NFP_NET_CFG_RXRS_ENABLE = common dso_local global i32 0, align 4
@NFP_NET_CFG_MTU = common dso_local global i32 0, align 4
@NFP_NET_RX_BUF_NON_DATA = common dso_local global i32 0, align 4
@NFP_NET_CFG_FLBUFSZ = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_ENABLE = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_GEN = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_MSIX = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_RING = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_RINGCFG = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_VXLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*)* @nfp_net_set_config_and_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_set_config_and_enable(%struct.nfp_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NFP_NET_CFG_CTRL_RSS_ANY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %22 = call i32 @nfp_net_rss_write_key(%struct.nfp_net* %21)
  %23 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %24 = call i32 @nfp_net_rss_write_itbl(%struct.nfp_net* %23)
  %25 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %26 = load i32, i32* @NFP_NET_CFG_RSS_CTRL, align 4
  %27 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %28 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nn_writel(%struct.nfp_net* %25, i32 %26, i32 %29)
  %31 = load i32, i32* @NFP_NET_CFG_UPDATE_RSS, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %20, %1
  %35 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %36 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NFP_NET_CFG_CTRL_IRQMOD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %44 = call i32 @nfp_net_coalesce_write_cfg(%struct.nfp_net* %43)
  %45 = load i32, i32* @NFP_NET_CFG_UPDATE_IRQMOD, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %42, %34
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %67, %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %52 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %50, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %58 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %59 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @nfp_net_tx_ring_hw_cfg_write(%struct.nfp_net* %57, i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %49

70:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %89, %70
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %74 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ult i32 %72, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %71
  %79 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %80 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %81 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 7
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @nfp_net_rx_ring_hw_cfg_write(%struct.nfp_net* %79, i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %71

92:                                               ; preds = %71
  %93 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %94 = load i32, i32* @NFP_NET_CFG_TXRS_ENABLE, align 4
  %95 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %96 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 64
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %109

101:                                              ; preds = %92
  %102 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %103 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 1, %105
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  br label %109

109:                                              ; preds = %101, %100
  %110 = phi i64 [ -1, %100 ], [ %108, %101 ]
  %111 = trunc i64 %110 to i32
  %112 = call i32 @nn_writeq(%struct.nfp_net* %93, i32 %94, i32 %111)
  %113 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %114 = load i32, i32* @NFP_NET_CFG_RXRS_ENABLE, align 4
  %115 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %116 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 64
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %129

121:                                              ; preds = %109
  %122 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %123 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = shl i32 1, %125
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  br label %129

129:                                              ; preds = %121, %120
  %130 = phi i64 [ -1, %120 ], [ %128, %121 ]
  %131 = trunc i64 %130 to i32
  %132 = call i32 @nn_writeq(%struct.nfp_net* %113, i32 %114, i32 %131)
  %133 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %134 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = icmp ne %struct.TYPE_3__* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %129
  %139 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %140 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %141 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 6
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @nfp_net_write_mac_addr(%struct.nfp_net* %139, i32 %145)
  br label %147

147:                                              ; preds = %138, %129
  %148 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %149 = load i32, i32* @NFP_NET_CFG_MTU, align 4
  %150 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %151 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @nn_writel(%struct.nfp_net* %148, i32 %149, i32 %153)
  %155 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %156 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %160 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %158, %162
  %164 = load i32, i32* @NFP_NET_RX_BUF_NON_DATA, align 4
  %165 = sub nsw i32 %163, %164
  store i32 %165, i32* %4, align 4
  %166 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %167 = load i32, i32* @NFP_NET_CFG_FLBUFSZ, align 4
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @nn_writel(%struct.nfp_net* %166, i32 %167, i32 %168)
  %170 = load i32, i32* @NFP_NET_CFG_CTRL_ENABLE, align 4
  %171 = load i32, i32* %5, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* @NFP_NET_CFG_UPDATE_GEN, align 4
  %174 = load i32, i32* %6, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* @NFP_NET_CFG_UPDATE_MSIX, align 4
  %177 = load i32, i32* %6, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* @NFP_NET_CFG_UPDATE_RING, align 4
  %180 = load i32, i32* %6, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %6, align 4
  %182 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %183 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @NFP_NET_CFG_CTRL_RINGCFG, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %147
  %189 = load i32, i32* @NFP_NET_CFG_CTRL_RINGCFG, align 4
  %190 = load i32, i32* %5, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %188, %147
  %193 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %194 = load i32, i32* @NFP_NET_CFG_CTRL, align 4
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @nn_writel(%struct.nfp_net* %193, i32 %194, i32 %195)
  %197 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @nfp_net_reconfig(%struct.nfp_net* %197, i32 %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %192
  %203 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %204 = call i32 @nfp_net_clear_config_and_disable(%struct.nfp_net* %203)
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %2, align 4
  br label %253

206:                                              ; preds = %192
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %209 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 8
  store i32 0, i32* %7, align 4
  br label %211

211:                                              ; preds = %229, %206
  %212 = load i32, i32* %7, align 4
  %213 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %214 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = icmp ult i32 %212, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %211
  %219 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %220 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %219, i32 0, i32 2
  %221 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %222 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 7
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %7, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = call i32 @nfp_net_rx_ring_fill_freelist(%struct.TYPE_4__* %220, i32* %227)
  br label %229

229:                                              ; preds = %218
  %230 = load i32, i32* %7, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %7, align 4
  br label %211

232:                                              ; preds = %211
  %233 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %234 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @NFP_NET_CFG_CTRL_VXLAN, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %232
  %241 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %242 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %241, i32 0, i32 4
  %243 = call i32 @memset(i32* %242, i32 0, i32 4)
  %244 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %245 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %244, i32 0, i32 3
  %246 = call i32 @memset(i32* %245, i32 0, i32 4)
  %247 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %248 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 6
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %249, align 8
  %251 = call i32 @udp_tunnel_get_rx_info(%struct.TYPE_3__* %250)
  br label %252

252:                                              ; preds = %240, %232
  store i32 0, i32* %2, align 4
  br label %253

253:                                              ; preds = %252, %202
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i32 @nfp_net_rss_write_key(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_rss_write_itbl(%struct.nfp_net*) #1

declare dso_local i32 @nn_writel(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nfp_net_coalesce_write_cfg(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_tx_ring_hw_cfg_write(%struct.nfp_net*, i32*, i32) #1

declare dso_local i32 @nfp_net_rx_ring_hw_cfg_write(%struct.nfp_net*, i32*, i32) #1

declare dso_local i32 @nn_writeq(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nfp_net_write_mac_addr(%struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_net_reconfig(%struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_net_clear_config_and_disable(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_rx_ring_fill_freelist(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @udp_tunnel_get_rx_info(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
