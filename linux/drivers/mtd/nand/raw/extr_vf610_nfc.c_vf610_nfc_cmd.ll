; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_subop = type { i32 }
%struct.nand_op_instr = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.vf610_nfc = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@NAND_OP_CMD_INSTR = common dso_local global i64 0, align 8
@CMD_BYTE1_SHIFT = common dso_local global i32 0, align 4
@COMMAND_CMD_BYTE1 = common dso_local global i32 0, align 4
@NAND_OP_ADDR_INSTR = common dso_local global i64 0, align 8
@NAND_OP_DATA_OUT_INSTR = common dso_local global i64 0, align 8
@COMMAND_WRITE_DATA = common dso_local global i32 0, align 4
@CMD_BYTE2_SHIFT = common dso_local global i32 0, align 4
@COMMAND_CMD_BYTE2 = common dso_local global i32 0, align 4
@NAND_OP_WAITRDY_INSTR = common dso_local global i64 0, align 8
@COMMAND_RB_HANDSHAKE = common dso_local global i32 0, align 4
@NAND_OP_DATA_IN_INSTR = common dso_local global i64 0, align 8
@COMMAND_READ_DATA = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NFC_FLASH_CONFIG = common dso_local global i32 0, align 4
@CONFIG_16BIT = common dso_local global i32 0, align 4
@CMD_CODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_subop*)* @vf610_nfc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_nfc_cmd(%struct.nand_chip* %0, %struct.nand_subop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_subop*, align 8
  %6 = alloca %struct.nand_op_instr*, align 8
  %7 = alloca %struct.vf610_nfc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_subop* %1, %struct.nand_subop** %5, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %21 = call %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip* %20)
  store %struct.vf610_nfc* %21, %struct.vf610_nfc** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %23 = call %struct.nand_op_instr* @vf610_get_next_instr(%struct.nand_subop* %22, i32* %8)
  store %struct.nand_op_instr* %23, %struct.nand_op_instr** %6, align 8
  %24 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %25 = icmp ne %struct.nand_op_instr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %301

29:                                               ; preds = %2
  %30 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %31 = icmp ne %struct.nand_op_instr* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %34 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NAND_OP_CMD_INSTR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %40 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CMD_BYTE1_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %14, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* @COMMAND_CMD_BYTE1, align 4
  %49 = load i32, i32* %15, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %15, align 4
  %51 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %52 = call %struct.nand_op_instr* @vf610_get_next_instr(%struct.nand_subop* %51, i32* %8)
  store %struct.nand_op_instr* %52, %struct.nand_op_instr** %6, align 8
  br label %53

53:                                               ; preds = %38, %32, %29
  %54 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %55 = icmp ne %struct.nand_op_instr* %54, null
  br i1 %55, label %56, label %109

56:                                               ; preds = %53
  %57 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %58 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NAND_OP_ADDR_INSTR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %109

62:                                               ; preds = %56
  %63 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @nand_subop_get_num_addr_cyc(%struct.nand_subop* %63, i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @nand_subop_get_addr_start_off(%struct.nand_subop* %66, i32 %67)
  store i32 %68, i32* %18, align 4
  br label %69

69:                                               ; preds = %99, %62
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %75 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %85, label %91

85:                                               ; preds = %73
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @COL_ADDR(i32 %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %98

91:                                               ; preds = %73
  %92 = load i32, i32* %18, align 4
  %93 = sub nsw i32 %92, 2
  %94 = load i32, i32* %19, align 4
  %95 = call i32 @ROW_ADDR(i32 %93, i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %91, %85
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %18, align 4
  br label %69

102:                                              ; preds = %69
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @COMMAND_NADDR_BYTES(i32 %103)
  %105 = load i32, i32* %15, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %15, align 4
  %107 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %108 = call %struct.nand_op_instr* @vf610_get_next_instr(%struct.nand_subop* %107, i32* %8)
  store %struct.nand_op_instr* %108, %struct.nand_op_instr** %6, align 8
  br label %109

109:                                              ; preds = %102, %56, %53
  %110 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %111 = icmp ne %struct.nand_op_instr* %110, null
  br i1 %111, label %112, label %160

112:                                              ; preds = %109
  %113 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %114 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NAND_OP_DATA_OUT_INSTR, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %160

118:                                              ; preds = %112
  %119 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @nand_subop_get_data_len(%struct.nand_subop* %119, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @nand_subop_get_data_start_off(%struct.nand_subop* %122, i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %126 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %16, align 4
  %130 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %131 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @NFC_MAIN_AREA(i32 0)
  %134 = add nsw i64 %132, %133
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %134, %136
  %138 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %139 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %149 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i32 @vf610_nfc_wr_to_sram(i64 %137, i64 %146, i32 %147, i32 %153)
  %155 = load i32, i32* @COMMAND_WRITE_DATA, align 4
  %156 = load i32, i32* %15, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %15, align 4
  %158 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %159 = call %struct.nand_op_instr* @vf610_get_next_instr(%struct.nand_subop* %158, i32* %8)
  store %struct.nand_op_instr* %159, %struct.nand_op_instr** %6, align 8
  br label %160

160:                                              ; preds = %118, %112, %109
  %161 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %162 = icmp ne %struct.nand_op_instr* %161, null
  br i1 %162, label %163, label %184

163:                                              ; preds = %160
  %164 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %165 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @NAND_OP_CMD_INSTR, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %163
  %170 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %171 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @CMD_BYTE2_SHIFT, align 4
  %176 = shl i32 %174, %175
  %177 = load i32, i32* %13, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* @COMMAND_CMD_BYTE2, align 4
  %180 = load i32, i32* %15, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %15, align 4
  %182 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %183 = call %struct.nand_op_instr* @vf610_get_next_instr(%struct.nand_subop* %182, i32* %8)
  store %struct.nand_op_instr* %183, %struct.nand_op_instr** %6, align 8
  br label %184

184:                                              ; preds = %169, %163, %160
  %185 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %186 = icmp ne %struct.nand_op_instr* %185, null
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %189 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @NAND_OP_WAITRDY_INSTR, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %187
  %194 = load i32, i32* @COMMAND_RB_HANDSHAKE, align 4
  %195 = load i32, i32* %15, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %15, align 4
  %197 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %198 = call %struct.nand_op_instr* @vf610_get_next_instr(%struct.nand_subop* %197, i32* %8)
  store %struct.nand_op_instr* %198, %struct.nand_op_instr** %6, align 8
  br label %199

199:                                              ; preds = %193, %187, %184
  %200 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %201 = icmp ne %struct.nand_op_instr* %200, null
  br i1 %201, label %202, label %223

202:                                              ; preds = %199
  %203 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %204 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @NAND_OP_DATA_IN_INSTR, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %223

208:                                              ; preds = %202
  %209 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @nand_subop_get_data_len(%struct.nand_subop* %209, i32 %210)
  store i32 %211, i32* %9, align 4
  %212 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @nand_subop_get_data_start_off(%struct.nand_subop* %212, i32 %213)
  store i32 %214, i32* %10, align 4
  %215 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %216 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %16, align 4
  %220 = load i32, i32* @COMMAND_READ_DATA, align 4
  %221 = load i32, i32* %15, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %15, align 4
  br label %223

223:                                              ; preds = %208, %202, %199
  %224 = load i32, i32* %16, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %238

226:                                              ; preds = %223
  %227 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %228 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %226
  %234 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %235 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %236 = load i32, i32* @CONFIG_16BIT, align 4
  %237 = call i32 @vf610_nfc_clear(%struct.vf610_nfc* %234, i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %233, %226, %223
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* @CMD_CODE_SHIFT, align 4
  %241 = shl i32 %239, %240
  %242 = load i32, i32* %14, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %14, align 4
  %244 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @vf610_nfc_run(%struct.vf610_nfc* %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %252 = icmp ne %struct.nand_op_instr* %251, null
  br i1 %252, label %253, label %285

253:                                              ; preds = %238
  %254 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %255 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @NAND_OP_DATA_IN_INSTR, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %285

259:                                              ; preds = %253
  %260 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %261 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* %10, align 4
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %265, %267
  %269 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %270 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = call i64 @NFC_MAIN_AREA(i32 0)
  %273 = add nsw i64 %271, %272
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %273, %275
  %277 = load i32, i32* %9, align 4
  %278 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %279 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  %282 = xor i1 %281, true
  %283 = zext i1 %282 to i32
  %284 = call i32 @vf610_nfc_rd_from_sram(i64 %268, i64 %276, i32 %277, i32 %283)
  br label %285

285:                                              ; preds = %259, %253, %238
  %286 = load i32, i32* %16, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %285
  %289 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %290 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %288
  %296 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %297 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %298 = load i32, i32* @CONFIG_16BIT, align 4
  %299 = call i32 @vf610_nfc_set(%struct.vf610_nfc* %296, i32 %297, i32 %298)
  br label %300

300:                                              ; preds = %295, %288, %285
  store i32 0, i32* %3, align 4
  br label %301

301:                                              ; preds = %300, %26
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip*) #1

declare dso_local %struct.nand_op_instr* @vf610_get_next_instr(%struct.nand_subop*, i32*) #1

declare dso_local i32 @nand_subop_get_num_addr_cyc(%struct.nand_subop*, i32) #1

declare dso_local i32 @nand_subop_get_addr_start_off(%struct.nand_subop*, i32) #1

declare dso_local i32 @COL_ADDR(i32, i32) #1

declare dso_local i32 @ROW_ADDR(i32, i32) #1

declare dso_local i32 @COMMAND_NADDR_BYTES(i32) #1

declare dso_local i32 @nand_subop_get_data_len(%struct.nand_subop*, i32) #1

declare dso_local i32 @nand_subop_get_data_start_off(%struct.nand_subop*, i32) #1

declare dso_local i32 @vf610_nfc_wr_to_sram(i64, i64, i32, i32) #1

declare dso_local i64 @NFC_MAIN_AREA(i32) #1

declare dso_local i32 @vf610_nfc_clear(%struct.vf610_nfc*, i32, i32) #1

declare dso_local i32 @vf610_nfc_run(%struct.vf610_nfc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vf610_nfc_rd_from_sram(i64, i64, i32, i32) #1

declare dso_local i32 @vf610_nfc_set(%struct.vf610_nfc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
