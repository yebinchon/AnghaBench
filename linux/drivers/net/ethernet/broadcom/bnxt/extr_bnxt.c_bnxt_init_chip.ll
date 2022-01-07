; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.TYPE_4__*, %struct.bnxt_vnic_info* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bnxt_vnic_info = type { i32, i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"hwrm stat ctx alloc failure rc: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"hwrm ring alloc failure rc: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"hwrm_ring_grp alloc failure: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"hwrm vnic alloc failure rc: %x\0A\00", align 1
@BNXT_FLAG_RFS = common dso_local global i32 0, align 4
@BNXT_FLAG_TPA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"HWRM vnic filter failure rc: %x\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@CFA_L2_SET_RX_MASK_REQ_MASK_BCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"HWRM set coalescing failure rc: %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Special vnic setup failure for NS2 A0 rc: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @bnxt_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_init_chip(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_vnic_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 3
  %12 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %13 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %12, i64 0
  store %struct.bnxt_vnic_info* %13, %struct.bnxt_vnic_info** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %15 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %21 = call i32 @bnxt_hwrm_stat_ctx_alloc(%struct.bnxt* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @netdev_err(%struct.TYPE_4__* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %237

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %33 = call i32 @bnxt_hwrm_ring_alloc(%struct.bnxt* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %38 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @netdev_err(%struct.TYPE_4__* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %237

42:                                               ; preds = %31
  %43 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %44 = call i32 @bnxt_hwrm_ring_grp_alloc(%struct.bnxt* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %49 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @netdev_err(%struct.TYPE_4__* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %237

53:                                               ; preds = %42
  %54 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %55 = call i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, -1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @bnxt_hwrm_vnic_alloc(%struct.bnxt* %61, i32 0, i32 0, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %68 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @netdev_err(%struct.TYPE_4__* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %237

72:                                               ; preds = %60
  %73 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %74 = call i32 @bnxt_setup_vnic(%struct.bnxt* %73, i32 0)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %237

78:                                               ; preds = %72
  %79 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %80 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @BNXT_FLAG_RFS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %87 = call i32 @bnxt_alloc_rfs_vnics(%struct.bnxt* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %237

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %78
  %93 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %94 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BNXT_FLAG_TPA, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %101 = call i32 @bnxt_set_tpa(%struct.bnxt* %100, i32 1)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %237

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %92
  %107 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %108 = call i64 @BNXT_VF(%struct.bnxt* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %112 = call i32 @bnxt_update_vf_mac(%struct.bnxt* %111)
  br label %113

113:                                              ; preds = %110, %106
  %114 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %115 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %116 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @bnxt_hwrm_set_vnic_filter(%struct.bnxt* %114, i32 0, i32 0, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %125 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %124, i32 0, i32 2
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @netdev_err(%struct.TYPE_4__* %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  br label %237

129:                                              ; preds = %113
  %130 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %6, align 8
  %131 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %6, align 8
  %133 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %132, i32 0, i32 1
  store i32 0, i32* %133, align 4
  %134 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %135 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IFF_BROADCAST, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %129
  %143 = load i32, i32* @CFA_L2_SET_RX_MASK_REQ_MASK_BCAST, align 4
  %144 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %6, align 8
  %145 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %142, %129
  %149 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %150 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %149, i32 0, i32 2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @IFF_PROMISC, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %148
  %158 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %159 = call i64 @bnxt_promisc_ok(%struct.bnxt* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i32, i32* @CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS, align 4
  %163 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %6, align 8
  %164 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %157, %148
  %168 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %169 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IFF_ALLMULTI, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %167
  %177 = load i32, i32* @CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST, align 4
  %178 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %6, align 8
  %179 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %6, align 8
  %183 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %182, i32 0, i32 2
  store i64 0, i64* %183, align 8
  br label %192

184:                                              ; preds = %167
  store i32 0, i32* %9, align 4
  %185 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %186 = call i32 @bnxt_mc_list_updated(%struct.bnxt* %185, i32* %9)
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %6, align 8
  %189 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %184, %176
  %193 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %194 = call i32 @bnxt_cfg_rx_mode(%struct.bnxt* %193)
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %237

198:                                              ; preds = %192
  %199 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %200 = call i32 @bnxt_hwrm_set_coal(%struct.bnxt* %199)
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %205 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %204, i32 0, i32 2
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @netdev_warn(%struct.TYPE_4__* %206, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %203, %198
  %210 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %211 = call i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %209
  %214 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %215 = call i32 @bnxt_setup_nitroa0_vnic(%struct.bnxt* %214)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %220 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %219, i32 0, i32 2
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @netdev_err(%struct.TYPE_4__* %221, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %218, %213
  br label %225

225:                                              ; preds = %224, %209
  %226 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %227 = call i64 @BNXT_VF(%struct.bnxt* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %225
  %230 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %231 = call i32 @bnxt_hwrm_func_qcfg(%struct.bnxt* %230)
  %232 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %233 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %232, i32 0, i32 2
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = call i32 @netdev_update_features(%struct.TYPE_4__* %234)
  br label %236

236:                                              ; preds = %229, %225
  store i32 0, i32* %3, align 4
  br label %241

237:                                              ; preds = %197, %123, %104, %90, %77, %66, %47, %36, %24
  %238 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %239 = call i32 @bnxt_hwrm_resource_free(%struct.bnxt* %238, i32 0, i32 1)
  %240 = load i32, i32* %7, align 4
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %237, %236
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i32 @bnxt_hwrm_stat_ctx_alloc(%struct.bnxt*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @bnxt_hwrm_ring_alloc(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_ring_grp_alloc(%struct.bnxt*) #1

declare dso_local i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_vnic_alloc(%struct.bnxt*, i32, i32, i32) #1

declare dso_local i32 @bnxt_setup_vnic(%struct.bnxt*, i32) #1

declare dso_local i32 @bnxt_alloc_rfs_vnics(%struct.bnxt*) #1

declare dso_local i32 @bnxt_set_tpa(%struct.bnxt*, i32) #1

declare dso_local i64 @BNXT_VF(%struct.bnxt*) #1

declare dso_local i32 @bnxt_update_vf_mac(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_set_vnic_filter(%struct.bnxt*, i32, i32, i32) #1

declare dso_local i64 @bnxt_promisc_ok(%struct.bnxt*) #1

declare dso_local i32 @bnxt_mc_list_updated(%struct.bnxt*, i32*) #1

declare dso_local i32 @bnxt_cfg_rx_mode(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_set_coal(%struct.bnxt*) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @bnxt_setup_nitroa0_vnic(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_func_qcfg(%struct.bnxt*) #1

declare dso_local i32 @netdev_update_features(%struct.TYPE_4__*) #1

declare dso_local i32 @bnxt_hwrm_resource_free(%struct.bnxt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
