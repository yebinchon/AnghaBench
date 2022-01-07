; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_NFTL_mount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_NFTL_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NFTLrecord = type { i32, i32*, i32*, i32, i32, i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }
%struct.nftl_uci0 = type { i32, i32, i32, i32 }
%struct.nftl_uci1 = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Could not find valid boot record\0A\00", align 1
@BLOCK_NIL = common dso_local global i32 0, align 4
@BLOCK_NOTEXPLORED = common dso_local global i32 0, align 4
@SECTORSIZE = common dso_local global i32 0, align 4
@ERASE_MARK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Formatting block %d\0A\00", align 1
@BLOCK_RESERVED = common dso_local global i8* null, align 8
@BLOCK_FREE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Block %d: free but referenced in chain %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Block %d: incorrect logical block: %d expected: %d\0A\00", align 1
@FOLD_MARK_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Block %d: incorrectly marked as first block in chain\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Block %d: folding in progress - ignoring first block flag\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Block %d: referencing invalid block %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Block %d: referencing block %d already in another chain\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Could read foldmark at block %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Two chains at blocks %d (len=%d) and %d (len=%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Unreferenced block %d, formatting it\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NFTL_mount(%struct.NFTLrecord* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.NFTLrecord*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nftl_uci0, align 4
  %15 = alloca %struct.nftl_uci1, align 4
  %16 = alloca %struct.mtd_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.NFTLrecord* %0, %struct.NFTLrecord** %3, align 8
  %22 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %23 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.mtd_info*, %struct.mtd_info** %24, align 8
  store %struct.mtd_info* %25, %struct.mtd_info** %16, align 8
  %26 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %27 = call i64 @find_boot_record(%struct.NFTLrecord* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %497

31:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %35 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i32, i32* @BLOCK_NIL, align 4
  %40 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %41 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %32

49:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %416, %49
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %53 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %419

56:                                               ; preds = %50
  %57 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %58 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BLOCK_NOTEXPLORED, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %414

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %337, %66
  %69 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %72 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = mul i32 %70, %73
  %75 = add i32 %74, 8
  %76 = bitcast %struct.nftl_uci0* %14 to i8*
  %77 = call i64 @nftl_read_oob(%struct.mtd_info* %69, i32 %75, i32 8, i64* %17, i8* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %68
  %80 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %83 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = mul i32 %81, %84
  %86 = load i32, i32* @SECTORSIZE, align 4
  %87 = add i32 %85, %86
  %88 = add i32 %87, 8
  %89 = bitcast %struct.nftl_uci1* %15 to i8*
  %90 = call i64 @nftl_read_oob(%struct.mtd_info* %80, i32 %88, i32 8, i64* %17, i8* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %79, %68
  %93 = load i32, i32* @BLOCK_NIL, align 4
  %94 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %95 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  store i32 1, i32* %13, align 4
  br label %338

100:                                              ; preds = %79
  %101 = getelementptr inbounds %struct.nftl_uci0, %struct.nftl_uci0* %14, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.nftl_uci0, %struct.nftl_uci0* %14, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %102, %104
  %106 = call i8* @le16_to_cpu(i32 %105)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %6, align 4
  %108 = getelementptr inbounds %struct.nftl_uci0, %struct.nftl_uci0* %14, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.nftl_uci0, %struct.nftl_uci0* %14, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %109, %111
  %113 = call i8* @le16_to_cpu(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %7, align 4
  %115 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %15, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %15, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %116, %118
  %120 = call i8* @le16_to_cpu(i32 %119)
  %121 = ptrtoint i8* %120 to i32
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %6, align 4
  %123 = lshr i32 %122, 15
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, 32767
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @ERASE_MARK, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %100
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %135 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp uge i32 %133, %136
  br i1 %137, label %138, label %193

138:                                              ; preds = %132, %100
  %139 = load i32, i32* %12, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %182

141:                                              ; preds = %138
  %142 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i64 @check_and_mark_free_block(%struct.NFTLrecord* %142, i32 %143)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %141
  %147 = load i32, i32* %9, align 4
  %148 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  %149 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i64 @NFTL_formatblock(%struct.NFTLrecord* %149, i32 %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %146
  %154 = load i8*, i8** @BLOCK_RESERVED, align 8
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %157 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  br label %171

162:                                              ; preds = %146
  %163 = load i8*, i8** @BLOCK_FREE, align 8
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %166 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %164, i32* %170, align 4
  br label %171

171:                                              ; preds = %162, %153
  br label %181

172:                                              ; preds = %141
  %173 = load i8*, i8** @BLOCK_FREE, align 8
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %176 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %174, i32* %180, align 4
  br label %181

181:                                              ; preds = %172, %171
  br label %415

182:                                              ; preds = %138
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %10, align 4
  %185 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %183, i32 %184)
  %186 = load i32, i32* @BLOCK_NIL, align 4
  %187 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %188 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %186, i32* %192, align 4
  store i32 1, i32* %13, align 4
  br label %338

193:                                              ; preds = %132
  %194 = load i32, i32* %12, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %196
  br label %415

200:                                              ; preds = %196
  %201 = load i32, i32* %6, align 4
  store i32 %201, i32* %5, align 4
  br label %231

202:                                              ; preds = %193
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %5, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %5, align 4
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %207, i32 %208, i32 %209)
  store i32 1, i32* %13, align 4
  br label %211

211:                                              ; preds = %206, %202
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %211
  %215 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @get_fold_mark(%struct.NFTLrecord* %215, i32 %216)
  %218 = load i32, i32* @FOLD_MARK_IN_PROGRESS, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %223, label %220

220:                                              ; preds = %214
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 65535
  br i1 %222, label %223, label %226

223:                                              ; preds = %220, %214
  %224 = load i32, i32* %9, align 4
  %225 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %224)
  store i32 1, i32* %13, align 4
  br label %229

226:                                              ; preds = %220
  %227 = load i32, i32* %9, align 4
  %228 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %226, %223
  br label %230

230:                                              ; preds = %229, %211
  br label %231

231:                                              ; preds = %230, %200
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %7, align 4
  %235 = icmp eq i32 %234, 65535
  br i1 %235, label %236, label %244

236:                                              ; preds = %231
  %237 = load i32, i32* @BLOCK_NIL, align 4
  %238 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %239 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 %237, i32* %243, align 4
  br label %338

244:                                              ; preds = %231
  %245 = load i32, i32* %7, align 4
  %246 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %247 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp uge i32 %245, %248
  br i1 %249, label %250, label %261

250:                                              ; preds = %244
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %7, align 4
  %253 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %251, i32 %252)
  store i32 1, i32* %13, align 4
  %254 = load i32, i32* @BLOCK_NIL, align 4
  %255 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %256 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32 %254, i32* %260, align 4
  br label %338

261:                                              ; preds = %244
  %262 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %263 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @BLOCK_NOTEXPLORED, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %326

271:                                              ; preds = %261
  %272 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %273 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %7, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @BLOCK_NIL, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %314

281:                                              ; preds = %271
  %282 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %283 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %5, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %7, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %314

291:                                              ; preds = %281
  %292 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @get_fold_mark(%struct.NFTLrecord* %292, i32 %293)
  %295 = load i32, i32* @FOLD_MARK_IN_PROGRESS, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %314

297:                                              ; preds = %291
  %298 = load i32, i32* %7, align 4
  %299 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %298)
  %300 = load i32, i32* %7, align 4
  %301 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %302 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %9, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32 %300, i32* %306, align 4
  %307 = load i32, i32* @BLOCK_NIL, align 4
  %308 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %309 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %5, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  store i32 %307, i32* %313, align 4
  br label %325

314:                                              ; preds = %291, %281, %271
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %7, align 4
  %317 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %315, i32 %316)
  store i32 1, i32* %13, align 4
  %318 = load i32, i32* @BLOCK_NIL, align 4
  %319 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %320 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %9, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  store i32 %318, i32* %324, align 4
  br label %325

325:                                              ; preds = %314, %297
  br label %338

326:                                              ; preds = %261
  %327 = load i32, i32* %7, align 4
  %328 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %329 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %9, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  store i32 %327, i32* %333, align 4
  %334 = load i32, i32* %7, align 4
  store i32 %334, i32* %9, align 4
  br label %335

335:                                              ; preds = %326
  br label %336

336:                                              ; preds = %335
  br label %337

337:                                              ; preds = %336
  br label %68

338:                                              ; preds = %325, %250, %236, %182, %92
  %339 = load i32, i32* %13, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %338
  %342 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %343 = load i32, i32* %10, align 4
  %344 = call i32 @format_chain(%struct.NFTLrecord* %342, i32 %343)
  br label %413

345:                                              ; preds = %338
  %346 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %347 = load i32, i32* %10, align 4
  %348 = call i32 @get_fold_mark(%struct.NFTLrecord* %346, i32 %347)
  store i32 %348, i32* %21, align 4
  %349 = load i32, i32* %21, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %345
  %352 = load i32, i32* %10, align 4
  %353 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %352)
  %354 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %355 = load i32, i32* %10, align 4
  %356 = call i32 @format_chain(%struct.NFTLrecord* %354, i32 %355)
  br label %412

357:                                              ; preds = %345
  %358 = load i32, i32* %21, align 4
  %359 = load i32, i32* @FOLD_MARK_IN_PROGRESS, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %357
  %362 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %363 = load i32, i32* %10, align 4
  %364 = call i32 @check_sectors_in_chain(%struct.NFTLrecord* %362, i32 %363)
  br label %365

365:                                              ; preds = %361, %357
  %366 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %367 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %366, i32 0, i32 1
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* %5, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  store i32 %372, i32* %18, align 4
  %373 = load i32, i32* %18, align 4
  %374 = load i32, i32* @BLOCK_NIL, align 4
  %375 = icmp ne i32 %373, %374
  br i1 %375, label %376, label %403

376:                                              ; preds = %365
  %377 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %378 = load i32, i32* %18, align 4
  %379 = call i32 @calc_chain_length(%struct.NFTLrecord* %377, i32 %378)
  store i32 %379, i32* %20, align 4
  %380 = load i32, i32* %18, align 4
  %381 = load i32, i32* %20, align 4
  %382 = load i32, i32* %10, align 4
  %383 = load i32, i32* %12, align 4
  %384 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %380, i32 %381, i32 %382, i32 %383)
  %385 = load i32, i32* %12, align 4
  %386 = load i32, i32* %20, align 4
  %387 = icmp uge i32 %385, %386
  br i1 %387, label %388, label %397

388:                                              ; preds = %376
  %389 = load i32, i32* %18, align 4
  store i32 %389, i32* %19, align 4
  %390 = load i32, i32* %10, align 4
  %391 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %392 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %391, i32 0, i32 1
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %5, align 4
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  store i32 %390, i32* %396, align 4
  br label %399

397:                                              ; preds = %376
  %398 = load i32, i32* %10, align 4
  store i32 %398, i32* %19, align 4
  br label %399

399:                                              ; preds = %397, %388
  %400 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %401 = load i32, i32* %19, align 4
  %402 = call i32 @format_chain(%struct.NFTLrecord* %400, i32 %401)
  br label %411

403:                                              ; preds = %365
  %404 = load i32, i32* %10, align 4
  %405 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %406 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %405, i32 0, i32 1
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %5, align 4
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  store i32 %404, i32* %410, align 4
  br label %411

411:                                              ; preds = %403, %399
  br label %412

412:                                              ; preds = %411, %351
  br label %413

413:                                              ; preds = %412, %341
  br label %414

414:                                              ; preds = %413, %56
  br label %415

415:                                              ; preds = %414, %199, %181
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %10, align 4
  %418 = add i32 %417, 1
  store i32 %418, i32* %10, align 4
  br label %50

419:                                              ; preds = %50
  %420 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %421 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %420, i32 0, i32 5
  store i64 0, i64* %421, align 8
  %422 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %423 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %422, i32 0, i32 6
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = call i8* @le16_to_cpu(i32 %425)
  %427 = ptrtoint i8* %426 to i32
  %428 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %429 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %428, i32 0, i32 4
  store i32 %427, i32* %429, align 4
  store i32 0, i32* %9, align 4
  br label %430

430:                                              ; preds = %493, %419
  %431 = load i32, i32* %9, align 4
  %432 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %433 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = icmp ult i32 %431, %434
  br i1 %435, label %436, label %496

436:                                              ; preds = %430
  %437 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %438 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %437, i32 0, i32 2
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %9, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @BLOCK_NOTEXPLORED, align 4
  %445 = icmp eq i32 %443, %444
  br i1 %445, label %446, label %472

446:                                              ; preds = %436
  %447 = load i32, i32* %9, align 4
  %448 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %447)
  %449 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %450 = load i32, i32* %9, align 4
  %451 = call i64 @NFTL_formatblock(%struct.NFTLrecord* %449, i32 %450)
  %452 = icmp slt i64 %451, 0
  br i1 %452, label %453, label %462

453:                                              ; preds = %446
  %454 = load i8*, i8** @BLOCK_RESERVED, align 8
  %455 = ptrtoint i8* %454 to i32
  %456 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %457 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %456, i32 0, i32 2
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %9, align 4
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  store i32 %455, i32* %461, align 4
  br label %471

462:                                              ; preds = %446
  %463 = load i8*, i8** @BLOCK_FREE, align 8
  %464 = ptrtoint i8* %463 to i32
  %465 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %466 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %465, i32 0, i32 2
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %9, align 4
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  store i32 %464, i32* %470, align 4
  br label %471

471:                                              ; preds = %462, %453
  br label %472

472:                                              ; preds = %471, %436
  %473 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %474 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %473, i32 0, i32 2
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %9, align 4
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = zext i32 %479 to i64
  %481 = inttoptr i64 %480 to i8*
  %482 = load i8*, i8** @BLOCK_FREE, align 8
  %483 = icmp eq i8* %481, %482
  br i1 %483, label %484, label %492

484:                                              ; preds = %472
  %485 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %486 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %485, i32 0, i32 5
  %487 = load i64, i64* %486, align 8
  %488 = add nsw i64 %487, 1
  store i64 %488, i64* %486, align 8
  %489 = load i32, i32* %9, align 4
  %490 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %491 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %490, i32 0, i32 4
  store i32 %489, i32* %491, align 4
  br label %492

492:                                              ; preds = %484, %472
  br label %493

493:                                              ; preds = %492
  %494 = load i32, i32* %9, align 4
  %495 = add i32 %494, 1
  store i32 %495, i32* %9, align 4
  br label %430

496:                                              ; preds = %430
  store i32 0, i32* %2, align 4
  br label %497

497:                                              ; preds = %496, %29
  %498 = load i32, i32* %2, align 4
  ret i32 %498
}

declare dso_local i64 @find_boot_record(%struct.NFTLrecord*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @nftl_read_oob(%struct.mtd_info*, i32, i32, i64*, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @check_and_mark_free_block(%struct.NFTLrecord*, i32) #1

declare dso_local i64 @NFTL_formatblock(%struct.NFTLrecord*, i32) #1

declare dso_local i32 @get_fold_mark(%struct.NFTLrecord*, i32) #1

declare dso_local i32 @format_chain(%struct.NFTLrecord*, i32) #1

declare dso_local i32 @check_sectors_in_chain(%struct.NFTLrecord*, i32) #1

declare dso_local i32 @calc_chain_length(%struct.NFTLrecord*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
