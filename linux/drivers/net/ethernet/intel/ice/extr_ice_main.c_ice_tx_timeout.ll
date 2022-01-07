; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { i64, i32, i32, i32*, %struct.ice_ring**, %struct.ice_pf* }
%struct.ice_ring = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ice_pf = type { i32, i32, i64, %struct.ice_hw, i32 }
%struct.ice_hw = type { i32 }
%struct.netdev_queue = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"tx_timeout: no netdev hung queue found\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@QTX_COMM_HEAD_HEAD_M = common dso_local global i64 0, align 8
@QTX_COMM_HEAD_HEAD_S = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"tx_timeout: VSI_num: %d, Q %d, NTC: 0x%x, HW_HEAD: 0x%x, NTU: 0x%x, INT: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"tx_timeout recovery level %d, hung_queue %d\0A\00", align 1
@__ICE_PFR_REQ = common dso_local global i32 0, align 4
@__ICE_CORER_REQ = common dso_local global i32 0, align 4
@__ICE_GLOBR_REQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"tx_timeout recovery unsuccessful, device is in unrecoverable state.\0A\00", align 1
@__ICE_DOWN = common dso_local global i32 0, align 4
@__ICE_NEEDS_RESTART = common dso_local global i32 0, align 4
@__ICE_SERVICE_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ice_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ice_netdev_priv*, align 8
  %4 = alloca %struct.ice_ring*, align 8
  %5 = alloca %struct.ice_vsi*, align 8
  %6 = alloca %struct.ice_pf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca %struct.ice_hw*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.ice_netdev_priv* %15, %struct.ice_netdev_priv** %3, align 8
  store %struct.ice_ring* null, %struct.ice_ring** %4, align 8
  %16 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %16, i32 0, i32 0
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %17, align 8
  store %struct.ice_vsi* %18, %struct.ice_vsi** %5, align 8
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %20 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %19, i32 0, i32 5
  %21 = load %struct.ice_pf*, %struct.ice_pf** %20, align 8
  store %struct.ice_pf* %21, %struct.ice_pf** %6, align 8
  store i32 -1, i32* %7, align 4
  %22 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %23 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %55, %1
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %33, i64 %34)
  store %struct.netdev_queue* %35, %struct.netdev_queue** %10, align 8
  %36 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %37 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %40 = call i64 @netif_xmit_stopped(%struct.netdev_queue* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %44, %47
  %49 = call i64 @time_after(i64 %43, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %7, align 4
  br label %58

54:                                               ; preds = %42, %32
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %26

58:                                               ; preds = %51, %26
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %116

67:                                               ; preds = %58
  store i64 0, i64* %8, align 8
  br label %68

68:                                               ; preds = %112, %67
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %71 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %74, label %115

74:                                               ; preds = %68
  %75 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %76 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %75, i32 0, i32 4
  %77 = load %struct.ice_ring**, %struct.ice_ring*** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.ice_ring*, %struct.ice_ring** %77, i64 %78
  %80 = load %struct.ice_ring*, %struct.ice_ring** %79, align 8
  %81 = icmp ne %struct.ice_ring* %80, null
  br i1 %81, label %82, label %111

82:                                               ; preds = %74
  %83 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %84 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %83, i32 0, i32 4
  %85 = load %struct.ice_ring**, %struct.ice_ring*** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.ice_ring*, %struct.ice_ring** %85, i64 %86
  %88 = load %struct.ice_ring*, %struct.ice_ring** %87, align 8
  %89 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %95 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %94, i32 0, i32 4
  %96 = load %struct.ice_ring**, %struct.ice_ring*** %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.ice_ring*, %struct.ice_ring** %96, i64 %97
  %99 = load %struct.ice_ring*, %struct.ice_ring** %98, align 8
  %100 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %93, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %92
  %104 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %105 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %104, i32 0, i32 4
  %106 = load %struct.ice_ring**, %struct.ice_ring*** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds %struct.ice_ring*, %struct.ice_ring** %106, i64 %107
  %109 = load %struct.ice_ring*, %struct.ice_ring** %108, align 8
  store %struct.ice_ring* %109, %struct.ice_ring** %4, align 8
  br label %115

110:                                              ; preds = %92
  br label %111

111:                                              ; preds = %110, %82, %74
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %8, align 8
  br label %68

115:                                              ; preds = %103, %68
  br label %116

116:                                              ; preds = %115, %64
  %117 = load i64, i64* @jiffies, align 8
  %118 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %119 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @HZ, align 4
  %122 = mul nsw i32 %121, 20
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %120, %123
  %125 = call i64 @time_after(i64 %117, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %116
  %128 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %129 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  br label %143

130:                                              ; preds = %116
  %131 = load i64, i64* @jiffies, align 8
  %132 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %133 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.net_device*, %struct.net_device** %2, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = call i64 @time_before(i64 %131, i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %241

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142, %127
  %144 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %145 = icmp ne %struct.ice_ring* %144, null
  br i1 %145, label %146, label %185

146:                                              ; preds = %143
  %147 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %148 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %147, i32 0, i32 3
  store %struct.ice_hw* %148, %struct.ice_hw** %11, align 8
  store i64 0, i64* %13, align 8
  %149 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %150 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %151 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @QTX_COMM_HEAD(i32 %156)
  %158 = call i64 @rd32(%struct.ice_hw* %149, i32 %157)
  %159 = load i64, i64* @QTX_COMM_HEAD_HEAD_M, align 8
  %160 = and i64 %158, %159
  %161 = load i64, i64* @QTX_COMM_HEAD_HEAD_S, align 8
  %162 = lshr i64 %160, %161
  store i64 %162, i64* %12, align 8
  %163 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %164 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %165 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %164, i32 0, i32 3
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @GLINT_DYN_CTL(i32 %168)
  %170 = call i64 @rd32(%struct.ice_hw* %163, i32 %169)
  store i64 %170, i64* %13, align 8
  %171 = load %struct.net_device*, %struct.net_device** %2, align 8
  %172 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %173 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %177 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %181 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i64, i64* %13, align 8
  %184 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %171, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %174, i32 %175, i32 %178, i64 %179, i32 %182, i64 %183)
  br label %185

185:                                              ; preds = %146, %143
  %186 = load i64, i64* @jiffies, align 8
  %187 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %188 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  %189 = load %struct.net_device*, %struct.net_device** %2, align 8
  %190 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %191 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %189, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %192, i32 %193)
  %195 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %196 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  switch i32 %197, label %216 [
    i32 1, label %198
    i32 2, label %204
    i32 3, label %210
  ]

198:                                              ; preds = %185
  %199 = load i32, i32* @__ICE_PFR_REQ, align 4
  %200 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %201 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @set_bit(i32 %199, i32 %202)
  br label %234

204:                                              ; preds = %185
  %205 = load i32, i32* @__ICE_CORER_REQ, align 4
  %206 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %207 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @set_bit(i32 %205, i32 %208)
  br label %234

210:                                              ; preds = %185
  %211 = load i32, i32* @__ICE_GLOBR_REQ, align 4
  %212 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %213 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @set_bit(i32 %211, i32 %214)
  br label %234

216:                                              ; preds = %185
  %217 = load %struct.net_device*, %struct.net_device** %2, align 8
  %218 = call i32 @netdev_err(%struct.net_device* %217, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %219 = load i32, i32* @__ICE_DOWN, align 4
  %220 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %221 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @set_bit(i32 %219, i32 %222)
  %224 = load i32, i32* @__ICE_NEEDS_RESTART, align 4
  %225 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %226 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @set_bit(i32 %224, i32 %227)
  %229 = load i32, i32* @__ICE_SERVICE_DIS, align 4
  %230 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %231 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @set_bit(i32 %229, i32 %232)
  br label %234

234:                                              ; preds = %216, %210, %204, %198
  %235 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %236 = call i32 @ice_service_task_schedule(%struct.ice_pf* %235)
  %237 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %238 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 8
  br label %241

241:                                              ; preds = %234, %141
  ret void
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i64) #1

declare dso_local i64 @netif_xmit_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i32 @QTX_COMM_HEAD(i32) #1

declare dso_local i32 @GLINT_DYN_CTL(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @ice_service_task_schedule(%struct.ice_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
