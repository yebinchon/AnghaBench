; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_flash_dev = type { i64, i32, i64, i32, i32* }
%struct.nand_chip = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i8*, i8*, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.nand_manufacturer* }
%struct.nand_manufacturer = type { i32 }
%struct.TYPE_4__ = type { i64*, i32 }
%struct.mtd_info = type { i32, i32, i32, i64 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"second ID read did not match %02x,%02x against %02x,%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@nand_flash_ids = common dso_local global %struct.nand_flash_dev* null, align 8
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"device found, Manufacturer ID: 0x%02x, Chip ID: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"bus width %d instead of %d bits\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"%d MiB, %s, erase size: %d KiB, page size: %d, OOB size: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"SLC\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"MLC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_flash_dev*)* @nand_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_detect(%struct.nand_chip* %0, %struct.nand_flash_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_flash_dev*, align 8
  %6 = alloca %struct.nand_manufacturer*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.nand_memory_organization*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_flash_dev* %1, %struct.nand_flash_dev** %5, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %16 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %7, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 10
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %11, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 8
  %23 = call %struct.nand_memory_organization* @nanddev_get_memorg(i32* %22)
  store %struct.nand_memory_organization* %23, %struct.nand_memory_organization** %8, align 8
  %24 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %8, align 8
  %25 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %8, align 8
  %27 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %29 = call i32 @nand_reset(%struct.nand_chip* %28, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %412

34:                                               ; preds = %2
  %35 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %36 = call i32 @nand_select_target(%struct.nand_chip* %35, i32 0)
  %37 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %38 = load i64*, i64** %11, align 8
  %39 = call i32 @nand_readid_op(%struct.nand_chip* %37, i32 0, i64* %38, i32 2)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %412

44:                                               ; preds = %34
  %45 = load i64*, i64** %11, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %12, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = call i32 @nand_readid_op(%struct.nand_chip* %51, i32 0, i64* %52, i32 8)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %412

58:                                               ; preds = %44
  %59 = load i64*, i64** %11, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i64*, i64** %11, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %64, %58
  %71 = load i64, i64* %12, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* %13, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load i64*, i64** %11, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %72, i8* %74, i64 %77, i64 %80)
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %412

84:                                               ; preds = %64
  %85 = load i64*, i64** %11, align 8
  %86 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %87 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = call i32 @ARRAY_SIZE(i64* %89)
  %91 = call i32 @nand_id_len(i64* %85, i32 %90)
  %92 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %93 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %92, i32 0, i32 10
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call %struct.nand_manufacturer* @nand_get_manufacturer(i64 %95)
  store %struct.nand_manufacturer* %96, %struct.nand_manufacturer** %6, align 8
  %97 = load %struct.nand_manufacturer*, %struct.nand_manufacturer** %6, align 8
  %98 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %99 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store %struct.nand_manufacturer* %97, %struct.nand_manufacturer** %100, align 8
  %101 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %102 = icmp ne %struct.nand_flash_dev* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %84
  %104 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** @nand_flash_ids, align 8
  store %struct.nand_flash_dev* %104, %struct.nand_flash_dev** %5, align 8
  br label %105

105:                                              ; preds = %103, %84
  %106 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %114 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %142, %105
  %118 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %119 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %145

122:                                              ; preds = %117
  %123 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %124 = call i64 @is_full_id_nand(%struct.nand_flash_dev* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %128 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %129 = call i64 @find_full_id_nand(%struct.nand_chip* %127, %struct.nand_flash_dev* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %240

132:                                              ; preds = %126
  br label %141

133:                                              ; preds = %122
  %134 = load i64, i64* %13, align 8
  %135 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %136 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %145

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %132
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %144 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %143, i32 1
  store %struct.nand_flash_dev* %144, %struct.nand_flash_dev** %5, align 8
  br label %117

145:                                              ; preds = %139, %117
  %146 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %147 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %152 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %180, label %155

155:                                              ; preds = %150, %145
  %156 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %157 = call i32 @nand_onfi_detect(%struct.nand_chip* %156)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %3, align 4
  br label %412

162:                                              ; preds = %155
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %240

166:                                              ; preds = %162
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %169 = call i32 @nand_jedec_detect(%struct.nand_chip* %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %3, align 4
  br label %412

174:                                              ; preds = %167
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %240

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179, %150
  %181 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %182 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = load i32, i32* @ENODEV, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %412

188:                                              ; preds = %180
  %189 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %190 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* @GFP_KERNEL, align 4
  %193 = call i64 @kstrdup(i32* %191, i32 %192)
  %194 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %195 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  store i64 %193, i64* %196, align 8
  %197 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %198 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %188
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %412

205:                                              ; preds = %188
  %206 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %207 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %205
  %211 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %212 = call i32 @nand_manufacturer_detect(%struct.nand_chip* %211)
  br label %217

213:                                              ; preds = %205
  %214 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %215 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %216 = call i32 @nand_decode_id(%struct.nand_chip* %214, %struct.nand_flash_dev* %215)
  br label %217

217:                                              ; preds = %213, %210
  %218 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %219 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %222 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  %225 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %226 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = shl i32 %228, 20
  %230 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %8, align 8
  %231 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %8, align 8
  %234 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = mul nsw i32 %232, %235
  %237 = call i32 @DIV_ROUND_DOWN_ULL(i32 %229, i32 %236)
  %238 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %8, align 8
  %239 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %238, i32 0, i32 4
  store i32 %237, i32* %239, align 4
  br label %240

240:                                              ; preds = %217, %177, %165, %131
  %241 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %242 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %240
  %246 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %247 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %251 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %250, i32 0, i32 3
  store i64 %249, i64* %251, align 8
  br label %252

252:                                              ; preds = %245, %240
  %253 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %254 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @NAND_BUSWIDTH_AUTO, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %252
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %262 = and i32 %260, %261
  %263 = call i32 @WARN_ON(i32 %262)
  %264 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %265 = call i32 @nand_set_defaults(%struct.nand_chip* %264)
  br label %303

266:                                              ; preds = %252
  %267 = load i32, i32* %9, align 4
  %268 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %269 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %267, %272
  br i1 %273, label %274, label %302

274:                                              ; preds = %266
  %275 = load i64, i64* %12, align 8
  %276 = trunc i64 %275 to i32
  %277 = load i64, i64* %13, align 8
  %278 = inttoptr i64 %277 to i8*
  %279 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %276, i8* %278)
  %280 = load %struct.nand_manufacturer*, %struct.nand_manufacturer** %6, align 8
  %281 = call i32 @nand_manufacturer_name(%struct.nand_manufacturer* %280)
  %282 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %283 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = inttoptr i64 %284 to i8*
  %286 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %281, i8* %285)
  %287 = load i32, i32* %9, align 4
  %288 = icmp ne i32 %287, 0
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i32 16, i32 8
  %291 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %292 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i32 16, i32 8
  %299 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %290, i32 %298)
  %300 = load i32, i32* @EINVAL, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %10, align 4
  br label %405

302:                                              ; preds = %266
  br label %303

303:                                              ; preds = %302, %259
  %304 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %305 = call i32 @nand_decode_bbm_options(%struct.nand_chip* %304)
  %306 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %307 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i8* @ffs(i32 %308)
  %310 = getelementptr i8, i8* %309, i64 -1
  %311 = ptrtoint i8* %310 to i32
  %312 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %313 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 4
  %314 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %315 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %314, i32 0, i32 8
  %316 = call i32 @nanddev_target_size(i32* %315)
  store i32 %316, i32* %14, align 4
  %317 = load i32, i32* %14, align 4
  %318 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %319 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = ashr i32 %317, %320
  %322 = sub nsw i32 %321, 1
  %323 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %324 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %323, i32 0, i32 2
  store i32 %322, i32* %324, align 8
  %325 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %326 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i8* @ffs(i32 %327)
  %329 = getelementptr i8, i8* %328, i64 -1
  %330 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %331 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %330, i32 0, i32 6
  store i8* %329, i8** %331, align 8
  %332 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %333 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %332, i32 0, i32 7
  store i8* %329, i8** %333, align 8
  %334 = load i32, i32* %14, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %303
  %337 = load i32, i32* %14, align 4
  %338 = call i8* @ffs(i32 %337)
  %339 = getelementptr i8, i8* %338, i64 -1
  %340 = ptrtoint i8* %339 to i32
  %341 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %342 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %341, i32 0, i32 3
  store i32 %340, i32* %342, align 4
  br label %354

343:                                              ; preds = %303
  %344 = load i32, i32* %14, align 4
  %345 = ashr i32 %344, 32
  %346 = call i8* @ffs(i32 %345)
  %347 = ptrtoint i8* %346 to i32
  %348 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %349 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %348, i32 0, i32 3
  store i32 %347, i32* %349, align 4
  %350 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %351 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %352, 31
  store i32 %353, i32* %351, align 4
  br label %354

354:                                              ; preds = %343, %336
  %355 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %356 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %359 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = sub nsw i32 %357, %360
  %362 = icmp sgt i32 %361, 16
  br i1 %362, label %363, label %369

363:                                              ; preds = %354
  %364 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %365 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %366 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = or i32 %367, %364
  store i32 %368, i32* %366, align 8
  br label %369

369:                                              ; preds = %363, %354
  %370 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %371 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %370, i32 0, i32 4
  store i32 8, i32* %371, align 8
  %372 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %373 = call i32 @nand_legacy_adjust_cmdfunc(%struct.nand_chip* %372)
  %374 = load i64, i64* %12, align 8
  %375 = trunc i64 %374 to i32
  %376 = load i64, i64* %13, align 8
  %377 = inttoptr i64 %376 to i8*
  %378 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %375, i8* %377)
  %379 = load %struct.nand_manufacturer*, %struct.nand_manufacturer** %6, align 8
  %380 = call i32 @nand_manufacturer_name(%struct.nand_manufacturer* %379)
  %381 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %382 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %381, i32 0, i32 5
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = inttoptr i64 %384 to i8*
  %386 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %380, i8* %385)
  %387 = load i32, i32* %14, align 4
  %388 = ashr i32 %387, 20
  %389 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %390 = call i64 @nand_is_slc(%struct.nand_chip* %389)
  %391 = icmp ne i64 %390, 0
  %392 = zext i1 %391 to i64
  %393 = select i1 %391, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %394 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %395 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = lshr i32 %396, 10
  %398 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %399 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %402 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %388, i8* %393, i32 %397, i32 %400, i32 %403)
  store i32 0, i32* %3, align 4
  br label %412

405:                                              ; preds = %274
  %406 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %407 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %406, i32 0, i32 5
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = call i32 @kfree(i64 %409)
  %411 = load i32, i32* %10, align 4
  store i32 %411, i32* %3, align 4
  br label %412

412:                                              ; preds = %405, %369, %202, %185, %172, %160, %70, %56, %42, %32
  %413 = load i32, i32* %3, align 4
  ret i32 %413
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_memory_organization* @nanddev_get_memorg(i32*) #1

declare dso_local i32 @nand_reset(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_readid_op(%struct.nand_chip*, i32, i64*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i8*, ...) #1

declare dso_local i32 @nand_id_len(i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local %struct.nand_manufacturer* @nand_get_manufacturer(i64) #1

declare dso_local i64 @is_full_id_nand(%struct.nand_flash_dev*) #1

declare dso_local i64 @find_full_id_nand(%struct.nand_chip*, %struct.nand_flash_dev*) #1

declare dso_local i32 @nand_onfi_detect(%struct.nand_chip*) #1

declare dso_local i32 @nand_jedec_detect(%struct.nand_chip*) #1

declare dso_local i64 @kstrdup(i32*, i32) #1

declare dso_local i32 @nand_manufacturer_detect(%struct.nand_chip*) #1

declare dso_local i32 @nand_decode_id(%struct.nand_chip*, %struct.nand_flash_dev*) #1

declare dso_local i32 @DIV_ROUND_DOWN_ULL(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nand_set_defaults(%struct.nand_chip*) #1

declare dso_local i32 @nand_manufacturer_name(%struct.nand_manufacturer*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @nand_decode_bbm_options(%struct.nand_chip*) #1

declare dso_local i8* @ffs(i32) #1

declare dso_local i32 @nanddev_target_size(i32*) #1

declare dso_local i32 @nand_legacy_adjust_cmdfunc(%struct.nand_chip*) #1

declare dso_local i64 @nand_is_slc(%struct.nand_chip*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
