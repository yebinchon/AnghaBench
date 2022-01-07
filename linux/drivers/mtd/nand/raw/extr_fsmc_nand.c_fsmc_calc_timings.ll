; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_calc_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_calc_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsmc_nand_data = type { i32 }
%struct.nand_sdr_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fsmc_nand_timings = type { i64, i64, i64, i64, i64, i8* }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FSMC_TAR_MASK = common dso_local global i64 0, align 8
@FSMC_TCLR_MASK = common dso_local global i64 0, align 8
@FSMC_THOLD_MASK = common dso_local global i32 0, align 4
@FSMC_TWAIT_MASK = common dso_local global i32 0, align 4
@FSMC_TSET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsmc_nand_data*, %struct.nand_sdr_timings*, %struct.fsmc_nand_timings*)* @fsmc_calc_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsmc_calc_timings(%struct.fsmc_nand_data* %0, %struct.nand_sdr_timings* %1, %struct.fsmc_nand_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsmc_nand_data*, align 8
  %6 = alloca %struct.nand_sdr_timings*, align 8
  %7 = alloca %struct.fsmc_nand_timings*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fsmc_nand_data* %0, %struct.fsmc_nand_data** %5, align 8
  store %struct.nand_sdr_timings* %1, %struct.nand_sdr_timings** %6, align 8
  store %struct.fsmc_nand_timings* %2, %struct.fsmc_nand_timings** %7, align 8
  %14 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %5, align 8
  %15 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @clk_get_rate(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* @NSEC_PER_SEC, align 8
  %19 = load i64, i64* %8, align 8
  %20 = udiv i64 %18, %19
  store i64 %20, i64* %9, align 8
  %21 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %22 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 30000
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %243

28:                                               ; preds = %3
  %29 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %30 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 1000
  %33 = load i64, i64* %9, align 8
  %34 = call i8* @DIV_ROUND_UP(i32 %32, i64 %33)
  %35 = getelementptr i8, i8* %34, i64 -1
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %38 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %40 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FSMC_TAR_MASK, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %28
  %45 = load i64, i64* @FSMC_TAR_MASK, align 8
  %46 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %47 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %28
  %49 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %50 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 1000
  %53 = load i64, i64* %9, align 8
  %54 = call i8* @DIV_ROUND_UP(i32 %52, i64 %53)
  %55 = getelementptr i8, i8* %54, i64 -1
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %58 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %60 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FSMC_TCLR_MASK, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %48
  %65 = load i64, i64* @FSMC_TCLR_MASK, align 8
  %66 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %67 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %48
  %69 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %70 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %73 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sdiv i32 %76, 1000
  %78 = load i64, i64* %9, align 8
  %79 = call i8* @DIV_ROUND_UP(i32 %77, i64 %78)
  %80 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %81 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %83 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %87 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %68
  %91 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %92 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %90, %68
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %97 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %102 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %107 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %112 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %117 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %122 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %120, %114
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %127 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %126, i32 0, i32 10
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %132 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %130, %124
  %135 = load i32, i32* %11, align 4
  %136 = sdiv i32 %135, 1000
  %137 = load i64, i64* %9, align 8
  %138 = call i8* @DIV_ROUND_UP(i32 %136, i64 %137)
  %139 = ptrtoint i8* %138 to i64
  %140 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %141 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  %142 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %143 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %134
  %147 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %148 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %147, i32 0, i32 2
  store i64 1, i64* %148, align 8
  br label %162

149:                                              ; preds = %134
  %150 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %151 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* @FSMC_THOLD_MASK, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp sgt i64 %152, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i32, i32* @FSMC_THOLD_MASK, align 4
  %158 = sext i32 %157 to i64
  %159 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %160 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %156, %149
  br label %162

162:                                              ; preds = %161, %146
  %163 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %164 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %163, i32 0, i32 11
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %167 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @max(i32 %165, i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = sdiv i32 %170, 1000
  %172 = load i64, i64* %9, align 8
  %173 = call i8* @DIV_ROUND_UP(i32 %171, i64 %172)
  %174 = getelementptr i8, i8* %173, i64 -1
  %175 = ptrtoint i8* %174 to i64
  %176 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %177 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %176, i32 0, i32 3
  store i64 %175, i64* %177, align 8
  %178 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %179 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %162
  %183 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %184 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %183, i32 0, i32 3
  store i64 1, i64* %184, align 8
  br label %198

185:                                              ; preds = %162
  %186 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %187 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @FSMC_TWAIT_MASK, align 4
  %190 = sext i32 %189 to i64
  %191 = icmp sgt i64 %188, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load i32, i32* @FSMC_TWAIT_MASK, align 4
  %194 = sext i32 %193 to i64
  %195 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %196 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %195, i32 0, i32 3
  store i64 %194, i64* %196, align 8
  br label %197

197:                                              ; preds = %192, %185
  br label %198

198:                                              ; preds = %197, %182
  %199 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %200 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %203 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %201, %204
  %206 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %207 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %206, i32 0, i32 12
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %210 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %209, i32 0, i32 13
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %208, %211
  %213 = call i32 @max(i32 %205, i32 %212)
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %13, align 4
  %215 = sdiv i32 %214, 1000
  %216 = load i64, i64* %9, align 8
  %217 = call i8* @DIV_ROUND_UP(i32 %215, i64 %216)
  %218 = getelementptr i8, i8* %217, i64 -1
  %219 = ptrtoint i8* %218 to i64
  %220 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %221 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %220, i32 0, i32 4
  store i64 %219, i64* %221, align 8
  %222 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %223 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %198
  %227 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %228 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %227, i32 0, i32 4
  store i64 1, i64* %228, align 8
  br label %242

229:                                              ; preds = %198
  %230 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %231 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* @FSMC_TSET_MASK, align 4
  %234 = sext i32 %233 to i64
  %235 = icmp sgt i64 %232, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %229
  %237 = load i32, i32* @FSMC_TSET_MASK, align 4
  %238 = sext i32 %237 to i64
  %239 = load %struct.fsmc_nand_timings*, %struct.fsmc_nand_timings** %7, align 8
  %240 = getelementptr inbounds %struct.fsmc_nand_timings, %struct.fsmc_nand_timings* %239, i32 0, i32 4
  store i64 %238, i64* %240, align 8
  br label %241

241:                                              ; preds = %236, %229
  br label %242

242:                                              ; preds = %241, %226
  store i32 0, i32* %4, align 4
  br label %243

243:                                              ; preds = %242, %25
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i64) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
