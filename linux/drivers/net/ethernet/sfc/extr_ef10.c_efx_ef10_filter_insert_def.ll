; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_insert_def.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_insert_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32, i32 }
%struct.efx_ef10_filter_vlan = type { i32*, i32 }
%struct.efx_filter_spec = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_RSS = common dso_local global i32 0, align 4
@EFX_FILTER_PRI_AUTO = common dso_local global i32 0, align 4
@MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN = common dso_local global i32 0, align 4
@EFX_FILTER_VID_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Multicast\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Unicast\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EFX_ENCAP_TYPES_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"VXLAN \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"NVGRE \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"GENEVE \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"IPv6 \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"IPv4 \00", align 1
@drv = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@warn = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"%s%s%s mismatch filter insert failed rc=%d\0A\00", align 1
@efx_ef10_filter_insert_def.map = internal global [136 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 136, i32 141, i32 142, i32 146, i32 134, i32 139, i32 0, i32 144], align 16
@EFX_EF10_BCAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFX_EF10_FILTER_ID_INVALID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"Broadcast filter insert failed rc=%d\0A\00", align 1
@efx_ef10_filter_insert_def.map.10 = internal global [136 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 135, i32 140, i32 137, i32 145, i32 133, i32 138, i32 0, i32 143], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_ef10_filter_vlan*, i32, i32, i32)* @efx_ef10_filter_insert_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_filter_insert_def(%struct.efx_nic* %0, %struct.efx_ef10_filter_vlan* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.efx_nic*, align 8
  %8 = alloca %struct.efx_ef10_filter_vlan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.efx_ef10_nic_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.efx_filter_spec, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %7, align 8
  store %struct.efx_ef10_filter_vlan* %1, %struct.efx_ef10_filter_vlan** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 2
  %25 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %24, align 8
  store %struct.efx_ef10_nic_data* %25, %struct.efx_ef10_nic_data** %12, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %15, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %30 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %31 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %30, i32 0, i32 1
  %32 = call i64 @efx_rss_active(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  br label %37

36:                                               ; preds = %5
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @efx_filter_init_rx(%struct.efx_filter_spec* %14, i32 %39, i32 %40, i32 0)
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @efx_filter_set_mc_def(%struct.efx_filter_spec* %14)
  br label %48

46:                                               ; preds = %37
  %47 = call i32 @efx_filter_set_uc_def(%struct.efx_filter_spec* %14)
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %12, align 8
  %53 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @efx_filter_set_encap_type(%struct.efx_filter_spec* %14, i32 %60)
  br label %63

62:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %283

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %8, align 8
  %66 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @EFX_FILTER_VID_UNSPEC, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %8, align 8
  %72 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @efx_filter_set_eth_local(%struct.efx_filter_spec* %14, i32 %73, i32* null)
  br label %75

75:                                               ; preds = %70, %64
  %76 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %77 = call i32 @efx_ef10_filter_insert_locked(%struct.efx_nic* %76, %struct.efx_filter_spec* %14, i32 1)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %142

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %84, i8** %20, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @EFX_ENCAP_TYPES_MASK, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 128
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  br label %104

90:                                               ; preds = %80
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @EFX_ENCAP_TYPES_MASK, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 129
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  br label %103

96:                                               ; preds = %90
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @EFX_ENCAP_TYPES_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 131
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %21, align 8
  br label %102

102:                                              ; preds = %101, %96
  br label %103

103:                                              ; preds = %102, %95
  br label %104

104:                                              ; preds = %103, %89
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, 132
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %22, align 8
  br label %114

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %22, align 8
  br label %113

113:                                              ; preds = %112, %109
  br label %114

114:                                              ; preds = %113, %108
  %115 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %116 = load i32, i32* @drv, align 4
  %117 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %118 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* @EPERM, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %114
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %127, %124
  %132 = phi i1 [ true, %124 ], [ %130, %127 ]
  br label %133

133:                                              ; preds = %131, %114
  %134 = phi i1 [ false, %114 ], [ %132, %131 ]
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* @warn, align 4
  %137 = load i8*, i8** %21, align 8
  %138 = load i8*, i8** %22, align 8
  %139 = load i8*, i8** %20, align 8
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @netif_cond_dbg(%struct.efx_nic* %115, i32 %116, i32 %119, i32 %135, i32 %136, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %137, i8* %138, i8* %139, i32 %140)
  br label %281

142:                                              ; preds = %75
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %244

145:                                              ; preds = %142
  %146 = load i64, i64* @EFX_EF10_BCAST, align 8
  %147 = icmp ne i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @BUILD_BUG_ON(i32 %148)
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([136 x i32], [136 x i32]* @efx_ef10_filter_insert_def.map, i64 0, i64 0))
  %152 = icmp uge i32 %150, %151
  br i1 %152, label %159, label %153

153:                                              ; preds = %145
  %154 = load i32, i32* %9, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [136 x i32], [136 x i32]* @efx_ef10_filter_insert_def.map, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %153, %145
  %160 = call i32 @WARN_ON(i32 1)
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %283

163:                                              ; preds = %153
  %164 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %8, align 8
  %165 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [136 x i32], [136 x i32]* @efx_ef10_filter_insert_def.map, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  store i32* %172, i32** %18, align 8
  %173 = load i32*, i32** %18, align 8
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @EFX_EF10_FILTER_ID_INVALID, align 4
  %176 = icmp ne i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @EFX_WARN_ON_PARANOID(i32 %177)
  %179 = load i32, i32* %17, align 4
  %180 = call i8* @efx_ef10_filter_get_unsafe_id(i32 %179)
  %181 = ptrtoint i8* %180 to i32
  %182 = load i32*, i32** %18, align 8
  store i32 %181, i32* %182, align 4
  %183 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %12, align 8
  %184 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %243, label %187

187:                                              ; preds = %163
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %243, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @efx_filter_init_rx(%struct.efx_filter_spec* %14, i32 %191, i32 %192, i32 0)
  %194 = call i32 @eth_broadcast_addr(i32* %29)
  %195 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %8, align 8
  %196 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @efx_filter_set_eth_local(%struct.efx_filter_spec* %14, i32 %197, i32* %29)
  %199 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %200 = call i32 @efx_ef10_filter_insert_locked(%struct.efx_nic* %199, %struct.efx_filter_spec* %14, i32 1)
  store i32 %200, i32* %17, align 4
  %201 = load i32, i32* %17, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %223

203:                                              ; preds = %190
  %204 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %205 = load i32, i32* @drv, align 4
  %206 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %207 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @netif_warn(%struct.efx_nic* %204, i32 %205, i32 %208, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %203
  %214 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %215 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %216 = load i32*, i32** %18, align 8
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @efx_ef10_filter_remove_unsafe(%struct.efx_nic* %214, i32 %215, i32 %217)
  %219 = load i32, i32* @EFX_EF10_FILTER_ID_INVALID, align 4
  %220 = load i32*, i32** %18, align 8
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* %17, align 4
  store i32 %221, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %283

222:                                              ; preds = %203
  br label %242

223:                                              ; preds = %190
  %224 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %8, align 8
  %225 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* @EFX_EF10_BCAST, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @EFX_EF10_FILTER_ID_INVALID, align 4
  %231 = icmp ne i32 %229, %230
  %232 = zext i1 %231 to i32
  %233 = call i32 @EFX_WARN_ON_PARANOID(i32 %232)
  %234 = load i32, i32* %17, align 4
  %235 = call i8* @efx_ef10_filter_get_unsafe_id(i32 %234)
  %236 = ptrtoint i8* %235 to i32
  %237 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %8, align 8
  %238 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* @EFX_EF10_BCAST, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32 %236, i32* %241, align 4
  br label %242

242:                                              ; preds = %223, %222
  br label %243

243:                                              ; preds = %242, %187, %163
  store i32 0, i32* %17, align 4
  br label %280

244:                                              ; preds = %142
  %245 = load i64, i64* @EFX_EF10_BCAST, align 8
  %246 = icmp ne i64 %245, 0
  %247 = zext i1 %246 to i32
  %248 = call i32 @BUILD_BUG_ON(i32 %247)
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([136 x i32], [136 x i32]* @efx_ef10_filter_insert_def.map.10, i64 0, i64 0))
  %251 = icmp uge i32 %249, %250
  br i1 %251, label %258, label %252

252:                                              ; preds = %244
  %253 = load i32, i32* %9, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [136 x i32], [136 x i32]* @efx_ef10_filter_insert_def.map.10, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %252, %244
  %259 = call i32 @WARN_ON(i32 1)
  %260 = load i32, i32* @EINVAL, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %283

262:                                              ; preds = %252
  %263 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %8, align 8
  %264 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds [136 x i32], [136 x i32]* @efx_ef10_filter_insert_def.map.10, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %265, i64 %270
  store i32* %271, i32** %18, align 8
  %272 = load i32*, i32** %18, align 8
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @EFX_EF10_FILTER_ID_INVALID, align 4
  %275 = icmp ne i32 %273, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @EFX_WARN_ON_PARANOID(i32 %276)
  %278 = load i32, i32* %17, align 4
  %279 = load i32*, i32** %18, align 8
  store i32 %278, i32* %279, align 4
  store i32 0, i32* %17, align 4
  br label %280

280:                                              ; preds = %262, %243
  br label %281

281:                                              ; preds = %280, %133
  %282 = load i32, i32* %17, align 4
  store i32 %282, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %283

283:                                              ; preds = %281, %258, %213, %159, %62
  %284 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %284)
  %285 = load i32, i32* %6, align 4
  ret i32 %285
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @efx_rss_active(i32*) #2

declare dso_local i32 @efx_filter_init_rx(%struct.efx_filter_spec*, i32, i32, i32) #2

declare dso_local i32 @efx_filter_set_mc_def(%struct.efx_filter_spec*) #2

declare dso_local i32 @efx_filter_set_uc_def(%struct.efx_filter_spec*) #2

declare dso_local i32 @efx_filter_set_encap_type(%struct.efx_filter_spec*, i32) #2

declare dso_local i32 @efx_filter_set_eth_local(%struct.efx_filter_spec*, i32, i32*) #2

declare dso_local i32 @efx_ef10_filter_insert_locked(%struct.efx_nic*, %struct.efx_filter_spec*, i32) #2

declare dso_local i32 @netif_cond_dbg(%struct.efx_nic*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32) #2

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @EFX_WARN_ON_PARANOID(i32) #2

declare dso_local i8* @efx_ef10_filter_get_unsafe_id(i32) #2

declare dso_local i32 @eth_broadcast_addr(i32*) #2

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, i32) #2

declare dso_local i32 @efx_ef10_filter_remove_unsafe(%struct.efx_nic*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
