; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { %struct.ef10_vf* }
%struct.ef10_vf = type { i64, i32, %struct.TYPE_10__*, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)* }

@EINVAL = common dso_local global i32 0, align 4
@EFX_EF10_NO_VLAN = common dso_local global i64 0, align 8
@EVB_PORT_ID_ASSIGNED = common dso_local global i32 0, align 4
@EVB_PORT_ID_NULL = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to change vlan on VF %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"This is likely because the VF is bound to a driver in a VM.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Please unload the driver in the VM.\0A\00", align 1
@MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to restore VF - scheduling reset.\0A\00", align 1
@RESET_TYPE_DATAPATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"Failed to restore the VF and cannot reset the VF - VF is not functional.\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Please reload the driver attached to the VF.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_ef10_sriov_set_vf_vlan(%struct.efx_nic* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.efx_ef10_nic_data*, align 8
  %11 = alloca %struct.ef10_vf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 2
  %17 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %16, align 8
  store %struct.efx_ef10_nic_data* %17, %struct.efx_ef10_nic_data** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %20 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %344

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %344

32:                                               ; preds = %26
  %33 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %10, align 8
  %34 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %33, i32 0, i32 0
  %35 = load %struct.ef10_vf*, %struct.ef10_vf** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %35, i64 %37
  store %struct.ef10_vf* %38, %struct.ef10_vf** %11, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i64, i64* @EFX_EF10_NO_VLAN, align 8
  br label %45

43:                                               ; preds = %32
  %44 = load i64, i64* %8, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %49 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %344

53:                                               ; preds = %45
  %54 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %55 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = icmp ne %struct.TYPE_10__* %56, null
  br i1 %57, label %58, label %99

58:                                               ; preds = %53
  %59 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %60 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %59, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = call i32 @efx_device_detach_sync(%struct.TYPE_10__* %61)
  %63 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %64 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @efx_net_stop(i32 %67)
  %69 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %70 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %69, i32 0, i32 2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %75 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = call i32 @down_write(i32* %77)
  %79 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %80 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %84, align 8
  %86 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %87 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = call i32 %85(%struct.TYPE_10__* %88)
  %90 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %91 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %90, i32 0, i32 2
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %94 = call i32 @efx_ef10_vadaptor_free(%struct.TYPE_10__* %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %58
  br label %241

98:                                               ; preds = %58
  br label %99

99:                                               ; preds = %98, %53
  %100 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %101 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %134

104:                                              ; preds = %99
  %105 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %106 = load i64, i64* @EVB_PORT_ID_NULL, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @efx_ef10_evb_port_assign(%struct.efx_nic* %105, i64 %106, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %104
  %112 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %113 = load i32, i32* @drv, align 4
  %114 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %115 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_warn(%struct.efx_nic* %112, i32 %113, i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %120 = load i32, i32* @drv, align 4
  %121 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %122 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_warn(%struct.efx_nic* %119, i32 %120, i32 %123, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %126 = load i32, i32* @drv, align 4
  %127 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %128 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_warn(%struct.efx_nic* %125, i32 %126, i32 %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %225

131:                                              ; preds = %104
  %132 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %133 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %132, i32 0, i32 1
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %99
  %135 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %136 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @is_zero_ether_addr(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %134
  %141 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %142 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %143 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %146 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @efx_ef10_vport_del_mac(%struct.efx_nic* %141, i64 %144, i32 %147)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %211

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %152, %134
  %154 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %155 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %160 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %161 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @efx_ef10_vport_free(%struct.efx_nic* %159, i64 %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %187

167:                                              ; preds = %158
  %168 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %169 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %168, i32 0, i32 3
  store i64 0, i64* %169, align 8
  br label %170

170:                                              ; preds = %167, %153
  %171 = load i64, i64* %12, align 8
  %172 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %173 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %175 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %176 = load i32, i32* @MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL, align 4
  %177 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %178 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %181 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %180, i32 0, i32 3
  %182 = call i32 @efx_ef10_vport_alloc(%struct.efx_nic* %174, i32 %175, i32 %176, i64 %179, i64* %181)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %170
  br label %288

186:                                              ; preds = %170
  br label %187

187:                                              ; preds = %186, %166
  %188 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %189 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @is_zero_ether_addr(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %210, label %193

193:                                              ; preds = %187
  %194 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %195 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %196 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %199 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @efx_ef10_vport_add_mac(%struct.efx_nic* %194, i64 %197, i32 %200)
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %193
  %205 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %206 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @eth_zero_addr(i32 %207)
  br label %288

209:                                              ; preds = %193
  br label %210

210:                                              ; preds = %209, %187
  br label %211

211:                                              ; preds = %210, %151
  %212 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %213 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %214 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @efx_ef10_evb_port_assign(%struct.efx_nic* %212, i64 %215, i32 %216)
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %14, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  br label %288

221:                                              ; preds = %211
  %222 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %223 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %222, i32 0, i32 1
  store i32 1, i32* %223, align 8
  br label %224

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %224, %111
  %226 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %227 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %226, i32 0, i32 2
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = icmp ne %struct.TYPE_10__* %228, null
  br i1 %229, label %230, label %240

230:                                              ; preds = %225
  %231 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %232 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %231, i32 0, i32 2
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %235 = call i32 @efx_ef10_vadaptor_alloc(%struct.TYPE_10__* %233, i32 %234)
  store i32 %235, i32* %14, align 4
  %236 = load i32, i32* %14, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %230
  br label %288

239:                                              ; preds = %230
  br label %240

240:                                              ; preds = %239, %225
  br label %241

241:                                              ; preds = %240, %97
  %242 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %243 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %242, i32 0, i32 2
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = icmp ne %struct.TYPE_10__* %244, null
  br i1 %245, label %246, label %286

246:                                              ; preds = %241
  %247 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %248 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %247, i32 0, i32 2
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 3
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %252, align 8
  %254 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %255 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %254, i32 0, i32 2
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = call i32 %253(%struct.TYPE_10__* %256)
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %14, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %246
  br label %288

261:                                              ; preds = %246
  %262 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %263 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %262, i32 0, i32 2
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  %266 = call i32 @up_write(i32* %265)
  %267 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %268 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %267, i32 0, i32 2
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = call i32 @mutex_unlock(i32* %270)
  %272 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %273 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %272, i32 0, i32 2
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @efx_net_open(i32 %276)
  store i32 %277, i32* %14, align 4
  %278 = load i32, i32* %14, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %261
  br label %305

281:                                              ; preds = %261
  %282 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %283 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %282, i32 0, i32 2
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %283, align 8
  %285 = call i32 @efx_device_attach_if_not_resetting(%struct.TYPE_10__* %284)
  br label %286

286:                                              ; preds = %281, %241
  %287 = load i32, i32* %13, align 4
  store i32 %287, i32* %5, align 4
  br label %344

288:                                              ; preds = %260, %238, %220, %204, %185
  %289 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %290 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %289, i32 0, i32 2
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %290, align 8
  %292 = icmp ne %struct.TYPE_10__* %291, null
  br i1 %292, label %293, label %304

293:                                              ; preds = %288
  %294 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %295 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %294, i32 0, i32 2
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 1
  %298 = call i32 @up_write(i32* %297)
  %299 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %300 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %299, i32 0, i32 2
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  %303 = call i32 @mutex_unlock(i32* %302)
  br label %304

304:                                              ; preds = %293, %288
  br label %305

305:                                              ; preds = %304, %280
  %306 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %307 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %306, i32 0, i32 2
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %307, align 8
  %309 = icmp ne %struct.TYPE_10__* %308, null
  br i1 %309, label %310, label %322

310:                                              ; preds = %305
  %311 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %312 = load i32, i32* @drv, align 4
  %313 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %314 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @netif_err(%struct.efx_nic* %311, i32 %312, i32 %315, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %317 = load %struct.ef10_vf*, %struct.ef10_vf** %11, align 8
  %318 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %317, i32 0, i32 2
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %318, align 8
  %320 = load i32, i32* @RESET_TYPE_DATAPATH, align 4
  %321 = call i32 @efx_schedule_reset(%struct.TYPE_10__* %319, i32 %320)
  br label %335

322:                                              ; preds = %305
  %323 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %324 = load i32, i32* @drv, align 4
  %325 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %326 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @netif_err(%struct.efx_nic* %323, i32 %324, i32 %327, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  %329 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %330 = load i32, i32* @drv, align 4
  %331 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %332 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @netif_err(%struct.efx_nic* %329, i32 %330, i32 %333, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %335

335:                                              ; preds = %322, %310
  %336 = load i32, i32* %13, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %335
  %339 = load i32, i32* %13, align 4
  br label %342

340:                                              ; preds = %335
  %341 = load i32, i32* %14, align 4
  br label %342

342:                                              ; preds = %340, %338
  %343 = phi i32 [ %339, %338 ], [ %341, %340 ]
  store i32 %343, i32* %5, align 4
  br label %344

344:                                              ; preds = %342, %286, %52, %29, %23
  %345 = load i32, i32* %5, align 4
  ret i32 %345
}

declare dso_local i32 @efx_device_detach_sync(%struct.TYPE_10__*) #1

declare dso_local i32 @efx_net_stop(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @efx_ef10_vadaptor_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @efx_ef10_evb_port_assign(%struct.efx_nic*, i64, i32) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @efx_ef10_vport_del_mac(%struct.efx_nic*, i64, i32) #1

declare dso_local i32 @efx_ef10_vport_free(%struct.efx_nic*, i64) #1

declare dso_local i32 @efx_ef10_vport_alloc(%struct.efx_nic*, i32, i32, i64, i64*) #1

declare dso_local i32 @efx_ef10_vport_add_mac(%struct.efx_nic*, i64, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @efx_ef10_vadaptor_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @efx_net_open(i32) #1

declare dso_local i32 @efx_device_attach_if_not_resetting(%struct.TYPE_10__*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_schedule_reset(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
