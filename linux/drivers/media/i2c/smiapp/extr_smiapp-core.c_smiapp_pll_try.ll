; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_pll_try.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_pll_try.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.smiapp_pll = type { i32 }
%struct.i2c_client = type { i32 }
%struct.smiapp_pll_limits = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SMIAPP_LIMIT_MIN_LINE_LENGTH_PCK = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_LINE_LENGTH_PCK_BIN = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_VT_PIX_CLK_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_VT_PIX_CLK_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_VT_SYS_CLK_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_VT_SYS_CLK_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_VT_PIX_CLK_DIV = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_VT_PIX_CLK_DIV = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_VT_SYS_CLK_DIV = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_VT_SYS_CLK_DIV = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_OP_PIX_CLK_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_OP_PIX_CLK_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_OP_SYS_CLK_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_OP_SYS_CLK_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_OP_PIX_CLK_DIV = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_OP_PIX_CLK_DIV = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_OP_SYS_CLK_DIV = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_OP_SYS_CLK_DIV = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_PLL_OP_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_PLL_OP_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_PLL_MULTIPLIER = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_PLL_MULTIPLIER = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_PLL_IP_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_PLL_IP_FREQ_HZ = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MAX_PRE_PLL_CLK_DIV = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_MIN_PRE_PLL_CLK_DIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*, %struct.smiapp_pll*)* @smiapp_pll_try to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_pll_try(%struct.smiapp_sensor* %0, %struct.smiapp_pll* %1) #0 {
  %3 = alloca %struct.smiapp_sensor*, align 8
  %4 = alloca %struct.smiapp_pll*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.smiapp_pll_limits, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %3, align 8
  store %struct.smiapp_pll* %1, %struct.smiapp_pll** %4, align 8
  %7 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 0
  %13 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %14 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @SMIAPP_LIMIT_MIN_LINE_LENGTH_PCK, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 1
  %20 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %21 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @SMIAPP_LIMIT_MIN_LINE_LENGTH_PCK_BIN, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %19, align 4
  %26 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %29 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @SMIAPP_LIMIT_MAX_VT_PIX_CLK_FREQ_HZ, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %27, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %35 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %36 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @SMIAPP_LIMIT_MIN_VT_PIX_CLK_FREQ_HZ, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %34, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %42 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %43 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @SMIAPP_LIMIT_MAX_VT_SYS_CLK_FREQ_HZ, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %41, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %49 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %50 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @SMIAPP_LIMIT_MIN_VT_SYS_CLK_FREQ_HZ, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %48, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %56 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %57 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @SMIAPP_LIMIT_MAX_VT_PIX_CLK_DIV, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %55, align 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %63 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %64 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @SMIAPP_LIMIT_MIN_VT_PIX_CLK_DIV, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %62, align 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 6
  %70 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %71 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @SMIAPP_LIMIT_MAX_VT_SYS_CLK_DIV, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %69, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 7
  %77 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %78 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @SMIAPP_LIMIT_MIN_VT_SYS_CLK_DIV, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %76, align 4
  %83 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %86 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @SMIAPP_LIMIT_MAX_OP_PIX_CLK_FREQ_HZ, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %84, align 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %92 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %93 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @SMIAPP_LIMIT_MIN_OP_PIX_CLK_FREQ_HZ, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %91, align 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %99 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %100 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @SMIAPP_LIMIT_MAX_OP_SYS_CLK_FREQ_HZ, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %98, align 4
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %106 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %107 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @SMIAPP_LIMIT_MIN_OP_SYS_CLK_FREQ_HZ, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %105, align 4
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %113 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %114 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @SMIAPP_LIMIT_MAX_OP_PIX_CLK_DIV, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %112, align 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  %120 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %121 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @SMIAPP_LIMIT_MIN_OP_PIX_CLK_DIV, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %119, align 4
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 6
  %127 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %128 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @SMIAPP_LIMIT_MAX_OP_SYS_CLK_DIV, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %126, align 4
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 7
  %134 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %135 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @SMIAPP_LIMIT_MIN_OP_SYS_CLK_DIV, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %133, align 4
  %140 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 4
  %141 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %142 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @SMIAPP_LIMIT_MAX_PLL_OP_FREQ_HZ, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %140, align 4
  %147 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 5
  %148 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %149 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @SMIAPP_LIMIT_MIN_PLL_OP_FREQ_HZ, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %147, align 4
  %154 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 6
  %155 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %156 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @SMIAPP_LIMIT_MAX_PLL_MULTIPLIER, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %154, align 4
  %161 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 7
  %162 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %163 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @SMIAPP_LIMIT_MIN_PLL_MULTIPLIER, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %161, align 4
  %168 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 8
  %169 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %170 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @SMIAPP_LIMIT_MAX_PLL_IP_FREQ_HZ, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %168, align 4
  %175 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 9
  %176 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %177 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @SMIAPP_LIMIT_MIN_PLL_IP_FREQ_HZ, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %175, align 4
  %182 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 10
  %183 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %184 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @SMIAPP_LIMIT_MAX_PRE_PLL_CLK_DIV, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %182, align 4
  %189 = getelementptr inbounds %struct.smiapp_pll_limits, %struct.smiapp_pll_limits* %6, i32 0, i32 11
  %190 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %191 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* @SMIAPP_LIMIT_MIN_PRE_PLL_CLK_DIV, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %189, align 4
  %196 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %197 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %196, i32 0, i32 0
  %198 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %199 = call i32 @smiapp_pll_calculate(i32* %197, %struct.smiapp_pll_limits* %6, %struct.smiapp_pll* %198)
  ret i32 %199
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @smiapp_pll_calculate(i32*, %struct.smiapp_pll_limits*, %struct.smiapp_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
