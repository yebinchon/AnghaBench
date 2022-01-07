; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, i32, %struct.qlcnic_host_tx_ring*, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.qlcnic_recv_context* }
%struct.qlcnic_host_tx_ring = type { i32, i32, i64, i64, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_sds_ring = type { i32, i64, i64 }
%struct.qlcnic_host_rds_ring = type { i32, i64 }

@QLCNIC_ETHTOOL_REGS_VER = common dso_local global i32 0, align 4
@QLCNIC_DEV_INFO_SIZE = common dso_local global i32 0, align 4
@QLCNIC_MGMT_API_VERSION = common dso_local global i32 0, align 4
@QLC_83XX_ESWITCH_CAPABILITY = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@QLCNIC_TX_INTR_NOT_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @qlcnic_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca %struct.qlcnic_recv_context*, align 8
  %9 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %10 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %11 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.qlcnic_adapter* %16, %struct.qlcnic_adapter** %7, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 7
  %19 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %18, align 8
  store %struct.qlcnic_recv_context* %19, %struct.qlcnic_recv_context** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @qlcnic_get_regs_len(%struct.net_device* %23)
  %25 = call i32 @memset(i8* %22, i32 0, i32 %24)
  %26 = load i32, i32* @QLCNIC_ETHTOOL_REGS_VER, align 4
  %27 = shl i32 %26, 24
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 5
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %27, %33
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %36 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %35, i32 0, i32 6
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %34, %39
  %41 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @QLCNIC_DEV_INFO_SIZE, align 4
  %44 = and i32 %43, 65535
  %45 = or i32 -889323520, %44
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @QLCNIC_MGMT_API_VERSION, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %52 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %51, i32 0, i32 5
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @QLC_83XX_ESWITCH_CAPABILITY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %3
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %61 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %60, i32 0, i32 5
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %59, %3
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %69 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @qlcnic_82xx_get_registers(%struct.qlcnic_adapter* %72, i32* %73)
  store i32 %74, i32* %14, align 4
  br label %79

75:                                               ; preds = %67
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @qlcnic_83xx_get_registers(%struct.qlcnic_adapter* %76, i32* %77)
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 4
  %83 = call i32 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %266

86:                                               ; preds = %79
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 -1061461, i32* %91, align 4
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %93 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %94, i32* %99, align 4
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %170, %86
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %103 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %173

106:                                              ; preds = %100
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %108 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %107, i32 0, i32 3
  %109 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %109, i64 %111
  store %struct.qlcnic_host_tx_ring* %112, %struct.qlcnic_host_tx_ring** %11, align 8
  %113 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %11, align 8
  %114 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le32_to_cpu(i32 %116)
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %117, i32* %122, align 4
  %123 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %11, align 8
  %124 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %125, i32* %130, align 4
  %131 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %11, align 8
  %132 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @readl(i64 %133)
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 %134, i32* %139, align 4
  %140 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %11, align 8
  %141 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %11, align 8
  %149 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %106
  %153 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %11, align 8
  %154 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @readl(i64 %155)
  %157 = load i32*, i32** %12, align 8
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %156, i32* %161, align 4
  br label %169

162:                                              ; preds = %106
  %163 = load i32, i32* @QLCNIC_TX_INTR_NOT_CONFIGURED, align 4
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  store i32 %163, i32* %168, align 4
  br label %169

169:                                              ; preds = %162, %152
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %100

173:                                              ; preds = %100
  %174 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %175 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %12, align 8
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  store i32 %176, i32* %181, align 4
  store i32 0, i32* %13, align 4
  br label %182

182:                                              ; preds = %212, %173
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %185 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %215

188:                                              ; preds = %182
  %189 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  %190 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %189, i32 0, i32 1
  %191 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %191, i64 %193
  store %struct.qlcnic_host_rds_ring* %194, %struct.qlcnic_host_rds_ring** %10, align 8
  %195 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %10, align 8
  %196 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @readl(i64 %197)
  %199 = load i32*, i32** %12, align 8
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  store i32 %198, i32* %203, align 4
  %204 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %10, align 8
  %205 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32*, i32** %12, align 8
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %14, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  store i32 %206, i32* %211, align 4
  br label %212

212:                                              ; preds = %188
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %182

215:                                              ; preds = %182
  %216 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %217 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32*, i32** %12, align 8
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %14, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32 %218, i32* %223, align 4
  store i32 0, i32* %13, align 4
  br label %224

224:                                              ; preds = %263, %215
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %227 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %266

230:                                              ; preds = %224
  %231 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  %232 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %231, i32 0, i32 0
  %233 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %232, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %233, i64 %235
  store %struct.qlcnic_host_sds_ring* %236, %struct.qlcnic_host_sds_ring** %9, align 8
  %237 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %238 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @readl(i64 %239)
  %241 = load i32*, i32** %12, align 8
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  store i32 %240, i32* %245, align 4
  %246 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %247 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32*, i32** %12, align 8
  %250 = load i32, i32* %14, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %14, align 4
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i32, i32* %249, i64 %252
  store i32 %248, i32* %253, align 4
  %254 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %255 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @readl(i64 %256)
  %258 = load i32*, i32** %12, align 8
  %259 = load i32, i32* %14, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %14, align 4
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 %257, i32* %262, align 4
  br label %263

263:                                              ; preds = %230
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %224

266:                                              ; preds = %85, %224
  ret void
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @qlcnic_get_regs_len(%struct.net_device*) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_82xx_get_registers(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i32 @qlcnic_83xx_get_registers(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
