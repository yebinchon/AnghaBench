; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_serdes_init_1g_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_serdes_init_1g_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.niu_link_config }
%struct.niu_link_config = type { i64 }

@ENET_SERDES_PLL_HRATE0 = common dso_local global i32 0, align 4
@ENET_SERDES_PLL_HRATE1 = common dso_local global i32 0, align 4
@ENET_SERDES_PLL_HRATE2 = common dso_local global i32 0, align 4
@ENET_SERDES_PLL_HRATE3 = common dso_local global i32 0, align 4
@ENET_SERDES_PLL_FBDIV0 = common dso_local global i32 0, align 4
@ENET_SERDES_RESET_0 = common dso_local global i32 0, align 4
@ENET_SERDES_0_CTRL_CFG = common dso_local global i64 0, align 8
@ENET_SERDES_0_TEST_CFG = common dso_local global i64 0, align 8
@ENET_SERDES_0_PLL_CFG = common dso_local global i64 0, align 8
@ENET_SERDES_RESET_1 = common dso_local global i32 0, align 4
@ENET_SERDES_1_CTRL_CFG = common dso_local global i64 0, align 8
@ENET_SERDES_1_TEST_CFG = common dso_local global i64 0, align 8
@ENET_SERDES_1_PLL_CFG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_SDET_0 = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_SDET_1 = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_SDET_2 = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_SDET_3 = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_EMPH_0_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_EMPH_1_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_EMPH_2_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_EMPH_3_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_LADJ_0_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_LADJ_1_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_LADJ_2_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_LADJ_3_SHIFT = common dso_local global i32 0, align 4
@LOOPBACK_PHY = common dso_local global i64 0, align 8
@ENET_TEST_MD_PAD_LOOPBACK = common dso_local global i32 0, align 4
@ENET_SERDES_TEST_MD_0_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_TEST_MD_1_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_TEST_MD_2_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_TEST_MD_3_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_RESET = common dso_local global i64 0, align 8
@ESR_RXTX_CTRL_VMUXLO = common dso_local global i32 0, align 4
@ESR_RXTX_CTRL_ENSTRETCH = common dso_local global i32 0, align 4
@ESR_RXTX_CTRL_VMUXLO_SHIFT = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_SRATE = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_THCNT = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_BLTIME = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_RXLOSENAB = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_SRATE_SHIFT = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_THCNT_SHIFT = common dso_local global i32 0, align 4
@BLTIME_300_CYCLES = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_BLTIME_SHIFT = common dso_local global i32 0, align 4
@ESR_INT_SIGNALS = common dso_local global i64 0, align 8
@ESR_INT_SRDY0_P0 = common dso_local global i32 0, align 4
@ESR_INT_DET0_P0 = common dso_local global i32 0, align 4
@ESR_INT_SRDY0_P1 = common dso_local global i32 0, align 4
@ESR_INT_DET0_P1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Port %u signal bits [%08x] are not [%08x]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @serdes_init_1g_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_init_1g_serdes(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_link_config*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
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
  store %struct.niu* %0, %struct.niu** %3, align 8
  %19 = load %struct.niu*, %struct.niu** %3, align 8
  %20 = getelementptr inbounds %struct.niu, %struct.niu* %19, i32 0, i32 2
  store %struct.niu_link_config* %20, %struct.niu_link_config** %4, align 8
  %21 = load i32, i32* @ENET_SERDES_PLL_HRATE0, align 4
  %22 = load i32, i32* @ENET_SERDES_PLL_HRATE1, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ENET_SERDES_PLL_HRATE2, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ENET_SERDES_PLL_HRATE3, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ENET_SERDES_PLL_FBDIV0, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %13, align 4
  %30 = load %struct.niu*, %struct.niu** %3, align 8
  %31 = getelementptr inbounds %struct.niu, %struct.niu* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %43 [
    i32 0, label %33
    i32 1, label %38
  ]

33:                                               ; preds = %1
  %34 = load i32, i32* @ENET_SERDES_RESET_0, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i64, i64* @ENET_SERDES_0_CTRL_CFG, align 8
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* @ENET_SERDES_0_TEST_CFG, align 8
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* @ENET_SERDES_0_PLL_CFG, align 8
  store i64 %37, i64* %7, align 8
  br label %46

38:                                               ; preds = %1
  %39 = load i32, i32* @ENET_SERDES_RESET_1, align 4
  store i32 %39, i32* %15, align 4
  %40 = load i64, i64* @ENET_SERDES_1_CTRL_CFG, align 8
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* @ENET_SERDES_1_TEST_CFG, align 8
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* @ENET_SERDES_1_PLL_CFG, align 8
  store i64 %42, i64* %7, align 8
  br label %46

43:                                               ; preds = %1
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %237

46:                                               ; preds = %38, %33
  %47 = load i32, i32* @ENET_SERDES_CTRL_SDET_0, align 4
  %48 = load i32, i32* @ENET_SERDES_CTRL_SDET_1, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @ENET_SERDES_CTRL_SDET_2, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ENET_SERDES_CTRL_SDET_3, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ENET_SERDES_CTRL_EMPH_0_SHIFT, align 4
  %55 = shl i32 5, %54
  %56 = or i32 %53, %55
  %57 = load i32, i32* @ENET_SERDES_CTRL_EMPH_1_SHIFT, align 4
  %58 = shl i32 5, %57
  %59 = or i32 %56, %58
  %60 = load i32, i32* @ENET_SERDES_CTRL_EMPH_2_SHIFT, align 4
  %61 = shl i32 5, %60
  %62 = or i32 %59, %61
  %63 = load i32, i32* @ENET_SERDES_CTRL_EMPH_3_SHIFT, align 4
  %64 = shl i32 5, %63
  %65 = or i32 %62, %64
  %66 = load i32, i32* @ENET_SERDES_CTRL_LADJ_0_SHIFT, align 4
  %67 = shl i32 1, %66
  %68 = or i32 %65, %67
  %69 = load i32, i32* @ENET_SERDES_CTRL_LADJ_1_SHIFT, align 4
  %70 = shl i32 1, %69
  %71 = or i32 %68, %70
  %72 = load i32, i32* @ENET_SERDES_CTRL_LADJ_2_SHIFT, align 4
  %73 = shl i32 1, %72
  %74 = or i32 %71, %73
  %75 = load i32, i32* @ENET_SERDES_CTRL_LADJ_3_SHIFT, align 4
  %76 = shl i32 1, %75
  %77 = or i32 %74, %76
  store i32 %77, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %78 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %79 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LOOPBACK_PHY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %46
  %84 = load i32, i32* @ENET_TEST_MD_PAD_LOOPBACK, align 4
  %85 = load i32, i32* @ENET_SERDES_TEST_MD_0_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* @ENET_TEST_MD_PAD_LOOPBACK, align 4
  %88 = load i32, i32* @ENET_SERDES_TEST_MD_1_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %86, %89
  %91 = load i32, i32* @ENET_TEST_MD_PAD_LOOPBACK, align 4
  %92 = load i32, i32* @ENET_SERDES_TEST_MD_2_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = or i32 %90, %93
  %95 = load i32, i32* @ENET_TEST_MD_PAD_LOOPBACK, align 4
  %96 = load i32, i32* @ENET_SERDES_TEST_MD_3_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %94, %97
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %83, %46
  %102 = load i64, i64* @ENET_SERDES_RESET, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @nw64(i64 %102, i32 %103)
  %105 = call i32 @mdelay(i32 20)
  %106 = load i64, i64* @ENET_SERDES_RESET, align 8
  %107 = call i32 @nr64(i64 %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %15, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %16, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %16, align 4
  %112 = load i64, i64* %7, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @nw64(i64 %112, i32 %113)
  %115 = load i64, i64* %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @nw64(i64 %115, i32 %116)
  %118 = load i64, i64* %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @nw64(i64 %118, i32 %119)
  %121 = load i64, i64* @ENET_SERDES_RESET, align 8
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @nw64(i64 %121, i32 %122)
  %124 = call i32 @mdelay(i32 2000)
  store i64 0, i64* %8, align 8
  br label %125

125:                                              ; preds = %194, %101
  %126 = load i64, i64* %8, align 8
  %127 = icmp ult i64 %126, 4
  br i1 %127, label %128, label %197

128:                                              ; preds = %125
  %129 = load %struct.niu*, %struct.niu** %3, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @esr_read_rxtx_ctrl(%struct.niu* %129, i64 %130, i32* %17)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %2, align 4
  br label %237

136:                                              ; preds = %128
  %137 = load %struct.niu*, %struct.niu** %3, align 8
  %138 = load i64, i64* %8, align 8
  %139 = call i32 @esr_read_glue0(%struct.niu* %137, i64 %138, i32* %18)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %2, align 4
  br label %237

144:                                              ; preds = %136
  %145 = load i32, i32* @ESR_RXTX_CTRL_VMUXLO, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %17, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* @ESR_RXTX_CTRL_ENSTRETCH, align 4
  %150 = load i32, i32* @ESR_RXTX_CTRL_VMUXLO_SHIFT, align 4
  %151 = shl i32 2, %150
  %152 = or i32 %149, %151
  %153 = load i32, i32* %17, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* @ESR_GLUE_CTRL0_SRATE, align 4
  %156 = load i32, i32* @ESR_GLUE_CTRL0_THCNT, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @ESR_GLUE_CTRL0_BLTIME, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %18, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* @ESR_GLUE_CTRL0_RXLOSENAB, align 4
  %164 = load i32, i32* @ESR_GLUE_CTRL0_SRATE_SHIFT, align 4
  %165 = shl i32 15, %164
  %166 = or i32 %163, %165
  %167 = load i32, i32* @ESR_GLUE_CTRL0_THCNT_SHIFT, align 4
  %168 = shl i32 255, %167
  %169 = or i32 %166, %168
  %170 = load i32, i32* @BLTIME_300_CYCLES, align 4
  %171 = load i32, i32* @ESR_GLUE_CTRL0_BLTIME_SHIFT, align 4
  %172 = shl i32 %170, %171
  %173 = or i32 %169, %172
  %174 = load i32, i32* %18, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %18, align 4
  %176 = load %struct.niu*, %struct.niu** %3, align 8
  %177 = load i64, i64* %8, align 8
  %178 = load i32, i32* %17, align 4
  %179 = call i32 @esr_write_rxtx_ctrl(%struct.niu* %176, i64 %177, i32 %178)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %144
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %2, align 4
  br label %237

184:                                              ; preds = %144
  %185 = load %struct.niu*, %struct.niu** %3, align 8
  %186 = load i64, i64* %8, align 8
  %187 = load i32, i32* %18, align 4
  %188 = call i32 @esr_write_glue0(%struct.niu* %185, i64 %186, i32 %187)
  store i32 %188, i32* %14, align 4
  %189 = load i32, i32* %14, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = load i32, i32* %14, align 4
  store i32 %192, i32* %2, align 4
  br label %237

193:                                              ; preds = %184
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %8, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %8, align 8
  br label %125

197:                                              ; preds = %125
  %198 = load i64, i64* @ESR_INT_SIGNALS, align 8
  %199 = call i32 @nr64(i64 %198)
  store i32 %199, i32* %11, align 4
  %200 = load %struct.niu*, %struct.niu** %3, align 8
  %201 = getelementptr inbounds %struct.niu, %struct.niu* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  switch i32 %202, label %213 [
    i32 0, label %203
    i32 1, label %208
  ]

203:                                              ; preds = %197
  %204 = load i32, i32* @ESR_INT_SRDY0_P0, align 4
  %205 = load i32, i32* @ESR_INT_DET0_P0, align 4
  %206 = or i32 %204, %205
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  store i32 %207, i32* %12, align 4
  br label %216

208:                                              ; preds = %197
  %209 = load i32, i32* @ESR_INT_SRDY0_P1, align 4
  %210 = load i32, i32* @ESR_INT_DET0_P1, align 4
  %211 = or i32 %209, %210
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  store i32 %212, i32* %12, align 4
  br label %216

213:                                              ; preds = %197
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %2, align 4
  br label %237

216:                                              ; preds = %208, %203
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %12, align 4
  %219 = and i32 %217, %218
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %236

222:                                              ; preds = %216
  %223 = load %struct.niu*, %struct.niu** %3, align 8
  %224 = getelementptr inbounds %struct.niu, %struct.niu* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.niu*, %struct.niu** %3, align 8
  %227 = getelementptr inbounds %struct.niu, %struct.niu* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %12, align 4
  %231 = and i32 %229, %230
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @netdev_err(i32 %225, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %228, i32 %231, i32 %232)
  %234 = load i32, i32* @ENODEV, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %2, align 4
  br label %237

236:                                              ; preds = %216
  store i32 0, i32* %2, align 4
  br label %237

237:                                              ; preds = %236, %222, %213, %191, %182, %142, %134, %43
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i32 @nw64(i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @nr64(i64) #1

declare dso_local i32 @esr_read_rxtx_ctrl(%struct.niu*, i64, i32*) #1

declare dso_local i32 @esr_read_glue0(%struct.niu*, i64, i32*) #1

declare dso_local i32 @esr_write_rxtx_ctrl(%struct.niu*, i64, i32) #1

declare dso_local i32 @esr_write_glue0(%struct.niu*, i64, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
