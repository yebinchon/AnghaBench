; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_sfp_module_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_sfp_module_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_10__, i64, %struct.TYPE_9__, %struct.TYPE_6__, %struct.ixgbe_adapter* }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.ixgbe_hw.0*, i32, i64*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*, i32*)*, i32 (%struct.ixgbe_hw.3*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.ixgbe_adapter = type { i32 }

@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@ixgbe_sfp_type_not_present = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_SFF_IDENTIFIER = common dso_local global i32 0, align 4
@IXGBE_SFF_IDENTIFIER_SFP = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_unsupported = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBE_COMP_CODES = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBE_COMP_CODES = common dso_local global i32 0, align 4
@IXGBE_SFF_CABLE_TECHNOLOGY = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_SFF_DA_PASSIVE_CABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_cu = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASESR_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_sr = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASELR_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_lr = common dso_local global i32 0, align 4
@ixgbe_sfp_type_unknown = common dso_local global i8* null, align 8
@ixgbe_sfp_type_da_cu_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_cu_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_DA_ACTIVE_CABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_CABLE_SPEC_COMP = common dso_local global i32 0, align 4
@IXGBE_SFF_DA_SPEC_ACTIVE_LIMITING = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_act_lmt_core1 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_srlr_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_srlr_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_1GBASET_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core1 = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBASESX_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core1 = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBASELX_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core1 = common dso_local global i64 0, align 8
@ixgbe_phy_nl = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE0 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE1 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE2 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_passive_tyco = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_ftl_active = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_ftl = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_avago = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_intel = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_passive_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_active_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_unknown = common dso_local global i64 0, align 8
@IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [291 x i8] c"WARNING: Intel (R) Network Connections are quality tested using Intel (R) Ethernet Optics.  Using untested modules is not supported and may cause unstable operation or damage to the module or the adapter.  Intel Corporation is not responsible for any harm caused by using untested modules.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SFP+ module not supported\0A\00", align 1
@ixgbe_phy_unknown = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_identify_sfp_module_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i64], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 4
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %16, align 8
  store %struct.ixgbe_adapter* %17, %struct.ixgbe_adapter** %4, align 8
  store i32 0, i32* %6, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %22 = bitcast [3 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 24, i1 false)
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %26, align 8
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = bitcast %struct.ixgbe_hw* %28 to %struct.ixgbe_hw.1*
  %30 = call i64 %27(%struct.ixgbe_hw.1* %29)
  %31 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %39, i64* %2, align 8
  br label %686

40:                                               ; preds = %1
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.3*
  %48 = call i32 %45(%struct.ixgbe_hw.3* %47)
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %52, align 8
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = bitcast %struct.ixgbe_hw* %54 to %struct.ixgbe_hw.0*
  %56 = load i32, i32* @IXGBE_SFF_IDENTIFIER, align 4
  %57 = call i64 %53(%struct.ixgbe_hw.0* %55, i32 %56, i64* %8)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %40
  br label %664

61:                                               ; preds = %40
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @IXGBE_SFF_IDENTIFIER_SFP, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %71, i64* %2, align 8
  br label %686

72:                                               ; preds = %61
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %76, align 8
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %79 = bitcast %struct.ixgbe_hw* %78 to %struct.ixgbe_hw.0*
  %80 = load i32, i32* @IXGBE_SFF_1GBE_COMP_CODES, align 4
  %81 = call i64 %77(%struct.ixgbe_hw.0* %79, i32 %80, i64* %9)
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %5, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %664

85:                                               ; preds = %72
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %89, align 8
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %92 = bitcast %struct.ixgbe_hw* %91 to %struct.ixgbe_hw.0*
  %93 = load i32, i32* @IXGBE_SFF_10GBE_COMP_CODES, align 4
  %94 = call i64 %90(%struct.ixgbe_hw.0* %92, i32 %93, i64* %10)
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %664

98:                                               ; preds = %85
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %102, align 8
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %105 = bitcast %struct.ixgbe_hw* %104 to %struct.ixgbe_hw.0*
  %106 = load i32, i32* @IXGBE_SFF_CABLE_TECHNOLOGY, align 4
  %107 = call i64 %103(%struct.ixgbe_hw.0* %105, i32 %106, i64* %12)
  store i64 %107, i64* %5, align 8
  %108 = load i64, i64* %5, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %664

111:                                              ; preds = %98
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %157

118:                                              ; preds = %111
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32, i32* @ixgbe_sfp_type_da_cu, align 4
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %126 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  br label %156

128:                                              ; preds = %118
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %131 = and i64 %129, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32, i32* @ixgbe_sfp_type_sr, align 4
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %136 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  br label %155

138:                                              ; preds = %128
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %141 = and i64 %139, %140
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32, i32* @ixgbe_sfp_type_lr, align 4
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %146 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  br label %154

148:                                              ; preds = %138
  %149 = load i8*, i8** @ixgbe_sfp_type_unknown, align 8
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %152 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  br label %154

154:                                              ; preds = %148, %143
  br label %155

155:                                              ; preds = %154, %133
  br label %156

156:                                              ; preds = %155, %123
  br label %330

157:                                              ; preds = %111
  %158 = load i64, i64* %12, align 8
  %159 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %160 = and i64 %158, %159
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %157
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %164 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = load i32, i32* @ixgbe_sfp_type_da_cu_core0, align 4
  %170 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %171 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  br label %178

173:                                              ; preds = %162
  %174 = load i32, i32* @ixgbe_sfp_type_da_cu_core1, align 4
  %175 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %176 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  br label %178

178:                                              ; preds = %173, %168
  br label %329

179:                                              ; preds = %157
  %180 = load i64, i64* %12, align 8
  %181 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %182 = and i64 %180, %181
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %222

184:                                              ; preds = %179
  %185 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %186 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %188, align 8
  %190 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %191 = bitcast %struct.ixgbe_hw* %190 to %struct.ixgbe_hw.0*
  %192 = load i32, i32* @IXGBE_SFF_CABLE_SPEC_COMP, align 4
  %193 = call i64 %189(%struct.ixgbe_hw.0* %191, i32 %192, i64* %13)
  %194 = load i64, i64* %13, align 8
  %195 = load i64, i64* @IXGBE_SFF_DA_SPEC_ACTIVE_LIMITING, align 8
  %196 = and i64 %194, %195
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %184
  %199 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %200 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core0, align 4
  %206 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %207 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  store i32 %205, i32* %208, align 8
  br label %214

209:                                              ; preds = %198
  %210 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core1, align 4
  %211 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %212 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 8
  br label %214

214:                                              ; preds = %209, %204
  br label %221

215:                                              ; preds = %184
  %216 = load i8*, i8** @ixgbe_sfp_type_unknown, align 8
  %217 = ptrtoint i8* %216 to i32
  %218 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %219 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  store i32 %217, i32* %220, align 8
  br label %221

221:                                              ; preds = %215, %214
  br label %328

222:                                              ; preds = %179
  %223 = load i64, i64* %10, align 8
  %224 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %225 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %226 = or i64 %224, %225
  %227 = and i64 %223, %226
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %246

229:                                              ; preds = %222
  %230 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %231 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load i32, i32* @ixgbe_sfp_type_srlr_core0, align 4
  %237 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %238 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 8
  br label %245

240:                                              ; preds = %229
  %241 = load i32, i32* @ixgbe_sfp_type_srlr_core1, align 4
  %242 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %243 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  store i32 %241, i32* %244, align 8
  br label %245

245:                                              ; preds = %240, %235
  br label %327

246:                                              ; preds = %222
  %247 = load i64, i64* %9, align 8
  %248 = load i64, i64* @IXGBE_SFF_1GBASET_CAPABLE, align 8
  %249 = and i64 %247, %248
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %270

251:                                              ; preds = %246
  %252 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %253 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %251
  %258 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %259 = trunc i64 %258 to i32
  %260 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %261 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  store i32 %259, i32* %262, align 8
  br label %269

263:                                              ; preds = %251
  %264 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %265 = trunc i64 %264 to i32
  %266 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %267 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  store i32 %265, i32* %268, align 8
  br label %269

269:                                              ; preds = %263, %257
  br label %326

270:                                              ; preds = %246
  %271 = load i64, i64* %9, align 8
  %272 = load i64, i64* @IXGBE_SFF_1GBASESX_CAPABLE, align 8
  %273 = and i64 %271, %272
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %294

275:                                              ; preds = %270
  %276 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %277 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %275
  %282 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %283 = trunc i64 %282 to i32
  %284 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %285 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  store i32 %283, i32* %286, align 8
  br label %293

287:                                              ; preds = %275
  %288 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %289 = trunc i64 %288 to i32
  %290 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %291 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  store i32 %289, i32* %292, align 8
  br label %293

293:                                              ; preds = %287, %281
  br label %325

294:                                              ; preds = %270
  %295 = load i64, i64* %9, align 8
  %296 = load i64, i64* @IXGBE_SFF_1GBASELX_CAPABLE, align 8
  %297 = and i64 %295, %296
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %318

299:                                              ; preds = %294
  %300 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %301 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %299
  %306 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %307 = trunc i64 %306 to i32
  %308 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %309 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  store i32 %307, i32* %310, align 8
  br label %317

311:                                              ; preds = %299
  %312 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %313 = trunc i64 %312 to i32
  %314 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %315 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  store i32 %313, i32* %316, align 8
  br label %317

317:                                              ; preds = %311, %305
  br label %324

318:                                              ; preds = %294
  %319 = load i8*, i8** @ixgbe_sfp_type_unknown, align 8
  %320 = ptrtoint i8* %319 to i32
  %321 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %322 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  store i32 %320, i32* %323, align 8
  br label %324

324:                                              ; preds = %318, %317
  br label %325

325:                                              ; preds = %324, %293
  br label %326

326:                                              ; preds = %325, %269
  br label %327

327:                                              ; preds = %326, %245
  br label %328

328:                                              ; preds = %327, %221
  br label %329

329:                                              ; preds = %328, %178
  br label %330

330:                                              ; preds = %329, %156
  %331 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %332 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* %7, align 4
  %336 = icmp ne i32 %334, %335
  br i1 %336, label %337, label %341

337:                                              ; preds = %330
  %338 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %339 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 2
  store i32 1, i32* %340, align 8
  br label %341

341:                                              ; preds = %337, %330
  %342 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %343 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 3
  store i32 0, i32* %344, align 4
  %345 = load i64, i64* %9, align 8
  %346 = load i64, i64* @IXGBE_SFF_1GBASESX_CAPABLE, align 8
  %347 = and i64 %345, %346
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %354

349:                                              ; preds = %341
  %350 = load i64, i64* %10, align 8
  %351 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %352 = and i64 %350, %351
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %364, label %354

354:                                              ; preds = %349, %341
  %355 = load i64, i64* %9, align 8
  %356 = load i64, i64* @IXGBE_SFF_1GBASELX_CAPABLE, align 8
  %357 = and i64 %355, %356
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %368

359:                                              ; preds = %354
  %360 = load i64, i64* %10, align 8
  %361 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %362 = and i64 %360, %361
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %359, %349
  %365 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %366 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 3
  store i32 1, i32* %367, align 4
  br label %368

368:                                              ; preds = %364, %359, %354
  %369 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %370 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @ixgbe_phy_nl, align 8
  %374 = icmp ne i64 %372, %373
  br i1 %374, label %375, label %503

375:                                              ; preds = %368
  %376 = load i64, i64* %8, align 8
  %377 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %378 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 4
  store i64 %376, i64* %379, align 8
  %380 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %381 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 5
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 0
  %384 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %383, align 8
  %385 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %386 = bitcast %struct.ixgbe_hw* %385 to %struct.ixgbe_hw.0*
  %387 = load i32, i32* @IXGBE_SFF_VENDOR_OUI_BYTE0, align 4
  %388 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %389 = call i64 %384(%struct.ixgbe_hw.0* %386, i32 %387, i64* %388)
  store i64 %389, i64* %5, align 8
  %390 = load i64, i64* %5, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %375
  br label %664

393:                                              ; preds = %375
  %394 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %395 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 0
  %398 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %397, align 8
  %399 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %400 = bitcast %struct.ixgbe_hw* %399 to %struct.ixgbe_hw.0*
  %401 = load i32, i32* @IXGBE_SFF_VENDOR_OUI_BYTE1, align 4
  %402 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %403 = call i64 %398(%struct.ixgbe_hw.0* %400, i32 %401, i64* %402)
  store i64 %403, i64* %5, align 8
  %404 = load i64, i64* %5, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %393
  br label %664

407:                                              ; preds = %393
  %408 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %409 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 0
  %412 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %411, align 8
  %413 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %414 = bitcast %struct.ixgbe_hw* %413 to %struct.ixgbe_hw.0*
  %415 = load i32, i32* @IXGBE_SFF_VENDOR_OUI_BYTE2, align 4
  %416 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %417 = call i64 %412(%struct.ixgbe_hw.0* %414, i32 %415, i64* %416)
  store i64 %417, i64* %5, align 8
  %418 = load i64, i64* %5, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %407
  br label %664

421:                                              ; preds = %407
  %422 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %423 = load i64, i64* %422, align 16
  %424 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT, align 8
  %425 = shl i64 %423, %424
  %426 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT, align 8
  %429 = shl i64 %427, %428
  %430 = or i64 %425, %429
  %431 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %432 = load i64, i64* %431, align 16
  %433 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT, align 8
  %434 = shl i64 %432, %433
  %435 = or i64 %430, %434
  %436 = trunc i64 %435 to i32
  store i32 %436, i32* %6, align 4
  %437 = load i32, i32* %6, align 4
  switch i32 %437, label %475 [
    i32 128, label %438
    i32 130, label %449
    i32 131, label %465
    i32 129, label %470
  ]

438:                                              ; preds = %421
  %439 = load i64, i64* %12, align 8
  %440 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %441 = and i64 %439, %440
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %448

443:                                              ; preds = %438
  %444 = load i64, i64* @ixgbe_phy_sfp_passive_tyco, align 8
  %445 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %446 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i32 0, i32 1
  store i64 %444, i64* %447, align 8
  br label %448

448:                                              ; preds = %443, %438
  br label %502

449:                                              ; preds = %421
  %450 = load i64, i64* %12, align 8
  %451 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %452 = and i64 %450, %451
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %449
  %455 = load i64, i64* @ixgbe_phy_sfp_ftl_active, align 8
  %456 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %457 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i32 0, i32 1
  store i64 %455, i64* %458, align 8
  br label %464

459:                                              ; preds = %449
  %460 = load i64, i64* @ixgbe_phy_sfp_ftl, align 8
  %461 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %462 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 1
  store i64 %460, i64* %463, align 8
  br label %464

464:                                              ; preds = %459, %454
  br label %502

465:                                              ; preds = %421
  %466 = load i64, i64* @ixgbe_phy_sfp_avago, align 8
  %467 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %468 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 1
  store i64 %466, i64* %469, align 8
  br label %502

470:                                              ; preds = %421
  %471 = load i64, i64* @ixgbe_phy_sfp_intel, align 8
  %472 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %473 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %473, i32 0, i32 1
  store i64 %471, i64* %474, align 8
  br label %502

475:                                              ; preds = %421
  %476 = load i64, i64* %12, align 8
  %477 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %478 = and i64 %476, %477
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %485

480:                                              ; preds = %475
  %481 = load i64, i64* @ixgbe_phy_sfp_passive_unknown, align 8
  %482 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %483 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %483, i32 0, i32 1
  store i64 %481, i64* %484, align 8
  br label %501

485:                                              ; preds = %475
  %486 = load i64, i64* %12, align 8
  %487 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %488 = and i64 %486, %487
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %495

490:                                              ; preds = %485
  %491 = load i64, i64* @ixgbe_phy_sfp_active_unknown, align 8
  %492 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %493 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %493, i32 0, i32 1
  store i64 %491, i64* %494, align 8
  br label %500

495:                                              ; preds = %485
  %496 = load i64, i64* @ixgbe_phy_sfp_unknown, align 8
  %497 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %498 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %498, i32 0, i32 1
  store i64 %496, i64* %499, align 8
  br label %500

500:                                              ; preds = %495, %490
  br label %501

501:                                              ; preds = %500, %480
  br label %502

502:                                              ; preds = %501, %470, %465, %464, %448
  br label %503

503:                                              ; preds = %502, %368
  %504 = load i64, i64* %12, align 8
  %505 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %506 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %507 = or i64 %505, %506
  %508 = and i64 %504, %507
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %511

510:                                              ; preds = %503
  store i64 0, i64* %2, align 8
  br label %686

511:                                              ; preds = %503
  %512 = load i64, i64* %10, align 8
  %513 = icmp eq i64 %512, 0
  br i1 %513, label %514, label %569

514:                                              ; preds = %511
  %515 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %516 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = sext i32 %518 to i64
  %520 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %521 = icmp eq i64 %519, %520
  br i1 %521, label %569, label %522

522:                                              ; preds = %514
  %523 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %524 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = sext i32 %526 to i64
  %528 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %569, label %530

530:                                              ; preds = %522
  %531 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %532 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = sext i32 %534 to i64
  %536 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %537 = icmp eq i64 %535, %536
  br i1 %537, label %569, label %538

538:                                              ; preds = %530
  %539 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %540 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = sext i32 %542 to i64
  %544 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %545 = icmp eq i64 %543, %544
  br i1 %545, label %569, label %546

546:                                              ; preds = %538
  %547 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %548 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = sext i32 %550 to i64
  %552 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %553 = icmp eq i64 %551, %552
  br i1 %553, label %569, label %554

554:                                              ; preds = %546
  %555 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %556 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = sext i32 %558 to i64
  %560 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %561 = icmp eq i64 %559, %560
  br i1 %561, label %569, label %562

562:                                              ; preds = %554
  %563 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %564 = ptrtoint i8* %563 to i64
  %565 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %566 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %566, i32 0, i32 1
  store i64 %564, i64* %567, align 8
  %568 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %568, i64* %2, align 8
  br label %686

569:                                              ; preds = %554, %546, %538, %530, %522, %514, %511
  %570 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %571 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %570, i32 0, i32 2
  %572 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %571, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %575 = icmp eq i64 %573, %574
  br i1 %575, label %576, label %577

576:                                              ; preds = %569
  store i64 0, i64* %2, align 8
  br label %686

577:                                              ; preds = %569
  %578 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %579 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %578, i32 0, i32 2
  %580 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %580, i32 0, i32 1
  %582 = load i32 (%struct.ixgbe_hw.2*, i32*)*, i32 (%struct.ixgbe_hw.2*, i32*)** %581, align 8
  %583 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %584 = bitcast %struct.ixgbe_hw* %583 to %struct.ixgbe_hw.2*
  %585 = call i32 %582(%struct.ixgbe_hw.2* %584, i32* %14)
  %586 = load i32, i32* %14, align 4
  %587 = load i32, i32* @IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP, align 4
  %588 = and i32 %586, %587
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %663, label %590

590:                                              ; preds = %577
  %591 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %592 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %591, i32 0, i32 0
  %593 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = sext i32 %594 to i64
  %596 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %597 = icmp eq i64 %595, %596
  br i1 %597, label %663, label %598

598:                                              ; preds = %590
  %599 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %600 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = sext i32 %602 to i64
  %604 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %605 = icmp eq i64 %603, %604
  br i1 %605, label %663, label %606

606:                                              ; preds = %598
  %607 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %608 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  %611 = sext i32 %610 to i64
  %612 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %613 = icmp eq i64 %611, %612
  br i1 %613, label %663, label %614

614:                                              ; preds = %606
  %615 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %616 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 8
  %619 = sext i32 %618 to i64
  %620 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %621 = icmp eq i64 %619, %620
  br i1 %621, label %663, label %622

622:                                              ; preds = %614
  %623 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %624 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %623, i32 0, i32 0
  %625 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 8
  %627 = sext i32 %626 to i64
  %628 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %629 = icmp eq i64 %627, %628
  br i1 %629, label %663, label %630

630:                                              ; preds = %622
  %631 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %632 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %631, i32 0, i32 0
  %633 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  %635 = sext i32 %634 to i64
  %636 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %637 = icmp eq i64 %635, %636
  br i1 %637, label %663, label %638

638:                                              ; preds = %630
  %639 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %640 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %639, i32 0, i32 0
  %641 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %640, i32 0, i32 1
  %642 = load i64, i64* %641, align 8
  %643 = load i64, i64* @ixgbe_phy_sfp_intel, align 8
  %644 = icmp eq i64 %642, %643
  br i1 %644, label %645, label %646

645:                                              ; preds = %638
  store i64 0, i64* %2, align 8
  br label %686

646:                                              ; preds = %638
  %647 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %648 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %647, i32 0, i32 1
  %649 = load i64, i64* %648, align 8
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %654

651:                                              ; preds = %646
  %652 = load i32, i32* @drv, align 4
  %653 = call i32 @e_warn(i32 %652, i8* getelementptr inbounds ([291 x i8], [291 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %686

654:                                              ; preds = %646
  %655 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %656 = call i32 @hw_dbg(%struct.ixgbe_hw* %655, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %657 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %658 = ptrtoint i8* %657 to i64
  %659 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %660 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %659, i32 0, i32 0
  %661 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %660, i32 0, i32 1
  store i64 %658, i64* %661, align 8
  %662 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %662, i64* %2, align 8
  br label %686

663:                                              ; preds = %630, %622, %614, %606, %598, %590, %577
  store i64 0, i64* %2, align 8
  br label %686

664:                                              ; preds = %420, %406, %392, %110, %97, %84, %60
  %665 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %666 = ptrtoint i8* %665 to i32
  %667 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %668 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %667, i32 0, i32 0
  %669 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %668, i32 0, i32 0
  store i32 %666, i32* %669, align 8
  %670 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %671 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %670, i32 0, i32 0
  %672 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %671, i32 0, i32 1
  %673 = load i64, i64* %672, align 8
  %674 = load i64, i64* @ixgbe_phy_nl, align 8
  %675 = icmp ne i64 %673, %674
  br i1 %675, label %676, label %684

676:                                              ; preds = %664
  %677 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %678 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %677, i32 0, i32 0
  %679 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %678, i32 0, i32 4
  store i64 0, i64* %679, align 8
  %680 = load i64, i64* @ixgbe_phy_unknown, align 8
  %681 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %682 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %682, i32 0, i32 1
  store i64 %680, i64* %683, align 8
  br label %684

684:                                              ; preds = %676, %664
  %685 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %685, i64* %2, align 8
  br label %686

686:                                              ; preds = %684, %663, %654, %651, %645, %576, %562, %510, %65, %33
  %687 = load i64, i64* %2, align 8
  ret i64 %687
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @e_warn(i32, i8*) #2

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
