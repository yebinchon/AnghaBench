; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_setup_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_setup_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.sunxi_nand_chip = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sunxi_nfc = type { i32, i32 }
%struct.nand_sdr_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@tWB_lut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unsupported tWB\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unsupported tADL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"unsupported tWHR\0A\00", align 1
@tRHW_lut = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"unsupported tRHW\0A\00", align 1
@NAND_DATA_IFACE_CHECK_ONLY = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Unable to round clk %lu\0A\00", align 1
@NFC_TIMING_CTL_EDO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_data_interface*)* @sunxi_nfc_setup_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_setup_data_interface(%struct.nand_chip* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.sunxi_nand_chip*, align 8
  %9 = alloca %struct.sunxi_nfc*, align 8
  %10 = alloca %struct.nand_sdr_timings*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = call %struct.sunxi_nand_chip* @to_sunxi_nand(%struct.nand_chip* %18)
  store %struct.sunxi_nand_chip* %19, %struct.sunxi_nand_chip** %8, align 8
  %20 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %21 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %23)
  store %struct.sunxi_nfc* %24, %struct.sunxi_nfc** %9, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.nand_data_interface*, %struct.nand_data_interface** %7, align 8
  %26 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface* %25)
  store %struct.nand_sdr_timings* %26, %struct.nand_sdr_timings** %10, align 8
  %27 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %28 = call i64 @IS_ERR(%struct.nand_sdr_timings* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %381

33:                                               ; preds = %3
  %34 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %35 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %41 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %45 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %51 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %55 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %61 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %65 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %71 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %75 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %81 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %85 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %91 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %95 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %101 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %105 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %111 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %109, %103
  %114 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %115 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %121 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %119, %113
  %124 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %125 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = mul nsw i32 %127, 3
  %129 = icmp sgt i32 %126, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %132 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @DIV_ROUND_UP(i32 %133, i32 3)
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %130, %123
  %136 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %137 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %143 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %141, %135
  %146 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %147 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %153 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %152, i32 0, i32 11
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %151, %145
  %156 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %157 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %163 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %162, i32 0, i32 12
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %161, %155
  %166 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %167 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %166, i32 0, i32 13
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %11, align 4
  %170 = mul nsw i32 %169, 2
  %171 = icmp sgt i32 %168, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %174 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %173, i32 0, i32 13
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @DIV_ROUND_UP(i32 %175, i32 2)
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %172, %165
  %178 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %179 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %178, i32 0, i32 14
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %11, align 4
  %182 = mul nsw i32 %181, 2
  %183 = icmp sgt i32 %180, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %177
  %185 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %186 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %185, i32 0, i32 14
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @DIV_ROUND_UP(i32 %187, i32 2)
  store i32 %188, i32* %11, align 4
  br label %189

189:                                              ; preds = %184, %177
  %190 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %191 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %190, i32 0, i32 15
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %11, align 4
  %194 = mul nsw i32 %193, 20
  %195 = icmp sgt i32 %192, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %189
  %197 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %198 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %197, i32 0, i32 15
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @DIV_ROUND_UP(i32 %199, i32 20)
  store i32 %200, i32* %11, align 4
  br label %201

201:                                              ; preds = %196, %189
  %202 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %203 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %202, i32 0, i32 16
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %11, align 4
  %206 = mul nsw i32 %205, 32
  %207 = icmp sgt i32 %204, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %201
  %209 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %210 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %209, i32 0, i32 16
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @DIV_ROUND_UP(i32 %211, i32 32)
  store i32 %212, i32* %11, align 4
  br label %213

213:                                              ; preds = %208, %201
  %214 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %215 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %214, i32 0, i32 17
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %11, align 4
  %218 = mul nsw i32 %217, 32
  %219 = icmp sgt i32 %216, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %213
  %221 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %222 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %221, i32 0, i32 17
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @DIV_ROUND_UP(i32 %223, i32 32)
  store i32 %224, i32* %11, align 4
  br label %225

225:                                              ; preds = %220, %213
  %226 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %227 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %226, i32 0, i32 18
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %11, align 4
  %230 = mul nsw i32 %229, 20
  %231 = icmp sgt i32 %228, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %225
  %233 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %234 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %233, i32 0, i32 18
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @DIV_ROUND_UP(i32 %235, i32 20)
  store i32 %236, i32* %11, align 4
  br label %237

237:                                              ; preds = %232, %225
  %238 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %239 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %238, i32 0, i32 19
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %11, align 4
  %242 = icmp sgt i32 %240, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %237
  %244 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %245 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %244, i32 0, i32 20
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %243
  %249 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %250 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %249, i32 0, i32 19
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %11, align 4
  br label %252

252:                                              ; preds = %248, %243, %237
  %253 = load i32, i32* @tWB_lut, align 4
  %254 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %255 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %254, i32 0, i32 15
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %11, align 4
  %258 = call i64 @sunxi_nand_lookup_timing(i32 %253, i32 %256, i32 %257)
  store i64 %258, i64* %12, align 8
  %259 = load i64, i64* %12, align 8
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %252
  %262 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %9, align 8
  %263 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (i32, i8*, ...) @dev_err(i32 %264, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %266 = load i64, i64* %12, align 8
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %4, align 4
  br label %381

268:                                              ; preds = %252
  %269 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %270 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %269, i32 0, i32 16
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %11, align 4
  %273 = call i32 @DIV_ROUND_UP(i32 %271, i32 %272)
  %274 = ashr i32 %273, 3
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %13, align 8
  %276 = load i64, i64* %13, align 8
  %277 = icmp sgt i64 %276, 3
  br i1 %277, label %278, label %285

278:                                              ; preds = %268
  %279 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %9, align 8
  %280 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i32, i8*, ...) @dev_err(i32 %281, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %283 = load i32, i32* @EINVAL, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %4, align 4
  br label %381

285:                                              ; preds = %268
  %286 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %287 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %286, i32 0, i32 17
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %11, align 4
  %290 = call i32 @DIV_ROUND_UP(i32 %288, i32 %289)
  %291 = ashr i32 %290, 3
  %292 = sext i32 %291 to i64
  store i64 %292, i64* %14, align 8
  %293 = load i64, i64* %14, align 8
  %294 = icmp sgt i64 %293, 3
  br i1 %294, label %295, label %302

295:                                              ; preds = %285
  %296 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %9, align 8
  %297 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i32, i8*, ...) @dev_err(i32 %298, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %300 = load i32, i32* @EINVAL, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %4, align 4
  br label %381

302:                                              ; preds = %285
  %303 = load i32, i32* @tRHW_lut, align 4
  %304 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %305 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %304, i32 0, i32 18
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %11, align 4
  %308 = call i64 @sunxi_nand_lookup_timing(i32 %303, i32 %306, i32 %307)
  store i64 %308, i64* %15, align 8
  %309 = load i64, i64* %15, align 8
  %310 = icmp slt i64 %309, 0
  br i1 %310, label %311, label %318

311:                                              ; preds = %302
  %312 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %9, align 8
  %313 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 (i32, i8*, ...) @dev_err(i32 %314, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %316 = load i64, i64* %15, align 8
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %4, align 4
  br label %381

318:                                              ; preds = %302
  %319 = load i32, i32* %6, align 4
  %320 = load i32, i32* @NAND_DATA_IFACE_CHECK_ONLY, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  store i32 0, i32* %4, align 4
  br label %381

323:                                              ; preds = %318
  store i64 7, i64* %16, align 8
  %324 = load i64, i64* %12, align 8
  %325 = load i64, i64* %13, align 8
  %326 = load i64, i64* %14, align 8
  %327 = load i64, i64* %15, align 8
  %328 = load i64, i64* %16, align 8
  %329 = call i32 @NFC_TIMING_CFG(i64 %324, i64 %325, i64 %326, i64 %327, i64 %328)
  %330 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %331 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 8
  %332 = load i32, i32* %11, align 4
  %333 = call i32 @DIV_ROUND_UP(i32 %332, i32 1000)
  store i32 %333, i32* %11, align 4
  %334 = load i32, i32* @NSEC_PER_SEC, align 4
  %335 = load i32, i32* %11, align 4
  %336 = sdiv i32 %334, %335
  %337 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %338 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %337, i32 0, i32 0
  store i32 %336, i32* %338, align 8
  %339 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %9, align 8
  %340 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %343 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = call i64 @clk_round_rate(i32 %341, i32 %344)
  store i64 %345, i64* %17, align 8
  %346 = load i64, i64* %17, align 8
  %347 = icmp sle i64 %346, 0
  br i1 %347, label %348, label %358

348:                                              ; preds = %323
  %349 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %9, align 8
  %350 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %353 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i32 (i32, i8*, ...) @dev_err(i32 %351, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %354)
  %356 = load i32, i32* @EINVAL, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %4, align 4
  br label %381

358:                                              ; preds = %323
  %359 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %360 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %359, i32 0, i32 1
  store i64 0, i64* %360, align 8
  %361 = load i32, i32* @NSEC_PER_SEC, align 4
  %362 = sext i32 %361 to i64
  %363 = load i64, i64* %17, align 8
  %364 = sdiv i64 %362, %363
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %11, align 4
  %366 = load i32, i32* %11, align 4
  %367 = mul nsw i32 %366, 2
  %368 = icmp slt i32 %367, 30
  br i1 %368, label %376, label %369

369:                                              ; preds = %358
  %370 = load i32, i32* %11, align 4
  %371 = mul nsw i32 %370, 1000
  %372 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %373 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %372, i32 0, i32 19
  %374 = load i32, i32* %373, align 4
  %375 = icmp slt i32 %371, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %369, %358
  %377 = load i64, i64* @NFC_TIMING_CTL_EDO, align 8
  %378 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %8, align 8
  %379 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %378, i32 0, i32 1
  store i64 %377, i64* %379, align 8
  br label %380

380:                                              ; preds = %376, %369
  store i32 0, i32* %4, align 4
  br label %381

381:                                              ; preds = %380, %348, %322, %311, %295, %278, %261, %30
  %382 = load i32, i32* %4, align 4
  ret i32 %382
}

declare dso_local %struct.sunxi_nand_chip* @to_sunxi_nand(%struct.nand_chip*) #1

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface*) #1

declare dso_local i64 @IS_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @sunxi_nand_lookup_timing(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @NFC_TIMING_CFG(i64, i64, i64, i64, i64) #1

declare dso_local i64 @clk_round_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
