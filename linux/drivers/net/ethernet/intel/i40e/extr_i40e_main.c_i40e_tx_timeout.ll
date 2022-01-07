; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i32, i32, %struct.i40e_ring**, %struct.i40e_pf* }
%struct.i40e_ring = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.i40e_pf = type { i32, i32, i32, i64, i32, i32 }
%struct.netdev_queue = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"tx_timeout: no netdev hung queue found\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@__I40E_TIMEOUT_RECOVERY_PENDING = common dso_local global i32 0, align 4
@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"tx_timeout: VSI_seid: %d, Q %d, NTC: 0x%x, HWB: 0x%x, NTU: 0x%x, TAIL: 0x%x, INT: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"tx_timeout recovery level %d, hung_queue %d\0A\00", align 1
@__I40E_PF_RESET_REQUESTED = common dso_local global i32 0, align 4
@__I40E_CORE_RESET_REQUESTED = common dso_local global i32 0, align 4
@__I40E_GLOBAL_RESET_REQUESTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"tx_timeout recovery unsuccessful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @i40e_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.i40e_netdev_priv*, align 8
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netdev_queue*, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.i40e_netdev_priv* %14, %struct.i40e_netdev_priv** %3, align 8
  %15 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %15, i32 0, i32 0
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %16, align 8
  store %struct.i40e_vsi* %17, %struct.i40e_vsi** %4, align 8
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %18, i32 0, i32 3
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %19, align 8
  store %struct.i40e_pf* %20, %struct.i40e_pf** %5, align 8
  store %struct.i40e_ring* null, %struct.i40e_ring** %6, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %53, %1
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %32, i32 %33)
  store %struct.netdev_queue* %34, %struct.netdev_queue** %11, align 8
  %35 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %36 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  %38 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %39 = call i64 @netif_xmit_stopped(%struct.netdev_queue* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = call i64 @time_after(i64 %42, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %8, align 4
  br label %56

52:                                               ; preds = %41, %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %25

56:                                               ; preds = %50, %25
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %118

65:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %114, %65
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %69 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ult i32 %67, %70
  br i1 %71, label %72, label %117

72:                                               ; preds = %66
  %73 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %74 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %73, i32 0, i32 2
  %75 = load %struct.i40e_ring**, %struct.i40e_ring*** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %75, i64 %77
  %79 = load %struct.i40e_ring*, %struct.i40e_ring** %78, align 8
  %80 = icmp ne %struct.i40e_ring* %79, null
  br i1 %80, label %81, label %113

81:                                               ; preds = %72
  %82 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %83 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %82, i32 0, i32 2
  %84 = load %struct.i40e_ring**, %struct.i40e_ring*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %84, i64 %86
  %88 = load %struct.i40e_ring*, %struct.i40e_ring** %87, align 8
  %89 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %95 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %94, i32 0, i32 2
  %96 = load %struct.i40e_ring**, %struct.i40e_ring*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %96, i64 %98
  %100 = load %struct.i40e_ring*, %struct.i40e_ring** %99, align 8
  %101 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %93, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %92
  %105 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %106 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %105, i32 0, i32 2
  %107 = load %struct.i40e_ring**, %struct.i40e_ring*** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %107, i64 %109
  %111 = load %struct.i40e_ring*, %struct.i40e_ring** %110, align 8
  store %struct.i40e_ring* %111, %struct.i40e_ring** %6, align 8
  br label %117

112:                                              ; preds = %92
  br label %113

113:                                              ; preds = %112, %81, %72
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %66

117:                                              ; preds = %104, %66
  br label %118

118:                                              ; preds = %117, %62
  %119 = load i64, i64* @jiffies, align 8
  %120 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %121 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @HZ, align 4
  %124 = mul nsw i32 %123, 20
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %122, %125
  %127 = call i64 @time_after(i64 %119, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %131 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  br label %145

132:                                              ; preds = %118
  %133 = load i64, i64* @jiffies, align 8
  %134 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %135 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.net_device*, %struct.net_device** %2, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = call i64 @time_before(i64 %133, i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %247

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144, %129
  %146 = load i32, i32* @__I40E_TIMEOUT_RECOVERY_PENDING, align 4
  %147 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %148 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @test_and_set_bit(i32 %146, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %247

153:                                              ; preds = %145
  %154 = load %struct.i40e_ring*, %struct.i40e_ring** %6, align 8
  %155 = icmp ne %struct.i40e_ring* %154, null
  br i1 %155, label %156, label %206

156:                                              ; preds = %153
  %157 = load %struct.i40e_ring*, %struct.i40e_ring** %6, align 8
  %158 = call i32 @i40e_get_head(%struct.i40e_ring* %157)
  store i32 %158, i32* %9, align 4
  %159 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %160 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %156
  %166 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %167 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %166, i32 0, i32 4
  %168 = load %struct.i40e_ring*, %struct.i40e_ring** %6, align 8
  %169 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %168, i32 0, i32 5
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.i40e_ring*, %struct.i40e_ring** %6, align 8
  %174 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %173, i32 0, i32 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %172, %177
  %179 = sub nsw i64 %178, 1
  %180 = call i32 @I40E_PFINT_DYN_CTLN(i64 %179)
  %181 = call i32 @rd32(i32* %167, i32 %180)
  store i32 %181, i32* %10, align 4
  br label %187

182:                                              ; preds = %156
  %183 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %184 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %183, i32 0, i32 4
  %185 = load i32, i32* @I40E_PFINT_DYN_CTL0, align 4
  %186 = call i32 @rd32(i32* %184, i32 %185)
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %182, %165
  %188 = load %struct.net_device*, %struct.net_device** %2, align 8
  %189 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %190 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.i40e_ring*, %struct.i40e_ring** %6, align 8
  %194 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.i40e_ring*, %struct.i40e_ring** %6, align 8
  %198 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.i40e_ring*, %struct.i40e_ring** %6, align 8
  %201 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @readl(i32 %202)
  %204 = load i32, i32* %10, align 4
  %205 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %188, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %191, i32 %192, i32 %195, i32 %196, i32 %199, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %187, %153
  %207 = load i64, i64* @jiffies, align 8
  %208 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %209 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %208, i32 0, i32 3
  store i64 %207, i64* %209, align 8
  %210 = load %struct.net_device*, %struct.net_device** %2, align 8
  %211 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %212 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %210, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %213, i32 %214)
  %216 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %217 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  switch i32 %218, label %237 [
    i32 1, label %219
    i32 2, label %225
    i32 3, label %231
  ]

219:                                              ; preds = %206
  %220 = load i32, i32* @__I40E_PF_RESET_REQUESTED, align 4
  %221 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %222 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @set_bit(i32 %220, i32 %223)
  br label %240

225:                                              ; preds = %206
  %226 = load i32, i32* @__I40E_CORE_RESET_REQUESTED, align 4
  %227 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %228 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @set_bit(i32 %226, i32 %229)
  br label %240

231:                                              ; preds = %206
  %232 = load i32, i32* @__I40E_GLOBAL_RESET_REQUESTED, align 4
  %233 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %234 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @set_bit(i32 %232, i32 %235)
  br label %240

237:                                              ; preds = %206
  %238 = load %struct.net_device*, %struct.net_device** %2, align 8
  %239 = call i32 @netdev_err(%struct.net_device* %238, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %240

240:                                              ; preds = %237, %231, %225, %219
  %241 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %242 = call i32 @i40e_service_event_schedule(%struct.i40e_pf* %241)
  %243 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %244 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %240, %152, %143
  ret void
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @netif_xmit_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @i40e_get_head(%struct.i40e_ring*) #1

declare dso_local i32 @rd32(i32*, i32) #1

declare dso_local i32 @I40E_PFINT_DYN_CTLN(i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @i40e_service_event_schedule(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
