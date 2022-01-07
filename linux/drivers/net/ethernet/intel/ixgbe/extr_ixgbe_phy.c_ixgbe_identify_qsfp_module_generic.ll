; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_qsfp_module_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_qsfp_module_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_10__, i64, %struct.TYPE_7__, %struct.TYPE_8__, %struct.ixgbe_adapter* }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (%struct.ixgbe_hw.0*, i32, i64*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*, i32*)*, i32 (%struct.ixgbe_hw.3*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.TYPE_8__ = type { i64 }
%struct.ixgbe_adapter = type { i32 }

@ixgbe_media_type_fiber_qsfp = common dso_local global i64 0, align 8
@ixgbe_sfp_type_not_present = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_SFF_IDENTIFIER = common dso_local global i32 0, align 4
@IXGBE_SFF_IDENTIFIER_QSFP_PLUS = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_unsupported = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_SFF_QSFP_10GBE_COMP = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_1GBE_COMP = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_DA_PASSIVE_CABLE = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_passive_unknown = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_cu_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_cu_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASESR_CAPABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_10GBASELR_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_srlr_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_srlr_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_DA_ACTIVE_CABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_QSFP_CONNECTOR = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_CABLE_LENGTH = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_DEVICE_TECH = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_CONNECTOR_NOT_SEPARABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_QSFP_TRANSMITER_850NM_VCSEL = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_active_unknown = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_act_lmt_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_1GBASESX_CAPABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBASELX_CAPABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_QSFP_VENDOR_OUI_BYTE0 = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_VENDOR_OUI_BYTE1 = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_VENDOR_OUI_BYTE2 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_INTEL = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_intel = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_unknown = common dso_local global i64 0, align 8
@IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [289 x i8] c"WARNING: Intel (R) Network Connections are quality tested using Intel (R) Ethernet Optics. Using untested modules is not supported and may cause unstable operation or damage to the module or the adapter. Intel Corporation is not responsible for any harm caused by using untested modules.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"QSFP module not supported\0A\00", align 1
@ixgbe_phy_unknown = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_identify_qsfp_module_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_identify_qsfp_module_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i64], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 4
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %18, align 8
  store %struct.ixgbe_adapter* %19, %struct.ixgbe_adapter** %4, align 8
  store i64 0, i64* %6, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %24 = bitcast [3 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 24, i1 false)
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %28, align 8
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = bitcast %struct.ixgbe_hw* %30 to %struct.ixgbe_hw.1*
  %32 = call i64 %29(%struct.ixgbe_hw.1* %31)
  %33 = load i64, i64* @ixgbe_media_type_fiber_qsfp, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %41, i64* %2, align 8
  br label %406

42:                                               ; preds = %1
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %46, align 8
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = bitcast %struct.ixgbe_hw* %48 to %struct.ixgbe_hw.3*
  %50 = call i32 %47(%struct.ixgbe_hw.3* %49)
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %54, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = bitcast %struct.ixgbe_hw* %56 to %struct.ixgbe_hw.0*
  %58 = load i32, i32* @IXGBE_SFF_IDENTIFIER, align 4
  %59 = call i64 %55(%struct.ixgbe_hw.0* %57, i32 %58, i64* %8)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %42
  br label %392

63:                                               ; preds = %42
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @IXGBE_SFF_IDENTIFIER_QSFP_PLUS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  %73 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %73, i64* %2, align 8
  br label %406

74:                                               ; preds = %63
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  store i64 %75, i64* %78, align 8
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %82, align 8
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %85 = bitcast %struct.ixgbe_hw* %84 to %struct.ixgbe_hw.0*
  %86 = load i32, i32* @IXGBE_SFF_QSFP_10GBE_COMP, align 4
  %87 = call i64 %83(%struct.ixgbe_hw.0* %85, i32 %86, i64* %10)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  br label %392

91:                                               ; preds = %74
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %93 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %95, align 8
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %98 = bitcast %struct.ixgbe_hw* %97 to %struct.ixgbe_hw.0*
  %99 = load i32, i32* @IXGBE_SFF_QSFP_1GBE_COMP, align 4
  %100 = call i64 %96(%struct.ixgbe_hw.0* %98, i32 %99, i64* %9)
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %392

104:                                              ; preds = %91
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @IXGBE_SFF_QSFP_DA_PASSIVE_CABLE, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load i64, i64* @ixgbe_phy_qsfp_passive_unknown, align 8
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %112 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %115 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load i32, i32* @ixgbe_sfp_type_da_cu_core0, align 4
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  br label %129

124:                                              ; preds = %109
  %125 = load i32, i32* @ixgbe_sfp_type_da_cu_core1, align 4
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %127 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  br label %129

129:                                              ; preds = %124, %119
  br label %237

130:                                              ; preds = %104
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %133 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %134 = or i64 %132, %133
  %135 = and i64 %131, %134
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %130
  %138 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %139 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i32, i32* @ixgbe_sfp_type_srlr_core0, align 4
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %146 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  br label %153

148:                                              ; preds = %137
  %149 = load i32, i32* @ixgbe_sfp_type_srlr_core1, align 4
  %150 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %151 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  br label %153

153:                                              ; preds = %148, %143
  br label %236

154:                                              ; preds = %130
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* @IXGBE_SFF_QSFP_DA_ACTIVE_CABLE, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  store i32 1, i32* %16, align 4
  br label %160

160:                                              ; preds = %159, %154
  %161 = load i32, i32* %16, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %204, label %163

163:                                              ; preds = %160
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %165 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %167, align 8
  %169 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %170 = bitcast %struct.ixgbe_hw* %169 to %struct.ixgbe_hw.0*
  %171 = load i32, i32* @IXGBE_SFF_QSFP_CONNECTOR, align 4
  %172 = call i64 %168(%struct.ixgbe_hw.0* %170, i32 %171, i64* %13)
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %174 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %176, align 8
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %179 = bitcast %struct.ixgbe_hw* %178 to %struct.ixgbe_hw.0*
  %180 = load i32, i32* @IXGBE_SFF_QSFP_CABLE_LENGTH, align 4
  %181 = call i64 %177(%struct.ixgbe_hw.0* %179, i32 %180, i64* %14)
  %182 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %183 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %185, align 8
  %187 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %188 = bitcast %struct.ixgbe_hw* %187 to %struct.ixgbe_hw.0*
  %189 = load i32, i32* @IXGBE_SFF_QSFP_DEVICE_TECH, align 4
  %190 = call i64 %186(%struct.ixgbe_hw.0* %188, i32 %189, i64* %15)
  %191 = load i64, i64* %13, align 8
  %192 = load i64, i64* @IXGBE_SFF_QSFP_CONNECTOR_NOT_SEPARABLE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %163
  %195 = load i64, i64* %14, align 8
  %196 = icmp sgt i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i64, i64* %15, align 8
  %199 = ashr i64 %198, 4
  %200 = load i64, i64* @IXGBE_SFF_QSFP_TRANSMITER_850NM_VCSEL, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store i32 1, i32* %16, align 4
  br label %203

203:                                              ; preds = %202, %197, %194, %163
  br label %204

204:                                              ; preds = %203, %160
  %205 = load i32, i32* %16, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %228

207:                                              ; preds = %204
  %208 = load i64, i64* @ixgbe_phy_qsfp_active_unknown, align 8
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %210 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  store i64 %208, i64* %211, align 8
  %212 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %213 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %207
  %218 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core0, align 4
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %220 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  store i32 %218, i32* %221, align 8
  br label %227

222:                                              ; preds = %207
  %223 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core1, align 4
  %224 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %225 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  store i32 %223, i32* %226, align 8
  br label %227

227:                                              ; preds = %222, %217
  br label %235

228:                                              ; preds = %204
  %229 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %230 = ptrtoint i8* %229 to i64
  %231 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %232 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  store i64 %230, i64* %233, align 8
  %234 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %234, i64* %2, align 8
  br label %406

235:                                              ; preds = %227
  br label %236

236:                                              ; preds = %235, %153
  br label %237

237:                                              ; preds = %236, %129
  %238 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %239 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %246 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 2
  store i32 1, i32* %247, align 8
  br label %248

248:                                              ; preds = %244, %237
  %249 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %250 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 3
  store i32 0, i32* %251, align 4
  %252 = load i64, i64* %9, align 8
  %253 = load i64, i64* @IXGBE_SFF_1GBASESX_CAPABLE, align 8
  %254 = and i64 %252, %253
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %248
  %257 = load i64, i64* %10, align 8
  %258 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %259 = and i64 %257, %258
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %271, label %261

261:                                              ; preds = %256, %248
  %262 = load i64, i64* %9, align 8
  %263 = load i64, i64* @IXGBE_SFF_1GBASELX_CAPABLE, align 8
  %264 = and i64 %262, %263
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %261
  %267 = load i64, i64* %10, align 8
  %268 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %269 = and i64 %267, %268
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %266, %256
  %272 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %273 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 3
  store i32 1, i32* %274, align 4
  br label %275

275:                                              ; preds = %271, %266, %261
  %276 = load i64, i64* %10, align 8
  %277 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %278 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %279 = or i64 %277, %278
  %280 = and i64 %276, %279
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %391

282:                                              ; preds = %275
  %283 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %284 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 0
  %287 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %286, align 8
  %288 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %289 = bitcast %struct.ixgbe_hw* %288 to %struct.ixgbe_hw.0*
  %290 = load i32, i32* @IXGBE_SFF_QSFP_VENDOR_OUI_BYTE0, align 4
  %291 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %292 = call i64 %287(%struct.ixgbe_hw.0* %289, i32 %290, i64* %291)
  store i64 %292, i64* %5, align 8
  %293 = load i64, i64* %5, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %282
  br label %392

296:                                              ; preds = %282
  %297 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %298 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %300, align 8
  %302 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %303 = bitcast %struct.ixgbe_hw* %302 to %struct.ixgbe_hw.0*
  %304 = load i32, i32* @IXGBE_SFF_QSFP_VENDOR_OUI_BYTE1, align 4
  %305 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %306 = call i64 %301(%struct.ixgbe_hw.0* %303, i32 %304, i64* %305)
  store i64 %306, i64* %5, align 8
  %307 = load i64, i64* %5, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %296
  br label %392

310:                                              ; preds = %296
  %311 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %312 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  %315 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %314, align 8
  %316 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %317 = bitcast %struct.ixgbe_hw* %316 to %struct.ixgbe_hw.0*
  %318 = load i32, i32* @IXGBE_SFF_QSFP_VENDOR_OUI_BYTE2, align 4
  %319 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %320 = call i64 %315(%struct.ixgbe_hw.0* %317, i32 %318, i64* %319)
  store i64 %320, i64* %5, align 8
  %321 = load i64, i64* %5, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %310
  br label %392

324:                                              ; preds = %310
  %325 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %326 = load i64, i64* %325, align 16
  %327 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT, align 8
  %328 = shl i64 %326, %327
  %329 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT, align 8
  %332 = shl i64 %330, %331
  %333 = or i64 %328, %332
  %334 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %335 = load i64, i64* %334, align 16
  %336 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT, align 8
  %337 = shl i64 %335, %336
  %338 = or i64 %333, %337
  store i64 %338, i64* %6, align 8
  %339 = load i64, i64* %6, align 8
  %340 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_INTEL, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %347

342:                                              ; preds = %324
  %343 = load i64, i64* @ixgbe_phy_qsfp_intel, align 8
  %344 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %345 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 1
  store i64 %343, i64* %346, align 8
  br label %352

347:                                              ; preds = %324
  %348 = load i64, i64* @ixgbe_phy_qsfp_unknown, align 8
  %349 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %350 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 1
  store i64 %348, i64* %351, align 8
  br label %352

352:                                              ; preds = %347, %342
  %353 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %354 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 1
  %357 = load i32 (%struct.ixgbe_hw.2*, i32*)*, i32 (%struct.ixgbe_hw.2*, i32*)** %356, align 8
  %358 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %359 = bitcast %struct.ixgbe_hw* %358 to %struct.ixgbe_hw.2*
  %360 = call i32 %357(%struct.ixgbe_hw.2* %359, i32* %12)
  %361 = load i32, i32* %12, align 4
  %362 = load i32, i32* @IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %390, label %365

365:                                              ; preds = %352
  %366 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %367 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @ixgbe_phy_qsfp_intel, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %365
  store i64 0, i64* %2, align 8
  br label %406

373:                                              ; preds = %365
  %374 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %375 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %373
  %379 = load i32, i32* @drv, align 4
  %380 = call i32 @e_warn(i32 %379, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %406

381:                                              ; preds = %373
  %382 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %383 = call i32 @hw_dbg(%struct.ixgbe_hw* %382, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %384 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %385 = ptrtoint i8* %384 to i64
  %386 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %387 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %387, i32 0, i32 1
  store i64 %385, i64* %388, align 8
  %389 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %389, i64* %2, align 8
  br label %406

390:                                              ; preds = %352
  store i64 0, i64* %2, align 8
  br label %406

391:                                              ; preds = %275
  store i64 0, i64* %2, align 8
  br label %406

392:                                              ; preds = %323, %309, %295, %103, %90, %62
  %393 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %394 = ptrtoint i8* %393 to i32
  %395 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %396 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 0
  store i32 %394, i32* %397, align 8
  %398 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %399 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 4
  store i64 0, i64* %400, align 8
  %401 = load i64, i64* @ixgbe_phy_unknown, align 8
  %402 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %403 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 1
  store i64 %401, i64* %404, align 8
  %405 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %405, i64* %2, align 8
  br label %406

406:                                              ; preds = %392, %391, %390, %381, %378, %372, %228, %67, %35
  %407 = load i64, i64* %2, align 8
  ret i64 %407
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
