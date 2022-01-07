; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_apply_destination.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_apply_destination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, %struct.iwl_fw_dbg_dest_tlv_v1* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.iwl_fw_dbg_dest_tlv_v1 = type { i64, i32, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"WRT: Applying DRAM buffer[0] destination\0A\00", align 1
@MON_BUFF_BASE_ADDR_VER2 = common dso_local global i32 0, align 4
@MON_BUFF_SHIFT_VER2 = common dso_local global i32 0, align 4
@MON_BUFF_END_ADDR_VER2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Applying debug destination %s\0A\00", align 1
@EXTERNAL_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"PCI should have external buffer debug\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"BIT(%u) in address 0x%x is 1, stopping FW configuration\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"FW debug - unknown OP %d\0A\00", align 1
@IWL_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_apply_destination(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_fw_dbg_dest_tlv_v1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %10 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %9, align 8
  store %struct.iwl_fw_dbg_dest_tlv_v1* %10, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %12 = call i64 @iwl_trans_dbg_ini_valid(%struct.iwl_trans* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %1
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %271

21:                                               ; preds = %14
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %23 = call i32 @IWL_DEBUG_FW(%struct.iwl_trans* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %25 = load i32, i32* @MON_BUFF_BASE_ADDR_VER2, align 4
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %27 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MON_BUFF_SHIFT_VER2, align 4
  %34 = ashr i32 %32, %33
  %35 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %24, i32 %25, i32 %34)
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %37 = load i32, i32* @MON_BUFF_END_ADDR_VER2, align 4
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %46 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %44, %51
  %53 = sub nsw i32 %52, 256
  %54 = load i32, i32* @MON_BUFF_SHIFT_VER2, align 4
  %55 = ashr i32 %53, %54
  %56 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %36, i32 %37, i32 %55)
  br label %271

57:                                               ; preds = %1
  %58 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %59 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %60 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @get_fw_dbg_mode_string(i64 %61)
  %63 = call i32 @IWL_INFO(%struct.iwl_trans* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %65 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @EXTERNAL_MODE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %57
  %70 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %71 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %72 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @iwl_pcie_alloc_fw_monitor(%struct.iwl_trans* %70, i32 %73)
  br label %78

75:                                               ; preds = %57
  %76 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %77 = call i32 @IWL_WARN(%struct.iwl_trans* %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %69
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %173, %78
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %82 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %176

86:                                               ; preds = %79
  %87 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %88 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %87, i32 0, i32 5
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %97 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %96, i32 0, i32 5
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %106 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %105, i32 0, i32 5
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %161 [
    i32 134, label %113
    i32 132, label %118
    i32 133, label %124
    i32 131, label %130
    i32 128, label %135
    i32 129, label %141
    i32 130, label %147
  ]

113:                                              ; preds = %86
  %114 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @iwl_write32(%struct.iwl_trans* %114, i32 %115, i32 %116)
  br label %172

118:                                              ; preds = %86
  %119 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @BIT(i32 %121)
  %123 = call i32 @iwl_set_bit(%struct.iwl_trans* %119, i32 %120, i32 %122)
  br label %172

124:                                              ; preds = %86
  %125 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @BIT(i32 %127)
  %129 = call i32 @iwl_clear_bit(%struct.iwl_trans* %125, i32 %126, i32 %128)
  br label %172

130:                                              ; preds = %86
  %131 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @iwl_write_prph(%struct.iwl_trans* %131, i32 %132, i32 %133)
  br label %172

135:                                              ; preds = %86
  %136 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @BIT(i32 %138)
  %140 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %136, i32 %137, i32 %139)
  br label %172

141:                                              ; preds = %86
  %142 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @BIT(i32 %144)
  %146 = call i32 @iwl_clear_bits_prph(%struct.iwl_trans* %142, i32 %143, i32 %145)
  br label %172

147:                                              ; preds = %86
  %148 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @iwl_read_prph(%struct.iwl_trans* %148, i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @BIT(i32 %151)
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %147
  %156 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %5, align 4
  %159 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %156, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32 %158)
  br label %177

160:                                              ; preds = %147
  br label %172

161:                                              ; preds = %86
  %162 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %163 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %164 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %163, i32 0, i32 5
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (%struct.iwl_trans*, i8*, i32, ...) @IWL_ERR(%struct.iwl_trans* %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %161, %160, %141, %135, %130, %124, %118, %113
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %4, align 4
  br label %79

176:                                              ; preds = %79
  br label %177

177:                                              ; preds = %176, %155
  %178 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %179 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @EXTERNAL_MODE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %271

183:                                              ; preds = %177
  %184 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %185 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %271

192:                                              ; preds = %183
  %193 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %194 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %195 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @le32_to_cpu(i32 %196)
  %198 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %199 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %206 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = ashr i32 %204, %207
  %209 = call i32 @iwl_write_prph(%struct.iwl_trans* %193, i32 %197, i32 %208)
  %210 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %211 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %210, i32 0, i32 1
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @IWL_DEVICE_FAMILY_8000, align 8
  %216 = icmp sge i64 %214, %215
  br i1 %216, label %217, label %244

217:                                              ; preds = %192
  %218 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %219 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %220 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @le32_to_cpu(i32 %221)
  %223 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %224 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %231 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i64 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %229, %236
  %238 = sub nsw i32 %237, 256
  %239 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %240 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = ashr i32 %238, %241
  %243 = call i32 @iwl_write_prph(%struct.iwl_trans* %218, i32 %222, i32 %242)
  br label %270

244:                                              ; preds = %192
  %245 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %246 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %247 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @le32_to_cpu(i32 %248)
  %250 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %251 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i64 0
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %258 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %256, %263
  %265 = load %struct.iwl_fw_dbg_dest_tlv_v1*, %struct.iwl_fw_dbg_dest_tlv_v1** %3, align 8
  %266 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, %struct.iwl_fw_dbg_dest_tlv_v1* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %264, %267
  %269 = call i32 @iwl_write_prph(%struct.iwl_trans* %245, i32 %249, i32 %268)
  br label %270

270:                                              ; preds = %244, %217
  br label %271

271:                                              ; preds = %20, %21, %270, %183, %177
  ret void
}

declare dso_local i64 @iwl_trans_dbg_ini_valid(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_FW(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_write_umac_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @IWL_INFO(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @get_fw_dbg_mode_string(i64) #1

declare dso_local i32 @iwl_pcie_alloc_fw_monitor(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_set_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_clear_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
