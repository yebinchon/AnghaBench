; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_dev = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CODA_ISRAM_SIZE = common dso_local global i32 0, align 4
@CODA_REG_BIT_CODE_DOWN = common dso_local global i64 0, align 8
@CODA_REG_BIT_CODE_BUF_ADDR = common dso_local global i64 0, align 8
@CODA_960 = common dso_local global i32 0, align 4
@CODA_7541 = common dso_local global i32 0, align 4
@CODA_HX4 = common dso_local global i32 0, align 4
@CODA_REG_BIT_TEMP_BUF_ADDR = common dso_local global i64 0, align 8
@CODA_REG_BIT_BIT_STREAM_PARAM = common dso_local global i64 0, align 8
@CODA_REG_BIT_WORK_BUF_ADDR = common dso_local global i64 0, align 8
@CODA_REG_BIT_CODE_RUN = common dso_local global i64 0, align 8
@CODADX6_STREAM_BUF_PIC_FLUSH = common dso_local global i32 0, align 4
@CODA_REG_BIT_STREAM_CTRL = common dso_local global i64 0, align 8
@CODA7_STREAM_BUF_PIC_FLUSH = common dso_local global i32 0, align 4
@CODA9_FRAME_ENABLE_BWB = common dso_local global i32 0, align 4
@CODA_REG_BIT_FRAME_MEM_CTRL = common dso_local global i64 0, align 8
@CODA7_REG_BIT_AXI_SRAM_USE = common dso_local global i64 0, align 8
@CODA_INT_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@CODA_REG_BIT_INT_ENABLE = common dso_local global i64 0, align 8
@CODA_REG_BIT_CODE_RESET = common dso_local global i64 0, align 8
@CODA_REG_RESET_ENABLE = common dso_local global i32 0, align 4
@CODA_REG_RUN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_dev*)* @coda_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_hw_init(%struct.coda_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coda_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.coda_dev* %0, %struct.coda_dev** %3, align 8
  %8 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %9 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %246

15:                                               ; preds = %1
  %16 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %17 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_prepare_enable(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %241

23:                                               ; preds = %15
  %24 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %25 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @reset_control_reset(i32 %26)
  %28 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %29 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %5, align 8
  %33 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %34 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %39, label %64

39:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @CODA_ISRAM_SIZE, align 4
  %43 = sdiv i32 %42, 2
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @CODA_DOWN_ADDRESS_SET(i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = xor i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CODA_DOWN_DATA_SET(i32 %53)
  %55 = or i32 %47, %54
  store i32 %55, i32* %4, align 4
  %56 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i64, i64* @CODA_REG_BIT_CODE_DOWN, align 8
  %59 = call i32 @coda_write(%struct.coda_dev* %56, i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %40

63:                                               ; preds = %40
  br label %93

64:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %89, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @CODA_ISRAM_SIZE, align 4
  %68 = sdiv i32 %67, 2
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @CODA_DOWN_ADDRESS_SET(i32 %71)
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @round_down(i32 %74, i32 4)
  %76 = add nsw i32 %75, 3
  %77 = load i32, i32* %6, align 4
  %78 = srem i32 %77, 4
  %79 = sub nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %73, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @CODA_DOWN_DATA_SET(i32 %82)
  %84 = or i32 %72, %83
  store i32 %84, i32* %4, align 4
  %85 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load i64, i64* @CODA_REG_BIT_CODE_DOWN, align 8
  %88 = call i32 @coda_write(%struct.coda_dev* %85, i32 %86, i64 %87)
  br label %89

89:                                               ; preds = %70
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %65

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %92, %63
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %105, %93
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 64
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %99 = load i64, i64* @CODA_REG_BIT_CODE_BUF_ADDR, align 8
  %100 = load i32, i32* %6, align 4
  %101 = mul nsw i32 %100, 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %99, %102
  %104 = call i32 @coda_write(%struct.coda_dev* %98, i32 0, i64 %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %94

108:                                              ; preds = %94
  %109 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %110 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @CODA_960, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %132, label %116

116:                                              ; preds = %108
  %117 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %118 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %117, i32 0, i32 2
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CODA_7541, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %132, label %124

124:                                              ; preds = %116
  %125 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %126 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %125, i32 0, i32 2
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @CODA_HX4, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %124, %116, %108
  %133 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %134 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %135 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* @CODA_REG_BIT_TEMP_BUF_ADDR, align 8
  %139 = call i32 @coda_write(%struct.coda_dev* %133, i32 %137, i64 %138)
  %140 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %141 = load i64, i64* @CODA_REG_BIT_BIT_STREAM_PARAM, align 8
  %142 = call i32 @coda_write(%struct.coda_dev* %140, i32 0, i64 %141)
  br label %151

143:                                              ; preds = %124
  %144 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %145 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %146 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* @CODA_REG_BIT_WORK_BUF_ADDR, align 8
  %150 = call i32 @coda_write(%struct.coda_dev* %144, i32 %148, i64 %149)
  br label %151

151:                                              ; preds = %143, %132
  %152 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %153 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %154 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* @CODA_REG_BIT_CODE_BUF_ADDR, align 8
  %158 = call i32 @coda_write(%struct.coda_dev* %152, i32 %156, i64 %157)
  %159 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %160 = load i64, i64* @CODA_REG_BIT_CODE_RUN, align 8
  %161 = call i32 @coda_write(%struct.coda_dev* %159, i32 0, i64 %160)
  %162 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %163 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %162, i32 0, i32 2
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %172 [
    i32 128, label %167
  ]

167:                                              ; preds = %151
  %168 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %169 = load i32, i32* @CODADX6_STREAM_BUF_PIC_FLUSH, align 4
  %170 = load i64, i64* @CODA_REG_BIT_STREAM_CTRL, align 8
  %171 = call i32 @coda_write(%struct.coda_dev* %168, i32 %169, i64 %170)
  br label %177

172:                                              ; preds = %151
  %173 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %174 = load i32, i32* @CODA7_STREAM_BUF_PIC_FLUSH, align 4
  %175 = load i64, i64* @CODA_REG_BIT_STREAM_CTRL, align 8
  %176 = call i32 @coda_write(%struct.coda_dev* %173, i32 %174, i64 %175)
  br label %177

177:                                              ; preds = %172, %167
  %178 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %179 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %178, i32 0, i32 2
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @CODA_960, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %177
  %186 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %187 = load i32, i32* @CODA9_FRAME_ENABLE_BWB, align 4
  %188 = load i64, i64* @CODA_REG_BIT_FRAME_MEM_CTRL, align 8
  %189 = call i32 @coda_write(%struct.coda_dev* %186, i32 %187, i64 %188)
  br label %194

190:                                              ; preds = %177
  %191 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %192 = load i64, i64* @CODA_REG_BIT_FRAME_MEM_CTRL, align 8
  %193 = call i32 @coda_write(%struct.coda_dev* %191, i32 0, i64 %192)
  br label %194

194:                                              ; preds = %190, %185
  %195 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %196 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %195, i32 0, i32 2
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 128
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %203 = load i64, i64* @CODA7_REG_BIT_AXI_SRAM_USE, align 8
  %204 = call i32 @coda_write(%struct.coda_dev* %202, i32 0, i64 %203)
  br label %205

205:                                              ; preds = %201, %194
  %206 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %207 = load i32, i32* @CODA_INT_INTERRUPT_ENABLE, align 4
  %208 = load i64, i64* @CODA_REG_BIT_INT_ENABLE, align 8
  %209 = call i32 @coda_write(%struct.coda_dev* %206, i32 %207, i64 %208)
  %210 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %211 = load i64, i64* @CODA_REG_BIT_CODE_RESET, align 8
  %212 = call i32 @coda_read(%struct.coda_dev* %210, i64 %211)
  store i32 %212, i32* %4, align 4
  %213 = load i32, i32* @CODA_REG_RESET_ENABLE, align 4
  %214 = load i32, i32* %4, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %4, align 4
  %216 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %217 = load i32, i32* %4, align 4
  %218 = load i64, i64* @CODA_REG_BIT_CODE_RESET, align 8
  %219 = call i32 @coda_write(%struct.coda_dev* %216, i32 %217, i64 %218)
  %220 = call i32 @udelay(i32 10)
  %221 = load i32, i32* @CODA_REG_RESET_ENABLE, align 4
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %4, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %4, align 4
  %225 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %226 = load i32, i32* %4, align 4
  %227 = load i64, i64* @CODA_REG_BIT_CODE_RESET, align 8
  %228 = call i32 @coda_write(%struct.coda_dev* %225, i32 %226, i64 %227)
  %229 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %230 = load i32, i32* @CODA_REG_RUN_ENABLE, align 4
  %231 = load i64, i64* @CODA_REG_BIT_CODE_RUN, align 8
  %232 = call i32 @coda_write(%struct.coda_dev* %229, i32 %230, i64 %231)
  %233 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %234 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @clk_disable_unprepare(i32 %235)
  %237 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %238 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @clk_disable_unprepare(i32 %239)
  store i32 0, i32* %2, align 4
  br label %248

241:                                              ; preds = %22
  %242 = load %struct.coda_dev*, %struct.coda_dev** %3, align 8
  %243 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @clk_disable_unprepare(i32 %244)
  br label %246

246:                                              ; preds = %241, %14
  %247 = load i32, i32* %7, align 4
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %246, %205
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @CODA_DOWN_ADDRESS_SET(i32) #1

declare dso_local i32 @CODA_DOWN_DATA_SET(i32) #1

declare dso_local i32 @coda_write(%struct.coda_dev*, i32, i64) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @coda_read(%struct.coda_dev*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
