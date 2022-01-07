; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"PBF\00", align 1
@PBF_REG_PBF_PRTY_STS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"QM\00", align 1
@QM_REG_QM_PRTY_STS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"TM\00", align 1
@TM_REG_TM_PRTY_STS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"XSDM\00", align 1
@XSDM_REG_XSDM_PRTY_STS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"XCM\00", align 1
@XCM_REG_XCM_PRTY_STS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"XSEMI\00", align 1
@XSEM_REG_XSEM_PRTY_STS_0 = common dso_local global i64 0, align 8
@XSEM_REG_XSEM_PRTY_STS_1 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"DOORBELLQ\00", align 1
@DORQ_REG_DORQ_PRTY_STS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"NIG\00", align 1
@NIG_REG_NIG_PRTY_STS = common dso_local global i64 0, align 8
@NIG_REG_NIG_PRTY_STS_0 = common dso_local global i64 0, align 8
@NIG_REG_NIG_PRTY_STS_1 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"VAUX PCI CORE\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@DBG_REG_DBG_PRTY_STS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"USDM\00", align 1
@USDM_REG_USDM_PRTY_STS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"UCM\00", align 1
@UCM_REG_UCM_PRTY_STS = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"USEMI\00", align 1
@USEM_REG_USEM_PRTY_STS_0 = common dso_local global i64 0, align 8
@USEM_REG_USEM_PRTY_STS_1 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"UPB\00", align 1
@GRCBASE_UPB = common dso_local global i64 0, align 8
@PB_REG_PB_PRTY_STS = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"CSDM\00", align 1
@CSDM_REG_CSDM_PRTY_STS = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"CCM\00", align 1
@CCM_REG_CCM_PRTY_STS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32*, i32*, i32)* @bnx2x_check_blocks_with_parity1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_check_blocks_with_parity1(%struct.bnx2x* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %246, %5
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %249

17:                                               ; preds = %14
  %18 = load i32, i32* %13, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %245

26:                                               ; preds = %17
  %27 = load i32, i32* %12, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %240 [
    i32 138, label %30
    i32 137, label %42
    i32 136, label %54
    i32 129, label %66
    i32 130, label %78
    i32 128, label %90
    i32 140, label %105
    i32 139, label %117
    i32 131, label %141
    i32 141, label %151
    i32 133, label %163
    i32 135, label %175
    i32 132, label %187
    i32 134, label %202
    i32 142, label %216
    i32 143, label %228
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = call i32 @_print_next_block(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %39 = load i64, i64* @PBF_REG_PBF_PRTY_STS, align 8
  %40 = call i32 @_print_parity(%struct.bnx2x* %38, i64 %39)
  br label %41

41:                                               ; preds = %33, %30
  br label %240

42:                                               ; preds = %26
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = call i32 @_print_next_block(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %51 = load i64, i64* @QM_REG_QM_PRTY_STS, align 8
  %52 = call i32 @_print_parity(%struct.bnx2x* %50, i64 %51)
  br label %53

53:                                               ; preds = %45, %42
  br label %240

54:                                               ; preds = %26
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = call i32 @_print_next_block(i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %63 = load i64, i64* @TM_REG_TM_PRTY_STS, align 8
  %64 = call i32 @_print_parity(%struct.bnx2x* %62, i64 %63)
  br label %65

65:                                               ; preds = %57, %54
  br label %240

66:                                               ; preds = %26
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = call i32 @_print_next_block(i32 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %75 = load i64, i64* @XSDM_REG_XSDM_PRTY_STS, align 8
  %76 = call i32 @_print_parity(%struct.bnx2x* %74, i64 %75)
  br label %77

77:                                               ; preds = %69, %66
  br label %240

78:                                               ; preds = %26
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = call i32 @_print_next_block(i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %86 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %87 = load i64, i64* @XCM_REG_XCM_PRTY_STS, align 8
  %88 = call i32 @_print_parity(%struct.bnx2x* %86, i64 %87)
  br label %89

89:                                               ; preds = %81, %78
  br label %240

90:                                               ; preds = %26
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = call i32 @_print_next_block(i32 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %98 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %99 = load i64, i64* @XSEM_REG_XSEM_PRTY_STS_0, align 8
  %100 = call i32 @_print_parity(%struct.bnx2x* %98, i64 %99)
  %101 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %102 = load i64, i64* @XSEM_REG_XSEM_PRTY_STS_1, align 8
  %103 = call i32 @_print_parity(%struct.bnx2x* %101, i64 %102)
  br label %104

104:                                              ; preds = %93, %90
  br label %240

105:                                              ; preds = %26
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = call i32 @_print_next_block(i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %113 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %114 = load i64, i64* @DORQ_REG_DORQ_PRTY_STS, align 8
  %115 = call i32 @_print_parity(%struct.bnx2x* %113, i64 %114)
  br label %116

116:                                              ; preds = %108, %105
  br label %240

117:                                              ; preds = %26
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %117
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = call i32 @_print_next_block(i32 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %125 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %126 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %130 = load i64, i64* @NIG_REG_NIG_PRTY_STS, align 8
  %131 = call i32 @_print_parity(%struct.bnx2x* %129, i64 %130)
  br label %139

132:                                              ; preds = %120
  %133 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %134 = load i64, i64* @NIG_REG_NIG_PRTY_STS_0, align 8
  %135 = call i32 @_print_parity(%struct.bnx2x* %133, i64 %134)
  %136 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %137 = load i64, i64* @NIG_REG_NIG_PRTY_STS_1, align 8
  %138 = call i32 @_print_parity(%struct.bnx2x* %136, i64 %137)
  br label %139

139:                                              ; preds = %132, %128
  br label %140

140:                                              ; preds = %139, %117
  br label %240

141:                                              ; preds = %26
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = call i32 @_print_next_block(i32 %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i32*, i32** %9, align 8
  store i32 1, i32* %150, align 4
  br label %240

151:                                              ; preds = %26
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = call i32 @_print_next_block(i32 %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %159 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %160 = load i64, i64* @DBG_REG_DBG_PRTY_STS, align 8
  %161 = call i32 @_print_parity(%struct.bnx2x* %159, i64 %160)
  br label %162

162:                                              ; preds = %154, %151
  br label %240

163:                                              ; preds = %26
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = call i32 @_print_next_block(i32 %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %171 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %172 = load i64, i64* @USDM_REG_USDM_PRTY_STS, align 8
  %173 = call i32 @_print_parity(%struct.bnx2x* %171, i64 %172)
  br label %174

174:                                              ; preds = %166, %163
  br label %240

175:                                              ; preds = %26
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  %182 = call i32 @_print_next_block(i32 %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %183 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %184 = load i64, i64* @UCM_REG_UCM_PRTY_STS, align 8
  %185 = call i32 @_print_parity(%struct.bnx2x* %183, i64 %184)
  br label %186

186:                                              ; preds = %178, %175
  br label %240

187:                                              ; preds = %26
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = call i32 @_print_next_block(i32 %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %195 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %196 = load i64, i64* @USEM_REG_USEM_PRTY_STS_0, align 8
  %197 = call i32 @_print_parity(%struct.bnx2x* %195, i64 %196)
  %198 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %199 = load i64, i64* @USEM_REG_USEM_PRTY_STS_1, align 8
  %200 = call i32 @_print_parity(%struct.bnx2x* %198, i64 %199)
  br label %201

201:                                              ; preds = %190, %187
  br label %240

202:                                              ; preds = %26
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %202
  %206 = load i32*, i32** %8, align 8
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  %209 = call i32 @_print_next_block(i32 %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %210 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %211 = load i64, i64* @GRCBASE_UPB, align 8
  %212 = load i64, i64* @PB_REG_PB_PRTY_STS, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @_print_parity(%struct.bnx2x* %210, i64 %213)
  br label %215

215:                                              ; preds = %205, %202
  br label %240

216:                                              ; preds = %26
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %216
  %220 = load i32*, i32** %8, align 8
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  %223 = call i32 @_print_next_block(i32 %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %224 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %225 = load i64, i64* @CSDM_REG_CSDM_PRTY_STS, align 8
  %226 = call i32 @_print_parity(%struct.bnx2x* %224, i64 %225)
  br label %227

227:                                              ; preds = %219, %216
  br label %240

228:                                              ; preds = %26
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = load i32*, i32** %8, align 8
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 4
  %235 = call i32 @_print_next_block(i32 %233, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %236 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %237 = load i64, i64* @CCM_REG_CCM_PRTY_STS, align 8
  %238 = call i32 @_print_parity(%struct.bnx2x* %236, i64 %237)
  br label %239

239:                                              ; preds = %231, %228
  br label %240

240:                                              ; preds = %26, %239, %227, %215, %201, %186, %174, %162, %149, %140, %116, %104, %89, %77, %65, %53, %41
  %241 = load i32, i32* %11, align 4
  %242 = xor i32 %241, -1
  %243 = load i32, i32* %7, align 4
  %244 = and i32 %243, %242
  store i32 %244, i32* %7, align 4
  br label %245

245:                                              ; preds = %240, %17
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %13, align 4
  br label %14

249:                                              ; preds = %14
  %250 = load i32, i32* %12, align 4
  ret i32 %250
}

declare dso_local i32 @_print_next_block(i32, i8*) #1

declare dso_local i32 @_print_parity(%struct.bnx2x*, i64) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
