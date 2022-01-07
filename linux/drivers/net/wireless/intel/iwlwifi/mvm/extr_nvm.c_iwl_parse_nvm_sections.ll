; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_parse_nvm_sections.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_parse_nvm_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.iwl_nvm_data = type { i32 }
%struct.iwl_mvm = type { %struct.TYPE_7__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.iwl_nvm_section* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.iwl_nvm_section = type { i64 }

@IWL_NVM_EXT = common dso_local global i64 0, align 8
@NVM_SECTION_TYPE_SW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Can't parse empty OTP/NVM sections\0A\00", align 1
@IWL_NVM_SDP = common dso_local global i64 0, align 8
@NVM_SECTION_TYPE_REGULATORY_SDP = common dso_local global i64 0, align 8
@NVM_SECTION_TYPE_REGULATORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Can't parse empty family 8000 OTP/NVM sections\0A\00", align 1
@NVM_SECTION_TYPE_MAC_OVERRIDE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Can't parse mac_address, empty sections\0A\00", align 1
@NVM_SECTION_TYPE_PHY_SKU = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Can't parse phy_sku in B0, empty sections\0A\00", align 1
@NVM_SECTION_TYPE_CALIBRATION = common dso_local global i64 0, align 8
@iwlwifi_mod_params = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@IWL_UCODE_TLV_CAPA_LAR_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_nvm_data* (%struct.iwl_mvm*)* @iwl_parse_nvm_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_nvm_data* @iwl_parse_nvm_sections(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_nvm_data*, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_nvm_section*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 3
  %15 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %14, align 8
  store %struct.iwl_nvm_section* %15, %struct.iwl_nvm_section** %4, align 8
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IWL_NVM_EXT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %1
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 3
  %28 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %27, align 8
  %29 = load i64, i64* @NVM_SECTION_TYPE_SW, align 8
  %30 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %28, i64 %29
  %31 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %25
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 3
  %37 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %36, align 8
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %37, i64 %42
  %44 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %34, %25
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %49 = call i32 @IWL_ERR(%struct.iwl_mvm* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.iwl_nvm_data* null, %struct.iwl_nvm_data** %2, align 8
  br label %224

50:                                               ; preds = %34
  br label %127

51:                                               ; preds = %1
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %52, i32 0, i32 2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IWL_NVM_SDP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i64, i64* @NVM_SECTION_TYPE_REGULATORY_SDP, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %12, align 4
  br label %67

64:                                               ; preds = %51
  %65 = load i64, i64* @NVM_SECTION_TYPE_REGULATORY, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %68, i32 0, i32 3
  %70 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %69, align 8
  %71 = load i64, i64* @NVM_SECTION_TYPE_SW, align 8
  %72 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %70, i64 %71
  %73 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %77, i32 0, i32 3
  %79 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %79, i64 %81
  %83 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %76, %67
  %87 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %88 = call i32 @IWL_ERR(%struct.iwl_mvm* %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store %struct.iwl_nvm_data* null, %struct.iwl_nvm_data** %2, align 8
  br label %224

89:                                               ; preds = %76
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %90, i32 0, i32 3
  %92 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %91, align 8
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %92, i64 %97
  %99 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %89
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %104 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %103, i32 0, i32 3
  %105 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %104, align 8
  %106 = load i64, i64* @NVM_SECTION_TYPE_MAC_OVERRIDE, align 8
  %107 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %105, i64 %106
  %108 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %102
  %112 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %113 = call i32 @IWL_ERR(%struct.iwl_mvm* %112, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store %struct.iwl_nvm_data* null, %struct.iwl_nvm_data** %2, align 8
  br label %224

114:                                              ; preds = %102, %89
  %115 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %116 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %115, i32 0, i32 3
  %117 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %116, align 8
  %118 = load i64, i64* @NVM_SECTION_TYPE_PHY_SKU, align 8
  %119 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %117, i64 %118
  %120 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %114
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %125 = call i32 @IWL_ERR(%struct.iwl_mvm* %124, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store %struct.iwl_nvm_data* null, %struct.iwl_nvm_data** %2, align 8
  br label %224

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %50
  %128 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %4, align 8
  %129 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %130 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %129, i32 0, i32 1
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %128, i64 %133
  %135 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  store i32* %137, i32** %5, align 8
  %138 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %4, align 8
  %139 = load i64, i64* @NVM_SECTION_TYPE_SW, align 8
  %140 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %138, i64 %139
  %141 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i32*
  store i32* %143, i32** %6, align 8
  %144 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %4, align 8
  %145 = load i64, i64* @NVM_SECTION_TYPE_CALIBRATION, align 8
  %146 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %144, i64 %145
  %147 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i32*
  store i32* %149, i32** %7, align 8
  %150 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %4, align 8
  %151 = load i64, i64* @NVM_SECTION_TYPE_MAC_OVERRIDE, align 8
  %152 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %150, i64 %151
  %153 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i32*
  store i32* %155, i32** %9, align 8
  %156 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %4, align 8
  %157 = load i64, i64* @NVM_SECTION_TYPE_PHY_SKU, align 8
  %158 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %156, i64 %157
  %159 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to i32*
  store i32* %161, i32** %10, align 8
  %162 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %163 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %162, i32 0, i32 2
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @IWL_NVM_SDP, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %127
  %172 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %4, align 8
  %173 = load i64, i64* @NVM_SECTION_TYPE_REGULATORY_SDP, align 8
  %174 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %172, i64 %173
  %175 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to i32*
  br label %185

178:                                              ; preds = %127
  %179 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %4, align 8
  %180 = load i64, i64* @NVM_SECTION_TYPE_REGULATORY, align 8
  %181 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %179, i64 %180
  %182 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to i32*
  br label %185

185:                                              ; preds = %178, %171
  %186 = phi i32* [ %177, %171 ], [ %184, %178 ]
  store i32* %186, i32** %8, align 8
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %185
  %190 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %191 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %190, i32 0, i32 0
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load i32, i32* @IWL_UCODE_TLV_CAPA_LAR_SUPPORT, align 4
  %195 = call i64 @fw_has_capa(i32* %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br label %197

197:                                              ; preds = %189, %185
  %198 = phi i1 [ false, %185 ], [ %196, %189 ]
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %11, align 4
  %200 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %201 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %200, i32 0, i32 2
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %204 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %203, i32 0, i32 1
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = load i32*, i32** %5, align 8
  %207 = load i32*, i32** %6, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = load i32*, i32** %8, align 8
  %210 = load i32*, i32** %9, align 8
  %211 = load i32*, i32** %10, align 8
  %212 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %213 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %212, i32 0, i32 0
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %218 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %217, i32 0, i32 0
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %11, align 4
  %223 = call %struct.iwl_nvm_data* @iwl_parse_nvm_data(%struct.TYPE_9__* %202, %struct.TYPE_10__* %205, i32* %206, i32* %207, i32* %208, i32* %209, i32* %210, i32* %211, i32 %216, i32 %221, i32 %222)
  store %struct.iwl_nvm_data* %223, %struct.iwl_nvm_data** %2, align 8
  br label %224

224:                                              ; preds = %197, %123, %111, %86, %47
  %225 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %2, align 8
  ret %struct.iwl_nvm_data* %225
}

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local %struct.iwl_nvm_data* @iwl_parse_nvm_data(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
