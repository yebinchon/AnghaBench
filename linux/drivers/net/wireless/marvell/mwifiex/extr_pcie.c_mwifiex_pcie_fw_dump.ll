; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_fw_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_fw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, %struct.memory_type_mapping*, %struct.pcie_service_card* }
%struct.memory_type_mapping = type { i64*, i64, i64, i32 }
%struct.pcie_service_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32, i32, i32, i32 }

@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"== mwifiex firmware dump start ==\0A\00", align 1
@RDWR_STATUS_FAILURE = common dso_local global i32 0, align 4
@MWIFIEX_FW_DUMP_MAX_MEMSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Firmware dump Finished!\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"PCIE write err\0A\00", align 1
@DUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%s_SIZE=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Vmalloc %s failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Start %s output, please wait...\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"pre-allocated buf not enough\0A\00", align 1
@MWIFIEX_SIZE_4K = common dso_local global i64 0, align 8
@RDWR_STATUS_DONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"%s done: size=0x%tx\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"== mwifiex firmware dump end ==\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_pcie_fw_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_pcie_fw_dump(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.pcie_service_card*, align 8
  %4 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.memory_type_mapping*, align 8
  %21 = alloca %struct.memory_type_mapping*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 2
  %24 = load %struct.pcie_service_card*, %struct.pcie_service_card** %23, align 8
  store %struct.pcie_service_card* %24, %struct.pcie_service_card** %3, align 8
  %25 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %26 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %27, align 8
  store %struct.mwifiex_pcie_card_reg* %28, %struct.mwifiex_pcie_card_reg** %4, align 8
  store i64 0, i64* %16, align 8
  %29 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %30 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  br label %300

35:                                               ; preds = %1
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %43, i32 0, i32 1
  %45 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %45, i64 %46
  store %struct.memory_type_mapping* %47, %struct.memory_type_mapping** %20, align 8
  %48 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %20, align 8
  %49 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %20, align 8
  %54 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @vfree(i64* %55)
  %57 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %20, align 8
  %58 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %57, i32 0, i32 0
  store i64* null, i64** %58, align 8
  br label %59

59:                                               ; preds = %52, %42
  %60 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %20, align 8
  %61 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %13, align 8
  br label %36

65:                                               ; preds = %36
  %66 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %67 = load i32, i32* @MSG, align 4
  %68 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %66, i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call i32 @mwifiex_pcie_rdwr_firmware(%struct.mwifiex_adapter* %69, i64 %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %300

76:                                               ; preds = %65
  %77 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %78 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %5, align 4
  %80 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @mwifiex_read_reg_byte(%struct.mwifiex_adapter* %80, i32 %81, i64* %11)
  %83 = load i64, i64* %11, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i64 1, i64* %12, align 8
  br label %88

86:                                               ; preds = %76
  %87 = load i64, i64* %11, align 8
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %86, %85
  store i64 0, i64* %13, align 8
  br label %89

89:                                               ; preds = %293, %88
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %12, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %296

93:                                               ; preds = %89
  %94 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %94, i32 0, i32 1
  %96 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %96, i64 %97
  store %struct.memory_type_mapping* %98, %struct.memory_type_mapping** %21, align 8
  store i64 0, i64* %18, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %132

101:                                              ; preds = %93
  %102 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %103 = load i64, i64* %16, align 8
  %104 = call i32 @mwifiex_pcie_rdwr_firmware(%struct.mwifiex_adapter* %102, i64 %103)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %300

109:                                              ; preds = %101
  %110 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %111 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %5, align 4
  store i64 0, i64* %14, align 8
  br label %113

113:                                              ; preds = %128, %109
  %114 = load i64, i64* %14, align 8
  %115 = icmp ult i64 %114, 4
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @mwifiex_read_reg_byte(%struct.mwifiex_adapter* %117, i32 %118, i64* %15)
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* %14, align 8
  %122 = mul i64 %121, 8
  %123 = shl i64 %120, %122
  %124 = load i64, i64* %18, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %18, align 8
  %126 = load i32, i32* %5, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %116
  %129 = load i64, i64* %14, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %14, align 8
  br label %113

131:                                              ; preds = %113
  br label %134

132:                                              ; preds = %93
  %133 = load i64, i64* @MWIFIEX_FW_DUMP_MAX_MEMSIZE, align 8
  store i64 %133, i64* %18, align 8
  br label %134

134:                                              ; preds = %132, %131
  %135 = load i64, i64* %18, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %134
  %138 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %139 = load i32, i32* @MSG, align 4
  %140 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %138, i32 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %142 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %143 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %146 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @mwifiex_write_reg(%struct.mwifiex_adapter* %141, i32 %144, i32 %147)
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %19, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %137
  %152 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %153 = load i32, i32* @ERROR, align 4
  %154 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %152, i32 %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %300

155:                                              ; preds = %137
  br label %296

156:                                              ; preds = %134
  %157 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %158 = load i32, i32* @DUMP, align 4
  %159 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %160 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* %18, align 8
  %163 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %157, i32 %158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %161, i64 %162)
  %164 = load i64, i64* %18, align 8
  %165 = add i64 %164, 1
  %166 = call i64* @vmalloc(i64 %165)
  %167 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %168 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %167, i32 0, i32 0
  store i64* %166, i64** %168, align 8
  %169 = load i64, i64* %18, align 8
  %170 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %171 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  %172 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %173 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = icmp ne i64* %174, null
  br i1 %175, label %183, label %176

176:                                              ; preds = %156
  %177 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %178 = load i32, i32* @ERROR, align 4
  %179 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %180 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %177, i32 %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  br label %300

183:                                              ; preds = %156
  %184 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %185 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  store i64* %186, i64** %8, align 8
  %187 = load i64*, i64** %8, align 8
  %188 = load i64, i64* %18, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  store i64* %189, i64** %9, align 8
  %190 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %191 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %16, align 8
  %193 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %194 = load i32, i32* @DUMP, align 4
  %195 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %196 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %193, i32 %194, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %291, %183
  %200 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %201 = load i64, i64* %16, align 8
  %202 = call i32 @mwifiex_pcie_rdwr_firmware(%struct.mwifiex_adapter* %200, i64 %201)
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  %204 = load i32, i32* %17, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %300

207:                                              ; preds = %199
  %208 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %209 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %6, align 4
  %211 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %212 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %6, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %268, %207
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp ule i32 %216, %217
  br i1 %218, label %219, label %271

219:                                              ; preds = %215
  %220 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %221 = load i32, i32* %5, align 4
  %222 = load i64*, i64** %8, align 8
  %223 = call i32 @mwifiex_read_reg_byte(%struct.mwifiex_adapter* %220, i32 %221, i64* %222)
  %224 = load i64*, i64** %8, align 8
  %225 = load i64*, i64** %9, align 8
  %226 = icmp ult i64* %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = load i64*, i64** %8, align 8
  %229 = getelementptr inbounds i64, i64* %228, i32 1
  store i64* %229, i64** %8, align 8
  br label %268

230:                                              ; preds = %219
  %231 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %232 = load i32, i32* @ERROR, align 4
  %233 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %231, i32 %232, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %234 = load i64, i64* %18, align 8
  %235 = load i64, i64* @MWIFIEX_SIZE_4K, align 8
  %236 = add i64 %234, %235
  %237 = call i64* @vzalloc(i64 %236)
  store i64* %237, i64** %10, align 8
  %238 = load i64*, i64** %10, align 8
  %239 = icmp ne i64* %238, null
  br i1 %239, label %241, label %240

240:                                              ; preds = %230
  br label %300

241:                                              ; preds = %230
  %242 = load i64*, i64** %10, align 8
  %243 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %244 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = load i64, i64* %18, align 8
  %247 = call i32 @memcpy(i64* %242, i64* %245, i64 %246)
  %248 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %249 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %248, i32 0, i32 0
  %250 = load i64*, i64** %249, align 8
  %251 = call i32 @vfree(i64* %250)
  %252 = load i64*, i64** %10, align 8
  %253 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %254 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %253, i32 0, i32 0
  store i64* %252, i64** %254, align 8
  store i64* null, i64** %10, align 8
  %255 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %256 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %255, i32 0, i32 0
  %257 = load i64*, i64** %256, align 8
  %258 = load i64, i64* %18, align 8
  %259 = getelementptr inbounds i64, i64* %257, i64 %258
  store i64* %259, i64** %8, align 8
  %260 = load i64, i64* @MWIFIEX_SIZE_4K, align 8
  %261 = load i64, i64* %18, align 8
  %262 = add i64 %261, %260
  store i64 %262, i64* %18, align 8
  %263 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %264 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %263, i32 0, i32 0
  %265 = load i64*, i64** %264, align 8
  %266 = load i64, i64* %18, align 8
  %267 = getelementptr inbounds i64, i64* %265, i64 %266
  store i64* %267, i64** %9, align 8
  br label %268

268:                                              ; preds = %241, %227
  %269 = load i32, i32* %5, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %5, align 4
  br label %215

271:                                              ; preds = %215
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* @RDWR_STATUS_DONE, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  br label %291

276:                                              ; preds = %271
  %277 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %278 = load i32, i32* @DUMP, align 4
  %279 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %280 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = load i64*, i64** %8, align 8
  %283 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %21, align 8
  %284 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %283, i32 0, i32 0
  %285 = load i64*, i64** %284, align 8
  %286 = ptrtoint i64* %282 to i64
  %287 = ptrtoint i64* %285 to i64
  %288 = sub i64 %286, %287
  %289 = sdiv exact i64 %288, 8
  %290 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %277, i32 %278, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %281, i64 %289)
  br label %292

291:                                              ; preds = %275
  br i1 true, label %199, label %292

292:                                              ; preds = %291, %276
  br label %293

293:                                              ; preds = %292
  %294 = load i64, i64* %13, align 8
  %295 = add i64 %294, 1
  store i64 %295, i64* %13, align 8
  br label %89

296:                                              ; preds = %155, %89
  %297 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %298 = load i32, i32* @MSG, align 4
  %299 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %297, i32 %298, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %300

300:                                              ; preds = %296, %240, %206, %176, %151, %108, %75, %34
  ret void
}

declare dso_local i32 @vfree(i64*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_pcie_rdwr_firmware(%struct.mwifiex_adapter*, i64) #1

declare dso_local i32 @mwifiex_read_reg_byte(%struct.mwifiex_adapter*, i32, i64*) #1

declare dso_local i32 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i64* @vmalloc(i64) #1

declare dso_local i64* @vzalloc(i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
